package com.miui.gallery.sdk.download.downloader;

import android.accounts.Account;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.provider.DocumentFile;
import android.text.TextUtils;
import android.util.Base64;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.GalleryMiCloudServerException;
import com.miui.gallery.cloud.HostManager.OwnerMedia;
import com.miui.gallery.cloud.HostManager.ShareMedia;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.util.ErrorParseUtil;
import com.miui.gallery.preference.GalleryPreferences.FileDownload;
import com.miui.gallery.preference.ThumbnailPreference;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.assist.RequestItem;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryAes;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.MiscUtil;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.NameValuePair;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

abstract class AbsThumbnailDownloader implements IDownloader {
    private static final int MAX_TRY_COUNT = CloudControlStrategyHelper.getSyncStrategy().getMaxDownloadTimes();

    protected abstract String checkAndReturnValidPath(RequestItem requestItem);

    protected abstract int getRequestHeight();

    protected abstract int getRequestWidth();

    protected abstract String getTag();

    protected abstract boolean updateDataBase(RequestItem requestItem, String str);

    AbsThumbnailDownloader() {
    }

    public void download(Account account, GalleryExtendedAuthToken extToken, List<DownloadItem> items) {
        if (items != null && items.size() > 0) {
            List<RequestItem> requests = new ArrayList();
            for (DownloadItem item : items) {
                if (checkConditionPermitted(item)) {
                    RequestItem request = new RequestItem(item, item.getUriAdapter().getDBItemForUri(item.getUri()));
                    String validPath = checkAndReturnValidPath(request);
                    if (TextUtils.isEmpty(validPath)) {
                        if (ThumbnailPreference.containsThumbnailKey(request.mDBItem.getSha1())) {
                            Log.i(getTag(), "build error sha1 %s", request.mDBItem.getSha1());
                            fireFailEvent(request, null, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format("thumbnail can't build: %s", new Object[]{request.mDBItem.getFileName()}), null));
                        } else {
                            requests.add(request);
                        }
                    } else if (item.compareAnsSetStatus(0, 3)) {
                        DownloadItem.callbackSuccess(request.mDownloadItem, new DownloadedItem(validPath, request.mDBItem.isSecretItem() ? request.mDBItem.getSecretKey() : null));
                    }
                } else {
                    Log.d(getTag(), "Download condition not ok type %s", item.getType());
                }
            }
            if (requests.size() > 0) {
                Iterator<RequestItem> iterator = requests.iterator();
                while (iterator.hasNext()) {
                    if (!checkItemValid((RequestItem) iterator.next())) {
                        iterator.remove();
                    }
                }
                if (requests.size() > 0) {
                    for (Entry<String, List<RequestItem>> entry : classifyRequest(requests).entrySet()) {
                        downloadInternal(account, extToken, (List) entry.getValue());
                        Log.d(getTag(), "download batch %s", entry.getKey());
                    }
                }
            }
        }
    }

    private static HashMap<String, List<RequestItem>> classifyRequest(List<RequestItem> requests) {
        HashMap<String, List<RequestItem>> map = new HashMap();
        for (RequestItem item : requests) {
            String key;
            if (item.mDBItem.isShareItem()) {
                key = String.valueOf(item.mDBItem.getGroupId());
            } else {
                key = "owner";
            }
            List<RequestItem> batch = (List) map.get(key);
            if (batch == null) {
                batch = new LinkedList();
                map.put(key, batch);
            }
            batch.add(item);
        }
        return map;
    }

    private void downloadInternal(Account account, GalleryExtendedAuthToken extToken, List<RequestItem> requests) {
        JSONObject thumbnails = requestUrls(account, extToken, requests);
        if (thumbnails != null) {
            for (RequestItem request : requests) {
                Log.i(getTag(), "download id %s", request.mDBItem.getId());
                if (Thread.currentThread().isInterrupted()) {
                    Log.i(getTag(), "for download interrupt %s", Boolean.valueOf(Thread.currentThread().isInterrupted()));
                    return;
                } else if (request.mDownloadItem.isStatusOk()) {
                    String id = request.mDBItem.getRequestId();
                    JSONObject thumbnail = thumbnails.optJSONObject(id);
                    if (thumbnail == null) {
                        Log.w(getTag(), "id: %s not found in content json", id);
                        ThumbnailPreference.putThumbnailKey(request.mDBItem.getSha1());
                        fireFailEvent(request, null, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format(Locale.US, "request url for %s error", new Object[]{request.mDBItem.getServerId()}), null));
                    } else {
                        ReentrantLock lock = request.mDownloadItem.getUriLock();
                        if (lock.isLocked()) {
                            Log.d(getTag(), "%s wait lock", request.mDownloadItem);
                        }
                        lock.lock();
                        try {
                            String validPath = checkAndReturnValidPath(request);
                            if (TextUtils.isEmpty(validPath)) {
                                boolean isUrl = thumbnail.optBoolean("isUrl");
                                String data = thumbnail.optString("data");
                                ErrorCode errorCode = DownloadUtil.ensureDownloadTempFolder(request.mDBItem, request.mDownloadItem.getType());
                                if (errorCode != ErrorCode.NO_ERROR) {
                                    fireFailEvent(request, null, new DownloadFailReason(errorCode, String.format(Locale.US, "error create folder: %s", new Object[]{DownloadUtil.getDownloadTempFolderPath(request.mDBItem, request.mDownloadItem.getType())}), null));
                                    lock.unlock();
                                } else {
                                    String downloadedTempPath;
                                    if (isUrl) {
                                        Uri uri = Uri.parse(data);
                                        if (isValidUrl(uri)) {
                                            downloadedTempPath = downloadFile(request, uri.toString());
                                        } else {
                                            ThumbnailPreference.putThumbnailKey(request.mDBItem.getSha1());
                                            fireFailEvent(request, null, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format(Locale.US, "invalid url %s for %s", new Object[]{uri, request.mDBItem.getServerId()}), null));
                                            lock.unlock();
                                        }
                                    } else {
                                        downloadedTempPath = downloadData(request, data);
                                    }
                                    onPostDownload(request, downloadedTempPath);
                                    lock.unlock();
                                }
                            } else {
                                Log.d(getTag(), "no need download file: %s, thumb: %s", request.mDBItem.getLocalFile(), request.mDBItem.getThumbnailFile());
                                if (request.mDownloadItem.compareAnsSetStatus(0, 3)) {
                                    byte[] secretKey;
                                    DownloadItem downloadItem = request.mDownloadItem;
                                    if (request.mDBItem.isSecretItem()) {
                                        secretKey = request.mDBItem.getSecretKey();
                                    } else {
                                        secretKey = null;
                                    }
                                    DownloadItem.callbackSuccess(downloadItem, new DownloadedItem(validPath, secretKey));
                                }
                                lock.unlock();
                            }
                        } catch (Throwable th) {
                            lock.unlock();
                        }
                    }
                } else {
                    Log.i(getTag(), "item %s status %s", request.mDownloadItem.getKey(), Integer.valueOf(request.mDownloadItem.getStatus()));
                }
            }
        }
    }

    private void onPostDownload(RequestItem request, String downloadTempPath) {
        byte[] bArr = null;
        if (FileUtils.isFileExist(downloadTempPath)) {
            if (!checkItemValid(new RequestItem(request.mDownloadItem, request.mDownloadItem.getUriAdapter().getDBItemForUri(request.mDownloadItem.getUri())))) {
                return;
            }
            if (handleDownloadTempFile(request, downloadTempPath)) {
                ErrorCode errorCode = DownloadUtil.ensureDownloadFolder(request.mDBItem, request.mDownloadItem.getType());
                if (errorCode != ErrorCode.NO_ERROR) {
                    fireFailEvent(request, null, new DownloadFailReason(errorCode, String.format(Locale.US, "error create folder: %s", new Object[]{DownloadUtil.getDownloadFolderPath(request.mDBItem, request.mDownloadItem.getType())}), null));
                    return;
                }
                File downloadFile = new File(DownloadUtil.getDownloadFilePath(request.mDBItem, request.mDownloadItem.getType()));
                if (request.mDBItem.isSecretItem()) {
                    boolean encodeResult = GalleryAes.encryptFile(downloadTempPath, downloadFile.getAbsolutePath(), request.mDBItem.getSecretKey());
                    MediaFileUtils.deleteFileType(FileType.TEMP, downloadTempPath);
                    if (!encodeResult) {
                        fireFailEvent(request, null, new DownloadFailReason(ErrorCode.FILE_OPERATE_ERROR, "encrypt error", null));
                        return;
                    }
                } else if (!FileUtils.move(new File(downloadTempPath), downloadFile)) {
                    fireFailEvent(request, null, new DownloadFailReason(ErrorCode.FILE_OPERATE_ERROR, "rename error", null));
                    return;
                }
                updateDataBase(request, downloadFile.getAbsolutePath());
                if (request.mDownloadItem.compareAnsSetStatus(0, 3)) {
                    DownloadItem downloadItem = request.mDownloadItem;
                    String absolutePath = downloadFile.getAbsolutePath();
                    if (request.mDBItem.isSecretItem()) {
                        bArr = request.mDBItem.getSecretKey();
                    }
                    DownloadItem.callbackSuccess(downloadItem, new DownloadedItem(absolutePath, bArr));
                    return;
                }
                return;
            }
            ThumbnailPreference.putThumbnailKey(request.mDBItem.getSha1());
            fireFailEvent(request, null, new DownloadFailReason(ErrorCode.WRITE_EXIF_ERROR, "write exif error", null));
        }
    }

    private boolean isValidUrl(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    private boolean checkConditionPermitted(DownloadItem item) {
        DownloadFailReason reason = DownloadUtil.checkCondition(item);
        if (reason == null) {
            return true;
        }
        if (item.isStatusOk()) {
            DownloadItem.callbackError(item, reason);
        }
        return false;
    }

    private JSONObject requestUrls(Account account, GalleryExtendedAuthToken extToken, List<RequestItem> requests) {
        DownloadFailReason failReason;
        StringBuilder ids = new StringBuilder();
        for (RequestItem request : requests) {
            if (ids.length() > 0) {
                ids.append(",");
            }
            ids.append(request.mDBItem.getRequestId());
        }
        String url = getRequestUrl((RequestItem) requests.get(0), account.name);
        ArrayList<NameValuePair> params = new ArrayList();
        params.add(new BasicNameValuePair(nexExportFormat.TAG_FORMAT_WIDTH, Integer.toString(getRequestWidth())));
        params.add(new BasicNameValuePair(nexExportFormat.TAG_FORMAT_HEIGHT, Integer.toString(getRequestHeight())));
        params.add(new BasicNameValuePair("ids", ids.toString()));
        params.add(new BasicNameValuePair("priority", ((RequestItem) requests.get(0)).mDownloadItem.getType().isBackground() ? "low" : "high"));
        JSONObject thumbnails = null;
        DownloadFailReason failReason2 = null;
        try {
            JSONObject json = CloudUtils.getFromXiaomi(url, params, account, extToken, 0, false);
            if (json == null) {
                failReason2 = new DownloadFailReason(ErrorCode.SERVER_ERROR, "data empty", null);
            } else if (json.optInt("code") == 0) {
                JSONObject data = json.optJSONObject("data");
                if (data != null) {
                    thumbnails = data.optJSONObject("content");
                }
                if (thumbnails == null) {
                    failReason2 = new DownloadFailReason(ErrorCode.SERVER_ERROR, "data empty", null);
                }
            } else {
                failReason2 = new DownloadFailReason(ErrorCode.SERVER_ERROR, json.optString("description"), null);
            }
            if (failReason2 != null) {
                for (RequestItem request2 : requests) {
                    fireFailEvent(request2, null, failReason2);
                }
            }
        } catch (JSONException e) {
            failReason = new DownloadFailReason(ErrorCode.DATA_PARSE_ERROR, "parse data error", e);
            if (failReason != null) {
                for (RequestItem request22 : requests) {
                    fireFailEvent(request22, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (ConnectTimeoutException e2) {
            failReason = new DownloadFailReason(ErrorCode.CONNECT_TIMEOUT, String.format("connect timeout: %s", new Object[]{url}), e2);
            if (failReason != null) {
                for (RequestItem request222 : requests) {
                    fireFailEvent(request222, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (SocketTimeoutException e3) {
            failReason = new DownloadFailReason(ErrorCode.SOCKET_TIMEOUT, String.format("connect timeout: %s", new Object[]{url}), e3);
            if (failReason != null) {
                for (RequestItem request2222 : requests) {
                    fireFailEvent(request2222, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (GalleryMiCloudServerException e4) {
            failReason = new DownloadFailReason(ErrorParseUtil.parseError(e4, null), e4.getCloudServerException().getMessage(), e4.getCloudServerException());
            if (failReason != null) {
                for (RequestItem request22222 : requests) {
                    fireFailEvent(request22222, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (Throwable th) {
            if (null != null) {
                for (RequestItem request222222 : requests) {
                    fireFailEvent(request222222, null, null);
                }
            }
        }
        return thumbnails;
    }

    private String getRequestUrl(RequestItem requestItem, String userId) {
        if (requestItem.mDBItem.isShareItem()) {
            return ShareMedia.getRequestThumbnailUrl();
        }
        return OwnerMedia.getRequestThumbnailUrl();
    }

    /* JADX WARNING: Removed duplicated region for block: B:85:0x04d4 A:{Catch:{ all -> 0x05fd }} */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x050a  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x05ee A:{SYNTHETIC, Splitter: B:100:0x05ee} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x056c A:{Catch:{ all -> 0x05fd }} */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x059f  */
    private java.lang.String downloadFile(com.miui.gallery.sdk.download.assist.RequestItem r37, java.lang.String r38) {
        /*
        r36 = this;
        r5 = 0;
        r12 = 0;
        r16 = 0;
        r19 = 0;
        r10 = new java.io.File;
        r0 = r37;
        r0 = r0.mDBItem;
        r28 = r0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r29 = r0;
        r29 = r29.getType();
        r28 = com.miui.gallery.sdk.download.util.DownloadUtil.getDownloadTempFilePath(r28, r29);
        r0 = r28;
        r10.<init>(r0);
        r6 = 0;
        r15 = 1;
        r17 = r16;
    L_0x0025:
        if (r15 == 0) goto L_0x0666;
    L_0x0027:
        r28 = MAX_TRY_COUNT;
        r0 = r28;
        if (r6 >= r0) goto L_0x0666;
    L_0x002d:
        r15 = 0;
        r22 = java.lang.System.currentTimeMillis();
        r28 = com.miui.gallery.cloud.NetworkUtils.RequestType.GET;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r38;
        r1 = r28;
        r5 = com.miui.gallery.cloud.NetworkUtils.getHttpConn(r0, r1);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r0;
        r28 = r28.getType();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r20 = com.miui.gallery.preference.GalleryPreferences.FileDownload.getConnTimeout(r28);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r37;
        r0 = r0.mDBItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r0;
        r28 = r28.isVideoType();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        if (r28 == 0) goto L_0x005c;
    L_0x0056:
        r28 = r20 * 2;
        r20 = com.miui.gallery.preference.GalleryPreferences.FileDownload.clampConnTimeout(r28);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
    L_0x005c:
        r0 = r20;
        r5.setConnectTimeout(r0);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r20;
        r5.setReadTimeout(r0);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r5.connect();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r21 = r5.getResponseCode();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r0 = r21;
        r1 = r28;
        if (r0 < r1) goto L_0x007d;
    L_0x0075:
        r28 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r0 = r21;
        r1 = r28;
        if (r0 < r1) goto L_0x0206;
    L_0x007d:
        r28 = com.miui.gallery.cloud.CheckResult.checkKSSThumbnailResult(r21);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = com.miui.gallery.cloud.CheckResult.GallerySyncResult.NotRetryError;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r28;
        r1 = r29;
        if (r0 != r1) goto L_0x0178;
    L_0x0089:
        r0 = r37;
        r0 = r0.mDBItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r0;
        r28 = r28.getSha1();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        com.miui.gallery.preference.ThumbnailPreference.putThumbnailKey(r28);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r36.getTag();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = "thumbnail can't be download forever, just add sha1 to preference %d, %s";
        r30 = java.lang.Integer.valueOf(r21);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r37;
        r0 = r0.mDBItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31 = r0;
        r31 = r31.getSha1();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        com.miui.gallery.util.Log.e(r28, r29, r30, r31);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r18 = new java.util.HashMap;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r18.<init>();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = "statusCode";
        r29 = java.lang.String.valueOf(r21);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r18;
        r1 = r28;
        r2 = r29;
        r0.put(r1, r2);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = "downloadType";
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = r0;
        r29 = r29.getType();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = java.lang.String.valueOf(r29);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r18;
        r1 = r28;
        r2 = r29;
        r0.put(r1, r2);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = "Sync";
        r29 = "sync_thumbnail_build_error";
        r0 = r28;
        r1 = r29;
        r2 = r18;
        com.miui.gallery.util.GallerySamplingStatHelper.recordErrorEvent(r0, r1, r2);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = new com.miui.gallery.sdk.download.assist.DownloadFailReason;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = com.miui.gallery.error.core.ErrorCode.THUMBNAIL_BUILD_ERROR;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r30 = "thumbnail can't build: %s";
        r31 = 1;
        r0 = r31;
        r0 = new java.lang.Object[r0];	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31 = r0;
        r32 = 0;
        r0 = r37;
        r0 = r0.mDBItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r33 = r0;
        r33 = r33.getFileName();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31[r32] = r33;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r30 = java.lang.String.format(r30, r31);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31 = 0;
        r28.<init>(r29, r30, r31);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r36;
        r1 = r37;
        r2 = r38;
        r3 = r28;
        r0.fireFailEvent(r1, r2, r3);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = 0;
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r17);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x012c;
    L_0x0128:
        r5.disconnect();
        r5 = 0;
    L_0x012c:
        r29 = r36.getTag();
        r30 = "download %s, origin file %s, cost %d, success %s";
        r31 = 4;
        r0 = r31;
        r0 = new java.lang.Object[r0];
        r31 = r0;
        r32 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r33 = r0;
        r31[r32] = r33;
        r32 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r33 = r0;
        r33 = r33.getFileName();
        r31[r32] = r33;
        r32 = 2;
        r34 = java.lang.System.currentTimeMillis();
        r34 = r34 - r22;
        r33 = java.lang.Long.valueOf(r34);
        r31[r32] = r33;
        r32 = 3;
        r33 = r10.getAbsolutePath();
        r33 = com.miui.gallery.util.FileUtils.isFileExist(r33);
        r33 = java.lang.Boolean.valueOf(r33);
        r31[r32] = r33;
        com.miui.gallery.util.Log.d(r29, r30, r31);
        r6 = r6 + 1;
        r16 = r17;
    L_0x0177:
        return r28;
    L_0x0178:
        r28 = com.miui.gallery.cloud.CheckResult.isNotRetryCode(r21);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        if (r28 == 0) goto L_0x0206;
    L_0x017e:
        r28 = new com.miui.gallery.sdk.download.assist.DownloadFailReason;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = com.miui.gallery.error.core.ErrorCode.SERVER_ERROR;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r30 = "server ret: %s";
        r31 = 1;
        r0 = r31;
        r0 = new java.lang.Object[r0];	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31 = r0;
        r32 = 0;
        r33 = java.lang.Integer.valueOf(r21);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31[r32] = r33;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r30 = java.lang.String.format(r30, r31);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31 = 0;
        r28.<init>(r29, r30, r31);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r36;
        r1 = r37;
        r2 = r38;
        r3 = r28;
        r0.fireFailEvent(r1, r2, r3);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = 0;
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r17);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x01b9;
    L_0x01b5:
        r5.disconnect();
        r5 = 0;
    L_0x01b9:
        r29 = r36.getTag();
        r30 = "download %s, origin file %s, cost %d, success %s";
        r31 = 4;
        r0 = r31;
        r0 = new java.lang.Object[r0];
        r31 = r0;
        r32 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r33 = r0;
        r31[r32] = r33;
        r32 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r33 = r0;
        r33 = r33.getFileName();
        r31[r32] = r33;
        r32 = 2;
        r34 = java.lang.System.currentTimeMillis();
        r34 = r34 - r22;
        r33 = java.lang.Long.valueOf(r34);
        r31[r32] = r33;
        r32 = 3;
        r33 = r10.getAbsolutePath();
        r33 = com.miui.gallery.util.FileUtils.isFileExist(r33);
        r33 = java.lang.Boolean.valueOf(r33);
        r31[r32] = r33;
        com.miui.gallery.util.Log.d(r29, r30, r31);
        r6 = r6 + 1;
        r16 = r17;
        goto L_0x0177;
    L_0x0206:
        r28 = r5.getContentLength();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r28;
        r0 = (long) r0;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r26 = r0;
        r28 = 0;
        r28 = (r26 > r28 ? 1 : (r26 == r28 ? 0 : -1));
        if (r28 > 0) goto L_0x021f;
    L_0x0215:
        r0 = r37;
        r0 = r0.mDBItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r0;
        r26 = r28.getSize();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
    L_0x021f:
        r12 = r5.getInputStream();	 Catch:{ FileNotFoundException -> 0x0297 }
        r28 = r10.getAbsolutePath();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = com.miui.gallery.util.DocumentProviderUtils.needUseDocumentProvider(r28);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        if (r28 == 0) goto L_0x042a;
    L_0x022d:
        r28 = com.miui.gallery.GalleryApp.sGetAndroidContext();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r28;
        r7 = com.miui.gallery.util.DocumentProviderUtils.getDocumentFile(r0, r10);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        if (r7 != 0) goto L_0x0334;
    L_0x0239:
        r28 = 0;
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r17);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x024a;
    L_0x0246:
        r5.disconnect();
        r5 = 0;
    L_0x024a:
        r29 = r36.getTag();
        r30 = "download %s, origin file %s, cost %d, success %s";
        r31 = 4;
        r0 = r31;
        r0 = new java.lang.Object[r0];
        r31 = r0;
        r32 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r33 = r0;
        r31[r32] = r33;
        r32 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r33 = r0;
        r33 = r33.getFileName();
        r31[r32] = r33;
        r32 = 2;
        r34 = java.lang.System.currentTimeMillis();
        r34 = r34 - r22;
        r33 = java.lang.Long.valueOf(r34);
        r31[r32] = r33;
        r32 = 3;
        r33 = r10.getAbsolutePath();
        r33 = com.miui.gallery.util.FileUtils.isFileExist(r33);
        r33 = java.lang.Boolean.valueOf(r33);
        r31[r32] = r33;
        com.miui.gallery.util.Log.d(r29, r30, r31);
        r6 = r6 + 1;
        r16 = r17;
        goto L_0x0177;
    L_0x0297:
        r11 = move-exception;
        r0 = r37;
        r0 = r0.mDBItem;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r0;
        r28 = r28.getSha1();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        com.miui.gallery.preference.ThumbnailPreference.putThumbnailKey(r28);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = new com.miui.gallery.sdk.download.assist.DownloadFailReason;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = com.miui.gallery.error.core.ErrorCode.THUMBNAIL_BUILD_ERROR;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r30 = java.util.Locale.US;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r31 = "thumbnail build error, ret %s";
        r32 = 1;
        r0 = r32;
        r0 = new java.lang.Object[r0];	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r32 = r0;
        r33 = 0;
        r34 = java.lang.Integer.valueOf(r21);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r32[r33] = r34;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r30 = java.lang.String.format(r30, r31, r32);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r28;
        r1 = r29;
        r2 = r30;
        r0.<init>(r1, r2, r11);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r36;
        r1 = r37;
        r2 = r38;
        r3 = r28;
        r0.fireFailEvent(r1, r2, r3);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = 0;
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r17);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x02e7;
    L_0x02e3:
        r5.disconnect();
        r5 = 0;
    L_0x02e7:
        r29 = r36.getTag();
        r30 = "download %s, origin file %s, cost %d, success %s";
        r31 = 4;
        r0 = r31;
        r0 = new java.lang.Object[r0];
        r31 = r0;
        r32 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r33 = r0;
        r31[r32] = r33;
        r32 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r33 = r0;
        r33 = r33.getFileName();
        r31[r32] = r33;
        r32 = 2;
        r34 = java.lang.System.currentTimeMillis();
        r34 = r34 - r22;
        r33 = java.lang.Long.valueOf(r34);
        r31[r32] = r33;
        r32 = 3;
        r33 = r10.getAbsolutePath();
        r33 = com.miui.gallery.util.FileUtils.isFileExist(r33);
        r33 = java.lang.Boolean.valueOf(r33);
        r31[r32] = r33;
        com.miui.gallery.util.Log.d(r29, r30, r31);
        r6 = r6 + 1;
        r16 = r17;
        goto L_0x0177;
    L_0x0334:
        r25 = r7.getUri();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = com.miui.gallery.GalleryApp.sGetAndroidContext();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r28.getContentResolver();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r29 = "w";
        r0 = r28;
        r1 = r25;
        r2 = r29;
        r19 = r0.openFileDescriptor(r1, r2);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r16 = new java.io.FileOutputStream;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = r19.getFileDescriptor();	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r0 = r16;
        r1 = r28;
        r0.<init>(r1);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
    L_0x035a:
        r4 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r14 = new byte[r4];	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r13 = 0;
        r8 = 0;
    L_0x0361:
        r28 = 0;
        r0 = r28;
        r13 = r12.read(r14, r0, r4);	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        if (r13 < 0) goto L_0x0437;
    L_0x036b:
        r28 = 0;
        r0 = r16;
        r1 = r28;
        r0.write(r14, r1, r13);	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r0 = (long) r13;	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r28 = r0;
        r8 = r8 + r28;
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r28 = r0;
        r0 = r28;
        r1 = r26;
        com.miui.gallery.sdk.download.assist.DownloadItem.callbackProgress(r0, r8, r1);	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        goto L_0x0361;
    L_0x0387:
        r11 = move-exception;
    L_0x0388:
        r15 = 1;
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ all -> 0x05fd }
        r28 = r0;
        r28 = r28.getType();	 Catch:{ all -> 0x05fd }
        r0 = r36;
        r1 = r28;
        r0.increaseConnTimeout(r1);	 Catch:{ all -> 0x05fd }
        r28 = r6 + 1;
        r29 = MAX_TRY_COUNT;	 Catch:{ all -> 0x05fd }
        r0 = r28;
        r1 = r29;
        if (r0 < r1) goto L_0x03ce;
    L_0x03a4:
        r28 = new com.miui.gallery.sdk.download.assist.DownloadFailReason;	 Catch:{ all -> 0x05fd }
        r29 = com.miui.gallery.error.core.ErrorCode.CONNECT_TIMEOUT;	 Catch:{ all -> 0x05fd }
        r30 = "connect timeout: %s";
        r31 = 1;
        r0 = r31;
        r0 = new java.lang.Object[r0];	 Catch:{ all -> 0x05fd }
        r31 = r0;
        r32 = 0;
        r31[r32] = r38;	 Catch:{ all -> 0x05fd }
        r30 = java.lang.String.format(r30, r31);	 Catch:{ all -> 0x05fd }
        r0 = r28;
        r1 = r29;
        r2 = r30;
        r0.<init>(r1, r2, r11);	 Catch:{ all -> 0x05fd }
        r0 = r36;
        r1 = r37;
        r2 = r38;
        r3 = r28;
        r0.fireFailEvent(r1, r2, r3);	 Catch:{ all -> 0x05fd }
    L_0x03ce:
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r16);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x03dd;
    L_0x03d9:
        r5.disconnect();
        r5 = 0;
    L_0x03dd:
        r28 = r36.getTag();
        r29 = "download %s, origin file %s, cost %d, success %s";
        r30 = 4;
        r0 = r30;
        r0 = new java.lang.Object[r0];
        r30 = r0;
        r31 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r32 = r0;
        r30[r31] = r32;
        r31 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r32 = r0;
        r32 = r32.getFileName();
        r30[r31] = r32;
        r31 = 2;
        r32 = java.lang.System.currentTimeMillis();
        r32 = r32 - r22;
        r32 = java.lang.Long.valueOf(r32);
        r30[r31] = r32;
        r31 = 3;
        r32 = r10.getAbsolutePath();
        r32 = com.miui.gallery.util.FileUtils.isFileExist(r32);
        r32 = java.lang.Boolean.valueOf(r32);
        r30[r31] = r32;
        com.miui.gallery.util.Log.d(r28, r29, r30);
        r6 = r6 + 1;
    L_0x0426:
        r17 = r16;
        goto L_0x0025;
    L_0x042a:
        r16 = new java.io.FileOutputStream;	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        r28 = 0;
        r0 = r16;
        r1 = r28;
        r0.<init>(r10, r1);	 Catch:{ ConnectTimeoutException -> 0x0661, SocketTimeoutException -> 0x04b5, Throwable -> 0x0559, all -> 0x0657 }
        goto L_0x035a;
    L_0x0437:
        r16.flush();	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r28 = r0;
        r28 = r28.getType();	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        r0 = r36;
        r1 = r28;
        r0.decreaseConnTimeout(r1);	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        com.miui.gallery.sdk.download.util.DownloadUtil.statDownloadSuccess(r37);	 Catch:{ ConnectTimeoutException -> 0x0387, SocketTimeoutException -> 0x065e, Throwable -> 0x065b }
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r16);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x045d;
    L_0x0459:
        r5.disconnect();
        r5 = 0;
    L_0x045d:
        r28 = r36.getTag();
        r29 = "download %s, origin file %s, cost %d, success %s";
        r30 = 4;
        r0 = r30;
        r0 = new java.lang.Object[r0];
        r30 = r0;
        r31 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r32 = r0;
        r30[r31] = r32;
        r31 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r32 = r0;
        r32 = r32.getFileName();
        r30[r31] = r32;
        r31 = 2;
        r32 = java.lang.System.currentTimeMillis();
        r32 = r32 - r22;
        r32 = java.lang.Long.valueOf(r32);
        r30[r31] = r32;
        r31 = 3;
        r32 = r10.getAbsolutePath();
        r32 = com.miui.gallery.util.FileUtils.isFileExist(r32);
        r32 = java.lang.Boolean.valueOf(r32);
        r30[r31] = r32;
        com.miui.gallery.util.Log.d(r28, r29, r30);
        r6 = r6 + 1;
    L_0x04a6:
        r28 = MAX_TRY_COUNT;
        r0 = r37;
        r1 = r28;
        com.miui.gallery.sdk.download.util.DownloadUtil.statDownloadRetryTimes(r0, r6, r1);
        r28 = r10.getAbsolutePath();
        goto L_0x0177;
    L_0x04b5:
        r11 = move-exception;
        r16 = r17;
    L_0x04b8:
        r15 = 1;
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ all -> 0x05fd }
        r28 = r0;
        r28 = r28.getType();	 Catch:{ all -> 0x05fd }
        r0 = r36;
        r1 = r28;
        r0.increaseConnTimeout(r1);	 Catch:{ all -> 0x05fd }
        r28 = r6 + 1;
        r29 = MAX_TRY_COUNT;	 Catch:{ all -> 0x05fd }
        r0 = r28;
        r1 = r29;
        if (r0 < r1) goto L_0x04ff;
    L_0x04d4:
        r28 = new com.miui.gallery.sdk.download.assist.DownloadFailReason;	 Catch:{ all -> 0x05fd }
        r29 = com.miui.gallery.error.core.ErrorCode.SOCKET_TIMEOUT;	 Catch:{ all -> 0x05fd }
        r30 = "socket timeout: %s";
        r31 = 1;
        r0 = r31;
        r0 = new java.lang.Object[r0];	 Catch:{ all -> 0x05fd }
        r31 = r0;
        r32 = 0;
        r31[r32] = r38;	 Catch:{ all -> 0x05fd }
        r30 = java.lang.String.format(r30, r31);	 Catch:{ all -> 0x05fd }
        r0 = r28;
        r1 = r29;
        r2 = r30;
        r0.<init>(r1, r2, r11);	 Catch:{ all -> 0x05fd }
        r0 = r36;
        r1 = r37;
        r2 = r38;
        r3 = r28;
        r0.fireFailEvent(r1, r2, r3);	 Catch:{ all -> 0x05fd }
    L_0x04ff:
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r16);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x050e;
    L_0x050a:
        r5.disconnect();
        r5 = 0;
    L_0x050e:
        r28 = r36.getTag();
        r29 = "download %s, origin file %s, cost %d, success %s";
        r30 = 4;
        r0 = r30;
        r0 = new java.lang.Object[r0];
        r30 = r0;
        r31 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r32 = r0;
        r30[r31] = r32;
        r31 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r32 = r0;
        r32 = r32.getFileName();
        r30[r31] = r32;
        r31 = 2;
        r32 = java.lang.System.currentTimeMillis();
        r32 = r32 - r22;
        r32 = java.lang.Long.valueOf(r32);
        r30[r31] = r32;
        r31 = 3;
        r32 = r10.getAbsolutePath();
        r32 = com.miui.gallery.util.FileUtils.isFileExist(r32);
        r32 = java.lang.Boolean.valueOf(r32);
        r30[r31] = r32;
        com.miui.gallery.util.Log.d(r28, r29, r30);
        r6 = r6 + 1;
        goto L_0x0426;
    L_0x0559:
        r24 = move-exception;
        r16 = r17;
    L_0x055c:
        r0 = r37;
        r0 = r0.mDownloadItem;	 Catch:{ all -> 0x05fd }
        r28 = r0;
        r0 = r36;
        r1 = r28;
        r28 = r0.checkConditionPermitted(r1);	 Catch:{ all -> 0x05fd }
        if (r28 == 0) goto L_0x05ee;
    L_0x056c:
        r28 = new com.miui.gallery.sdk.download.assist.DownloadFailReason;	 Catch:{ all -> 0x05fd }
        r29 = r10.getAbsolutePath();	 Catch:{ all -> 0x05fd }
        r0 = r24;
        r1 = r29;
        r29 = com.miui.gallery.error.util.ErrorParseUtil.parseError(r0, r1);	 Catch:{ all -> 0x05fd }
        r30 = r24.getMessage();	 Catch:{ all -> 0x05fd }
        r0 = r28;
        r1 = r29;
        r2 = r30;
        r3 = r24;
        r0.<init>(r1, r2, r3);	 Catch:{ all -> 0x05fd }
        r0 = r36;
        r1 = r37;
        r2 = r38;
        r3 = r28;
        r0.fireFailEvent(r1, r2, r3);	 Catch:{ all -> 0x05fd }
    L_0x0594:
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r16);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x05a3;
    L_0x059f:
        r5.disconnect();
        r5 = 0;
    L_0x05a3:
        r28 = r36.getTag();
        r29 = "download %s, origin file %s, cost %d, success %s";
        r30 = 4;
        r0 = r30;
        r0 = new java.lang.Object[r0];
        r30 = r0;
        r31 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r32 = r0;
        r30[r31] = r32;
        r31 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r32 = r0;
        r32 = r32.getFileName();
        r30[r31] = r32;
        r31 = 2;
        r32 = java.lang.System.currentTimeMillis();
        r32 = r32 - r22;
        r32 = java.lang.Long.valueOf(r32);
        r30[r31] = r32;
        r31 = 3;
        r32 = r10.getAbsolutePath();
        r32 = com.miui.gallery.util.FileUtils.isFileExist(r32);
        r32 = java.lang.Boolean.valueOf(r32);
        r30[r31] = r32;
        com.miui.gallery.util.Log.d(r28, r29, r30);
        r6 = r6 + 1;
        goto L_0x0426;
    L_0x05ee:
        r28 = r36.getTag();	 Catch:{ all -> 0x05fd }
        r0 = r28;
        r1 = r24;
        com.miui.gallery.util.Log.e(r0, r1);	 Catch:{ all -> 0x05fd }
        r36.deleteTempFile(r37);	 Catch:{ all -> 0x05fd }
        goto L_0x0594;
    L_0x05fd:
        r28 = move-exception;
    L_0x05fe:
        com.miui.gallery.util.MiscUtil.closeSilently(r12);
        com.miui.gallery.util.MiscUtil.closeSilently(r16);
        com.miui.gallery.util.MiscUtil.closeSilently(r19);
        if (r5 == 0) goto L_0x060d;
    L_0x0609:
        r5.disconnect();
        r5 = 0;
    L_0x060d:
        r29 = r36.getTag();
        r30 = "download %s, origin file %s, cost %d, success %s";
        r31 = 4;
        r0 = r31;
        r0 = new java.lang.Object[r0];
        r31 = r0;
        r32 = 0;
        r0 = r37;
        r0 = r0.mDownloadItem;
        r33 = r0;
        r31[r32] = r33;
        r32 = 1;
        r0 = r37;
        r0 = r0.mDBItem;
        r33 = r0;
        r33 = r33.getFileName();
        r31[r32] = r33;
        r32 = 2;
        r34 = java.lang.System.currentTimeMillis();
        r34 = r34 - r22;
        r33 = java.lang.Long.valueOf(r34);
        r31[r32] = r33;
        r32 = 3;
        r33 = r10.getAbsolutePath();
        r33 = com.miui.gallery.util.FileUtils.isFileExist(r33);
        r33 = java.lang.Boolean.valueOf(r33);
        r31[r32] = r33;
        com.miui.gallery.util.Log.d(r29, r30, r31);
        r6 = r6 + 1;
        throw r28;
    L_0x0657:
        r28 = move-exception;
        r16 = r17;
        goto L_0x05fe;
    L_0x065b:
        r24 = move-exception;
        goto L_0x055c;
    L_0x065e:
        r11 = move-exception;
        goto L_0x04b8;
    L_0x0661:
        r11 = move-exception;
        r16 = r17;
        goto L_0x0388;
    L_0x0666:
        r16 = r17;
        goto L_0x04a6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.sdk.download.downloader.AbsThumbnailDownloader.downloadFile(com.miui.gallery.sdk.download.assist.RequestItem, java.lang.String):java.lang.String");
    }

    private void increaseConnTimeout(DownloadType type) {
        int timeout = FileDownload.getConnTimeout(type) + 3000;
        if (FileDownload.setConnTimeout(type, timeout)) {
            Log.i(getTag(), "increase conn timeout %d, type %s", Integer.valueOf(timeout), type.name());
        }
    }

    private void decreaseConnTimeout(DownloadType type) {
        int timeout = FileDownload.getConnTimeout(type) - 1000;
        if (FileDownload.setConnTimeout(type, timeout)) {
            Log.i(getTag(), "decrease conn timeout %d, type %s", Integer.valueOf(timeout), type.name());
        }
    }

    private void fireFailEvent(RequestItem item, String url, DownloadFailReason reason) {
        Log.d(getTag(), "download fail %s", (Object) reason);
        if ((reason != null ? reason.getCause() : null) != null) {
            Log.e(getTag(), reason.getCause());
        }
        deleteTempFile(item);
        if (item.mDownloadItem.isStatusOk()) {
            DownloadItem.callbackError(item.mDownloadItem, reason);
        }
        DownloadUtil.statDownloadError(item, url, reason);
    }

    private void deleteTempFile(RequestItem item) {
        if (item.mDBItem != null) {
            String tempFile = DownloadUtil.getDownloadTempFilePath(item.mDBItem, item.mDownloadItem.getType());
            MediaFileUtils.deleteFileType(FileType.TEMP, tempFile);
        }
    }

    private String downloadData(RequestItem item, String data) {
        ParcelFileDescriptor pfd = null;
        File downloadFile = new File(DownloadUtil.getDownloadTempFilePath(item.mDBItem, item.mDownloadItem.getType()));
        try {
            OutputStream out;
            if (DocumentProviderUtils.needUseDocumentProvider(downloadFile.getAbsolutePath())) {
                DocumentFile downloadDocumentFile = DocumentProviderUtils.getDocumentFile(GalleryApp.sGetAndroidContext(), downloadFile);
                if (downloadDocumentFile != null) {
                    pfd = GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(downloadDocumentFile.getUri(), "w");
                    out = new FileOutputStream(pfd.getFileDescriptor());
                }
                return null;
            }
            out = new FileOutputStream(downloadFile, false);
            out.write(Base64.decode(data.getBytes(Keyczar.DEFAULT_ENCODING), 2));
            MiscUtil.closeSilently(out);
            MiscUtil.closeSilently(pfd);
            return downloadFile.getAbsolutePath();
        } catch (Object e) {
            Log.e(getTag(), "download data error.", e);
        } catch (Object e2) {
            Log.e(getTag(), "download data error.", e2);
        } catch (Object e22) {
            Log.e(getTag(), "download data error.", e22);
        } finally {
            MiscUtil.closeSilently(null);
            MiscUtil.closeSilently(null);
        }
    }

    private boolean checkItemValid(RequestItem item) {
        DBImage dbImage = item.mDBItem;
        if (DownloadUtil.canDownloadStatus(dbImage)) {
            return true;
        }
        if (dbImage == null) {
            fireFailEvent(item, null, new DownloadFailReason(ErrorCode.PARAMS_ERROR, "dbImage null", null));
        } else if (DownloadUtil.isNotSyncedStatus(dbImage)) {
            fireFailEvent(item, null, new DownloadFailReason(ErrorCode.NOT_SYNCED, String.format("item invalid server[%s], local[%s]", new Object[]{dbImage.getServerStatus(), Integer.valueOf(dbImage.getLocalFlag())}), null));
        } else {
            fireFailEvent(item, null, new DownloadFailReason(ErrorCode.PARAMS_ERROR, String.format("item invalid server[%s], local[%s]", new Object[]{dbImage.getServerStatus(), Integer.valueOf(dbImage.getLocalFlag())}), null));
        }
        return false;
    }

    protected boolean handleDownloadTempFile(RequestItem item, String downloadTemp) {
        return true;
    }
}
