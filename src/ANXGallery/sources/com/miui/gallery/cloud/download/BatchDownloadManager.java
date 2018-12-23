package com.miui.gallery.cloud.download;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.jobs.SyncJobService;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.sdk.download.DownloadOptions;
import com.miui.gallery.sdk.download.DownloadOptions.Builder;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.ImageDownloader;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.listener.DownloadListener;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.deprecated.Preference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class BatchDownloadManager implements Callback {
    private static final int[] COUNT_STAGE = new int[]{20, 50, 100, 200, 500, 1000, 3000, 5000, 10000};
    private static volatile boolean sHasDownloaded = false;
    private List<OnBatchDownloadListener> mBatchDownloadListeners;
    private final Object mCollectionLock;
    private final Object mDispatchLock;
    private Future mDispatchTask;
    private List<BatchItem> mDownloadItems;
    private Map<String, BatchItem> mDownloadItemsMap;
    private DownloadListener mDownloadListener;
    private ErrorCode mError;
    private List<BatchItem> mFailItems;
    private DownloadObserver mObserver;
    private Builder mOptionsBuilder;
    private AtomicInteger mStatus;
    private List<BatchItem> mSuccessItems;
    private Handler mUIHandler;

    public static class BatchItem {
        public final DownloadType mType;
        public final Uri mUri;

        public BatchItem(Uri uri, DownloadType type) {
            this.mUri = uri;
            this.mType = type;
        }

        public static String generateKey(Uri uri, DownloadType type) {
            return DownloadUtil.generateKey(uri, type);
        }
    }

    private class DispatchJob implements Job {
        private final Context mContext;
        private final DownloadType mType;

        public DispatchJob(Context context, DownloadType type) {
            this.mContext = context;
            this.mType = type;
        }

        private List<Uri> queryDownload(Context context) {
            List<Uri> all = new LinkedList();
            List<Uri> uris = BatchDownloadUtil.queryDownload(this.mContext, this.mType, false, -1);
            if (MiscUtil.isValid(uris)) {
                all.addAll(uris);
            }
            if (CloudControlStrategyHelper.getSyncStrategy().isAutoDownloadShare()) {
                uris = BatchDownloadUtil.queryDownload(this.mContext, this.mType, true, -1);
                if (MiscUtil.isValid(uris)) {
                    all.addAll(uris);
                }
            }
            return all;
        }

        private boolean isValidRequest() {
            return Sync.isAutoDownload() && this.mType == BatchDownloadManager.this.getAutoDownloadType() && BatchDownloadManager.this.mStatus.get() == 0;
        }

        public Object run(JobContext jc) {
            boolean foreground = MiscUtil.isAppProcessInForeground(this.mContext);
            BatchDownloadManager.this.mOptionsBuilder.setRequireCharging(!foreground);
            if (BatchDownloadManager.this.checkCondition()) {
                List<Uri> uris = queryDownload(this.mContext);
                if (MiscUtil.isValid(uris)) {
                    BatchDownloadManager.sHasDownloaded = false;
                    if (jc.isCancelled() || !isValidRequest()) {
                        Log.d("BatchDownloadManager", "not auto batch download before dispatching");
                    } else {
                        boolean z;
                        Log.d("BatchDownloadManager", "start download %s items for %s in foreground %s", Integer.valueOf(uris.size()), BatchDownloadManager.this.getAutoDownloadType(), Boolean.valueOf(foreground));
                        Builder requirePower = BatchDownloadManager.this.mOptionsBuilder.setRequireWLAN(true).setRequireDeviceStorage(true).setRequirePower(true);
                        if (foreground) {
                            z = false;
                        } else {
                            z = true;
                        }
                        BatchDownloadManager.this.download(uris, requirePower.setRequireCharging(z).build());
                        if (jc.isCancelled() || !isValidRequest()) {
                            Log.d("BatchDownloadManager", "not auto batch download after dispatching");
                            ImageDownloader.getInstance().cancelAll(this.mType);
                        } else {
                            if (BatchDownloadManager.this.mStatus.compareAndSet(0, 1)) {
                                BatchDownloadManager.this.callbackBatchProgress();
                            }
                            SyncJobService.scheduleJob(this.mContext, 10000);
                            BatchDownloadManager.this.statStartDownload(uris.size());
                        }
                    }
                } else {
                    BatchDownloadManager.sHasDownloaded = true;
                    BatchDownloadManager.this.statEndDownload();
                    Log.d("BatchDownloadManager", "no items need download for %s", this.mType);
                }
            } else {
                Log.d("BatchDownloadManager", "condition not ok, cannot download");
            }
            return null;
        }
    }

    private final class ItemDownloadListener implements DownloadListener {
        private ItemDownloadListener() {
        }

        public void onDownloadStarted(Uri uri, DownloadType type) {
        }

        public void onDownloadSuccess(Uri uri, DownloadType type, DownloadedItem item) {
            BatchDownloadManager.this.onItemDownloadSuccess(uri, type);
        }

        public void onDownloadFail(Uri uri, DownloadType type, DownloadFailReason reason) {
            BatchDownloadManager.this.onItemDownloadFail(uri, type, reason);
        }

        public void onDownloadCancel(Uri uri, DownloadType type) {
            BatchDownloadManager.this.onItemDownloadCancel(uri, type);
        }
    }

    public interface OnBatchDownloadListener {
        void onDownloadCancelled(List<BatchItem> list, List<BatchItem> list2);

        void onDownloadComplete(List<BatchItem> list, List<BatchItem> list2, ErrorCode errorCode);

        void onDownloadProgress(List<BatchItem> list, List<BatchItem> list2);
    }

    private static final class SingletonHolder {
        private static final BatchDownloadManager INSTANCE = new BatchDownloadManager();
    }

    public static BatchDownloadManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private BatchDownloadManager() {
        this.mCollectionLock = new Object();
        this.mDispatchLock = new Object();
        this.mError = ErrorCode.NO_ERROR;
        this.mStatus = new AtomicInteger(0);
        this.mBatchDownloadListeners = new ArrayList();
        this.mDownloadListener = new ItemDownloadListener();
        this.mDownloadItemsMap = new HashMap();
        this.mDownloadItems = new LinkedList();
        this.mSuccessItems = new LinkedList();
        this.mFailItems = new LinkedList();
        this.mOptionsBuilder = new Builder();
        this.mUIHandler = new Handler(Looper.getMainLooper(), this);
        this.mObserver = new DownloadObserver();
        this.mObserver.register(GalleryApp.sGetAndroidContext());
    }

    public boolean handleMessage(Message msg) {
        switch (msg.what) {
            case 1:
                if (msg.obj != null) {
                    ((OnBatchDownloadListener) msg.obj).onDownloadComplete(Collections.unmodifiableList(this.mSuccessItems), Collections.unmodifiableList(this.mDownloadItems), this.mError);
                } else {
                    synchronized (this.mBatchDownloadListeners) {
                        for (OnBatchDownloadListener listener : this.mBatchDownloadListeners) {
                            listener.onDownloadComplete(Collections.unmodifiableList(this.mSuccessItems), Collections.unmodifiableList(this.mDownloadItems), this.mError);
                        }
                    }
                }
                return true;
            case 2:
                if (msg.obj != null) {
                    ((OnBatchDownloadListener) msg.obj).onDownloadProgress(Collections.unmodifiableList(this.mSuccessItems), Collections.unmodifiableList(this.mDownloadItems));
                } else {
                    synchronized (this.mBatchDownloadListeners) {
                        for (OnBatchDownloadListener listener2 : this.mBatchDownloadListeners) {
                            listener2.onDownloadProgress(Collections.unmodifiableList(this.mSuccessItems), Collections.unmodifiableList(this.mDownloadItems));
                        }
                    }
                }
                return true;
            case 3:
                if (msg.obj != null) {
                    ((OnBatchDownloadListener) msg.obj).onDownloadCancelled(Collections.unmodifiableList(this.mSuccessItems), Collections.unmodifiableList(this.mDownloadItems));
                } else {
                    synchronized (this.mBatchDownloadListeners) {
                        for (OnBatchDownloadListener listener22 : this.mBatchDownloadListeners) {
                            listener22.onDownloadCancelled(Collections.unmodifiableList(this.mSuccessItems), Collections.unmodifiableList(this.mDownloadItems));
                        }
                    }
                }
                return true;
            default:
                return false;
        }
    }

    public void registerBatchDownloadListener(OnBatchDownloadListener listener) {
        synchronized (this.mBatchDownloadListeners) {
            this.mBatchDownloadListeners.add(listener);
        }
        switch (this.mStatus.get()) {
            case 1:
                callbackBatchProgress(listener);
                return;
            case 2:
                callbackBatchCancelled(listener);
                return;
            default:
                callbackBatchEnd(listener);
                return;
        }
    }

    public void unregisterBatchDownloadListener(OnBatchDownloadListener listener) {
        synchronized (this.mBatchDownloadListeners) {
            this.mBatchDownloadListeners.remove(listener);
        }
    }

    private DownloadType getAutoDownloadType() {
        DownloadType type = Sync.getDownloadType();
        if (type == DownloadType.ORIGIN) {
            type = DownloadType.ORIGIN_BATCH;
        }
        if (type == DownloadType.THUMBNAIL) {
            return DownloadType.THUMBNAIL_BATCH;
        }
        return type;
    }

    public void startBatchDownload(Context context, boolean immediately) {
        Object type = getAutoDownloadType();
        if (isDownloading(type)) {
            Log.d("BatchDownloadManager", "downloading %s", type);
        } else if (!sHasDownloaded || immediately) {
            clearState();
            synchronized (this.mDispatchLock) {
                doStopDownload();
                this.mDispatchTask = ThreadManager.getMiscPool().submit(new DispatchJob(context.getApplicationContext(), type));
            }
        } else {
            Log.d("BatchDownloadManager", "no need download because memory marker");
        }
    }

    private void doStopDownload() {
        synchronized (this.mDispatchLock) {
            cancelTask();
            ImageDownloader.getInstance().cancelAll(DownloadType.THUMBNAIL_BATCH);
            ImageDownloader.getInstance().cancelAll(DownloadType.ORIGIN_BATCH);
        }
    }

    public void stopBatchDownload(Context context) {
        Log.d("BatchDownloadManager", "stop batch download for %s", getAutoDownloadType());
        doStopDownload();
        this.mStatus.set(2);
        callbackBatchCancelled();
    }

    public static boolean canAutoDownload() {
        return AccountCache.getAccount() != null && Sync.isAutoDownload();
    }

    private void interruptBatchDownload(Context context) {
        if (this.mStatus.compareAndSet(1, 3)) {
            Log.d("BatchDownloadManager", "interrupt batch download for %s", getAutoDownloadType());
            doStopDownload();
            callbackBatchEnd();
        }
    }

    private void resumeBatchDownload(Context context) {
        if (canAutoDownload()) {
            Log.d("BatchDownloadManager", "resume batch download for %s", getAutoDownloadType());
            startBatchDownload(context, false);
        }
    }

    private void cancelTask() {
        if (this.mDispatchTask != null) {
            this.mDispatchTask.cancel();
            this.mDispatchTask = null;
        }
    }

    private void download(List<Uri> uris, DownloadOptions options) {
        DownloadType type = getAutoDownloadType();
        synchronized (this.mCollectionLock) {
            for (Uri uri : uris) {
                BatchItem item = new BatchItem(uri, type);
                this.mDownloadItems.add(item);
                this.mDownloadItemsMap.put(BatchItem.generateKey(uri, type), item);
            }
        }
        synchronized (this.mDispatchLock) {
            for (Uri uri2 : uris) {
                ImageDownloader.getInstance().load(uri2, type, options, this.mDownloadListener, null);
            }
        }
    }

    public void download(Uri uri) {
        DownloadOptions options = this.mOptionsBuilder.setRequireWLAN(true).setRequireDeviceStorage(true).setRequirePower(true).setQueueFirst(true).build();
        List<Uri> uris = new LinkedList();
        uris.add(uri);
        download(uris, options);
        Log.d("BatchDownloadManager", "download %s at first", (Object) uri);
    }

    private boolean checkCondition() {
        if (!CTA.canConnectNetwork()) {
            Log.d("BatchDownloadManager", "condition cta not allowed");
            setError(ErrorCode.NO_CTA_PERMISSION);
            return false;
        } else if (!NetworkUtils.isNetworkConnected()) {
            Log.d("BatchDownloadManager", "condition no network");
            setError(ErrorCode.NO_NETWORK);
            return false;
        } else if (NetworkUtils.isActiveNetworkMetered()) {
            Log.d("BatchDownloadManager", "condition no wifi");
            setError(ErrorCode.NO_WIFI_CONNECTED);
            return false;
        } else {
            if (this.mOptionsBuilder.build().isRequireCharging()) {
                if (!Sync.getIsPlugged()) {
                    Log.d("BatchDownloadManager", "condition not charging");
                    setError(ErrorCode.NO_CHARGING);
                    return false;
                }
            } else if (!Sync.getPowerCanSync()) {
                Log.d("BatchDownloadManager", "condition low power");
                setError(ErrorCode.POWER_LOW);
                return false;
            }
            if (!Sync.isDeviceStorageLow()) {
                return true;
            }
            Log.d("BatchDownloadManager", "condition low storage");
            setError(ErrorCode.STORAGE_LOW);
            return false;
        }
    }

    void onConditionChanged(Context context) {
        if (checkCondition()) {
            resumeBatchDownload(context);
        } else {
            interruptBatchDownload(context);
        }
    }

    private void clearState() {
        synchronized (this.mCollectionLock) {
            this.mDownloadItemsMap.clear();
            this.mDownloadItems.clear();
            this.mSuccessItems.clear();
            this.mFailItems.clear();
            setError(ErrorCode.NO_ERROR);
        }
        this.mStatus.set(0);
    }

    private void setError(ErrorCode code) {
        synchronized (this.mCollectionLock) {
            this.mError = code;
        }
    }

    private boolean isDownloading(DownloadType type) {
        boolean z;
        synchronized (this.mCollectionLock) {
            if ((this.mDownloadItems.size() > 0 ? ((BatchItem) this.mDownloadItems.get(0)).mType : null) != type || this.mSuccessItems.size() + this.mFailItems.size() >= this.mDownloadItems.size()) {
                z = false;
            } else {
                z = true;
            }
        }
        return z;
    }

    private boolean isDownloadEnd(DownloadType type) {
        boolean z;
        synchronized (this.mCollectionLock) {
            if ((this.mDownloadItems.size() > 0 ? ((BatchItem) this.mDownloadItems.get(0)).mType : null) != type || this.mFailItems.size() + this.mSuccessItems.size() < this.mDownloadItems.size()) {
                z = false;
            } else {
                z = true;
            }
        }
        return z;
    }

    private void callbackBatchEnd() {
        callbackBatchEnd(null);
        Log.d("BatchDownloadManager", "download %s end success[%s], total[%s], error %s", getAutoDownloadType(), Integer.valueOf(this.mSuccessItems.size()), Integer.valueOf(this.mDownloadItems.size()), this.mError);
    }

    private void callbackBatchProgress() {
        callbackBatchProgress(null);
    }

    private void callbackBatchCancelled() {
        callbackBatchCancelled(null);
    }

    private void callbackBatchProgress(OnBatchDownloadListener tarListener) {
        this.mUIHandler.obtainMessage(2, tarListener).sendToTarget();
    }

    private void callbackBatchEnd(OnBatchDownloadListener tarListener) {
        this.mUIHandler.obtainMessage(1, tarListener).sendToTarget();
    }

    private void callbackBatchCancelled(OnBatchDownloadListener tarListener) {
        this.mUIHandler.obtainMessage(3, tarListener).sendToTarget();
    }

    private boolean isValidItem(Uri uri, DownloadType type) {
        return getAutoDownloadType() == type && this.mDownloadItemsMap.containsKey(BatchItem.generateKey(uri, type));
    }

    /* JADX WARNING: Missing block: B:18:?, code:
            return;
     */
    private void onItemDownloadSuccess(android.net.Uri r5, com.miui.gallery.sdk.download.DownloadType r6) {
        /*
        r4 = this;
        r1 = r4.mCollectionLock;
        monitor-enter(r1);
        r0 = r4.isValidItem(r5, r6);	 Catch:{ all -> 0x002e }
        if (r0 != 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r1);	 Catch:{ all -> 0x002e }
    L_0x000a:
        return;
    L_0x000b:
        r0 = r4.mSuccessItems;	 Catch:{ all -> 0x002e }
        r2 = new com.miui.gallery.cloud.download.BatchDownloadManager$BatchItem;	 Catch:{ all -> 0x002e }
        r2.<init>(r5, r6);	 Catch:{ all -> 0x002e }
        r0.add(r2);	 Catch:{ all -> 0x002e }
        r0 = r4.getAutoDownloadType();	 Catch:{ all -> 0x002e }
        r0 = r4.isDownloadEnd(r0);	 Catch:{ all -> 0x002e }
        if (r0 == 0) goto L_0x0031;
    L_0x001f:
        r0 = r4.mStatus;	 Catch:{ all -> 0x002e }
        r2 = 1;
        r3 = 4;
        r0 = r0.compareAndSet(r2, r3);	 Catch:{ all -> 0x002e }
        if (r0 == 0) goto L_0x002c;
    L_0x0029:
        r4.callbackBatchEnd();	 Catch:{ all -> 0x002e }
    L_0x002c:
        monitor-exit(r1);	 Catch:{ all -> 0x002e }
        goto L_0x000a;
    L_0x002e:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x002e }
        throw r0;
    L_0x0031:
        r4.callbackBatchProgress();	 Catch:{ all -> 0x002e }
        goto L_0x002c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.cloud.download.BatchDownloadManager.onItemDownloadSuccess(android.net.Uri, com.miui.gallery.sdk.download.DownloadType):void");
    }

    /* JADX WARNING: Missing block: B:16:?, code:
            return;
     */
    private void onItemDownloadFail(android.net.Uri r5, com.miui.gallery.sdk.download.DownloadType r6, com.miui.gallery.sdk.download.assist.DownloadFailReason r7) {
        /*
        r4 = this;
        r1 = r4.mCollectionLock;
        monitor-enter(r1);
        r0 = r4.isValidItem(r5, r6);	 Catch:{ all -> 0x0031 }
        if (r0 != 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r1);	 Catch:{ all -> 0x0031 }
    L_0x000a:
        return;
    L_0x000b:
        r4.updateFailReason(r7);	 Catch:{ all -> 0x0031 }
        r0 = r4.mFailItems;	 Catch:{ all -> 0x0031 }
        r2 = new com.miui.gallery.cloud.download.BatchDownloadManager$BatchItem;	 Catch:{ all -> 0x0031 }
        r2.<init>(r5, r6);	 Catch:{ all -> 0x0031 }
        r0.add(r2);	 Catch:{ all -> 0x0031 }
        r0 = r4.getAutoDownloadType();	 Catch:{ all -> 0x0031 }
        r0 = r4.isDownloadEnd(r0);	 Catch:{ all -> 0x0031 }
        if (r0 == 0) goto L_0x002f;
    L_0x0022:
        r0 = r4.mStatus;	 Catch:{ all -> 0x0031 }
        r2 = 1;
        r3 = 4;
        r0 = r0.compareAndSet(r2, r3);	 Catch:{ all -> 0x0031 }
        if (r0 == 0) goto L_0x002f;
    L_0x002c:
        r4.callbackBatchEnd();	 Catch:{ all -> 0x0031 }
    L_0x002f:
        monitor-exit(r1);	 Catch:{ all -> 0x0031 }
        goto L_0x000a;
    L_0x0031:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0031 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.cloud.download.BatchDownloadManager.onItemDownloadFail(android.net.Uri, com.miui.gallery.sdk.download.DownloadType, com.miui.gallery.sdk.download.assist.DownloadFailReason):void");
    }

    /* JADX WARNING: Missing block: B:16:?, code:
            return;
     */
    private void onItemDownloadCancel(android.net.Uri r5, com.miui.gallery.sdk.download.DownloadType r6) {
        /*
        r4 = this;
        r1 = r4.mCollectionLock;
        monitor-enter(r1);
        r0 = r4.isValidItem(r5, r6);	 Catch:{ all -> 0x002a }
        if (r0 != 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r1);	 Catch:{ all -> 0x002a }
    L_0x000a:
        return;
    L_0x000b:
        r0 = r4.mFailItems;	 Catch:{ all -> 0x002a }
        r2 = new com.miui.gallery.cloud.download.BatchDownloadManager$BatchItem;	 Catch:{ all -> 0x002a }
        r2.<init>(r5, r6);	 Catch:{ all -> 0x002a }
        r0.add(r2);	 Catch:{ all -> 0x002a }
        r0 = r4.isDownloadEnd(r6);	 Catch:{ all -> 0x002a }
        if (r0 == 0) goto L_0x0028;
    L_0x001b:
        r0 = r4.mStatus;	 Catch:{ all -> 0x002a }
        r2 = 1;
        r3 = 4;
        r0 = r0.compareAndSet(r2, r3);	 Catch:{ all -> 0x002a }
        if (r0 == 0) goto L_0x0028;
    L_0x0025:
        r4.callbackBatchEnd();	 Catch:{ all -> 0x002a }
    L_0x0028:
        monitor-exit(r1);	 Catch:{ all -> 0x002a }
        goto L_0x000a;
    L_0x002a:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x002a }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.cloud.download.BatchDownloadManager.onItemDownloadCancel(android.net.Uri, com.miui.gallery.sdk.download.DownloadType):void");
    }

    private void updateFailReason(DownloadFailReason reason) {
        if (reason != null) {
            setError(reason.getCode());
        }
    }

    private void statStartDownload(int num) {
        if (Preference.sIsFirstSynced() && Sync.getAutoDownloadTime() < 0) {
            Log.d("BatchDownloadManager", "stat start download");
            Sync.setAutoDownloadTime(System.currentTimeMillis());
            HashMap<String, String> params = new HashMap();
            params.put("stage", GallerySamplingStatHelper.formatValueStage((float) num, COUNT_STAGE));
            GallerySamplingStatHelper.recordCountEvent("Sync", "sync_auto_download_weight", params);
        }
    }

    private void statEndDownload() {
        if (Preference.sIsFirstSynced() && !Sync.isEverAutoDownloaded()) {
            Log.d("BatchDownloadManager", "stat end download");
            Sync.setEverAutoDownloaded();
            HashMap<String, String> params = new HashMap();
            params.put("timely", String.valueOf((int) ((((System.currentTimeMillis() - Sync.getAutoDownloadTime()) / 1000) / 60) / 60)));
            GallerySamplingStatHelper.recordCountEvent("Sync", String.format("sync_auto_download_%s", new Object[]{Sync.getDownloadType()}), params);
        }
    }
}
