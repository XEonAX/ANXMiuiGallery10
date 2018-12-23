package com.xiaomi.push.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.xiaomi.channel.commonutils.file.FileUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class NotificationIconHelper {
    private static long currentPicFileSize;

    public static class GetDataResult {
        byte[] data;
        int downloadSize;

        public GetDataResult(byte[] data, int downloadSize) {
            this.data = data;
            this.downloadSize = downloadSize;
        }
    }

    public static class GetIconResult {
        public Bitmap bitmap;
        public long downloadSize;

        public GetIconResult(Bitmap bitmap, long downloadSize) {
            this.bitmap = bitmap;
            this.downloadSize = downloadSize;
        }
    }

    public static GetIconResult getIconFromUrl(Context context, String urlStr, boolean isSizeLimited) {
        Throwable e;
        Throwable th;
        InputStream bitmapStream = null;
        GetIconResult result = new GetIconResult(null, 0);
        Bitmap pic = getBitmapFromFile(context, urlStr);
        if (pic != null) {
            result.bitmap = pic;
        } else {
            try {
                GetDataResult getDataResult = getDataFromUrl(urlStr, isSizeLimited);
                if (getDataResult != null) {
                    result.downloadSize = (long) getDataResult.downloadSize;
                    byte[] data = getDataResult.data;
                    if (data != null) {
                        if (isSizeLimited) {
                            InputStream bitmapStream2 = new ByteArrayInputStream(data);
                            try {
                                int sampleSize = getSampleSize(context, bitmapStream2);
                                Options options = new Options();
                                options.inSampleSize = sampleSize;
                                result.bitmap = BitmapFactory.decodeByteArray(data, 0, data.length, options);
                                bitmapStream = bitmapStream2;
                            } catch (Exception e2) {
                                e = e2;
                                bitmapStream = bitmapStream2;
                                try {
                                    MyLog.e(e);
                                    IOUtils.closeQuietly(bitmapStream);
                                    return result;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                bitmapStream = bitmapStream2;
                                IOUtils.closeQuietly(bitmapStream);
                                throw th;
                            }
                        }
                        result.bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
                    }
                    savePic2File(context, getDataResult.data, urlStr);
                }
            } catch (Exception e3) {
                e = e3;
            }
            IOUtils.closeQuietly(bitmapStream);
        }
        return result;
    }

    /* JADX WARNING: Missing block: B:37:0x00d4, code:
            if (r2 == null) goto L_0x00d9;
     */
    /* JADX WARNING: Missing block: B:38:0x00d6, code:
            r2.disconnect();
     */
    /* JADX WARNING: Missing block: B:48:0x00f4, code:
            if (r2 == null) goto L_0x00d9;
     */
    /* JADX WARNING: Missing block: B:62:?, code:
            return null;
     */
    private static com.xiaomi.push.service.NotificationIconHelper.GetDataResult getDataFromUrl(java.lang.String r15, boolean r16) {
        /*
        r7 = 0;
        r2 = 0;
        r11 = new java.net.URL;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r11.<init>(r15);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = r11.openConnection();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r0 = r12;
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r2 = r0;
        r12 = 8000; // 0x1f40 float:1.121E-41 double:3.9525E-320;
        r2.setConnectTimeout(r12);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = 20000; // 0x4e20 float:2.8026E-41 double:9.8813E-320;
        r2.setReadTimeout(r12);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r2.connect();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r3 = r2.getContentLength();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        if (r16 == 0) goto L_0x0051;
    L_0x0022:
        r12 = 102400; // 0x19000 float:1.43493E-40 double:5.05923E-319;
        if (r3 <= r12) goto L_0x0051;
    L_0x0027:
        r12 = new java.lang.StringBuilder;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12.<init>();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r13 = "Bitmap size is too big, max size is 102400  contentLen size is ";
        r12 = r12.append(r13);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = r12.append(r3);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r13 = " from url ";
        r12 = r12.append(r13);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = r12.append(r15);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = r12.toString();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r12);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = 0;
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x0050;
    L_0x004d:
        r2.disconnect();
    L_0x0050:
        return r12;
    L_0x0051:
        r9 = r2.getResponseCode();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r9 == r12) goto L_0x007c;
    L_0x0059:
        r12 = new java.lang.StringBuilder;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12.<init>();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r13 = "Invalid Http Response Code ";
        r12 = r12.append(r13);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = r12.append(r9);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r13 = " received";
        r12 = r12.append(r13);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = r12.toString();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r12);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = 0;
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x0050;
    L_0x007b:
        goto L_0x004d;
    L_0x007c:
        r7 = r2.getInputStream();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r10 = new java.io.ByteArrayOutputStream;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r10.<init>();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        if (r16 == 0) goto L_0x00b0;
    L_0x0087:
        r1 = 102400; // 0x19000 float:1.43493E-40 double:5.05923E-319;
    L_0x008a:
        r12 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r5 = new byte[r12];	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
    L_0x008e:
        if (r1 <= 0) goto L_0x009a;
    L_0x0090:
        r12 = 0;
        r13 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r8 = r7.read(r5, r12, r13);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = -1;
        if (r8 != r12) goto L_0x00b4;
    L_0x009a:
        if (r1 > 0) goto L_0x00dc;
    L_0x009c:
        r12 = "length 102400 exhausted.";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r12);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = new com.xiaomi.push.service.NotificationIconHelper$GetDataResult;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r13 = 0;
        r14 = 102400; // 0x19000 float:1.43493E-40 double:5.05923E-319;
        r12.<init>(r13, r14);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x0050;
    L_0x00af:
        goto L_0x004d;
    L_0x00b0:
        r1 = 2048000; // 0x1f4000 float:2.869859E-39 double:1.0118464E-317;
        goto L_0x008a;
    L_0x00b4:
        r1 = r1 - r8;
        r12 = 0;
        r10.write(r5, r12, r8);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        goto L_0x008e;
    L_0x00ba:
        r6 = move-exception;
        r12 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00f7 }
        r12.<init>();	 Catch:{ all -> 0x00f7 }
        r13 = "Connect timeout to ";
        r12 = r12.append(r13);	 Catch:{ all -> 0x00f7 }
        r12 = r12.append(r15);	 Catch:{ all -> 0x00f7 }
        r12 = r12.toString();	 Catch:{ all -> 0x00f7 }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r12);	 Catch:{ all -> 0x00f7 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x00d9;
    L_0x00d6:
        r2.disconnect();
    L_0x00d9:
        r12 = 0;
        goto L_0x0050;
    L_0x00dc:
        r4 = r10.toByteArray();	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12 = new com.xiaomi.push.service.NotificationIconHelper$GetDataResult;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r13 = r4.length;	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        r12.<init>(r4, r13);	 Catch:{ SocketTimeoutException -> 0x00ba, IOException -> 0x00ed }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x0050;
    L_0x00eb:
        goto L_0x004d;
    L_0x00ed:
        r6 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r6);	 Catch:{ all -> 0x00f7 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x00d9;
    L_0x00f6:
        goto L_0x00d6;
    L_0x00f7:
        r12 = move-exception;
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r2 == 0) goto L_0x0100;
    L_0x00fd:
        r2.disconnect();
    L_0x0100:
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.NotificationIconHelper.getDataFromUrl(java.lang.String, boolean):com.xiaomi.push.service.NotificationIconHelper$GetDataResult");
    }

    public static Bitmap getIconFromUri(Context context, String uriStr) {
        Bitmap bitmap = null;
        Uri uri = Uri.parse(uriStr);
        InputStream is = null;
        InputStream isForBitmapSize = null;
        try {
            isForBitmapSize = context.getContentResolver().openInputStream(uri);
            int sampleSize = getSampleSize(context, isForBitmapSize);
            is = context.getContentResolver().openInputStream(uri);
            Options options = new Options();
            options.inSampleSize = sampleSize;
            bitmap = BitmapFactory.decodeStream(is, null, options);
            IOUtils.closeQuietly(is);
        } catch (Throwable e) {
            MyLog.e(e);
            IOUtils.closeQuietly(is);
        } catch (Throwable th) {
            IOUtils.closeQuietly(is);
            IOUtils.closeQuietly(isForBitmapSize);
        }
        IOUtils.closeQuietly(isForBitmapSize);
        return bitmap;
    }

    private static int getSampleSize(Context context, InputStream inputStream) {
        Options opt = new Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, opt);
        if (opt.outWidth == -1 || opt.outHeight == -1) {
            MyLog.w("decode dimension failed for bitmap.");
            return 1;
        }
        int targetWidth = Math.round((((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f) * 48.0f);
        int targetHeight = targetWidth;
        if (opt.outWidth <= targetWidth || opt.outHeight <= targetHeight) {
            return 1;
        }
        return Math.min(opt.outWidth / targetWidth, opt.outHeight / targetHeight);
    }

    private static Bitmap getBitmapFromFile(Context context, String picUrl) {
        Throwable e;
        Throwable th;
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon", XMStringUtils.getMd5Digest(picUrl));
        if (!file.exists()) {
            return null;
        }
        Bitmap result = null;
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(file);
            try {
                result = BitmapFactory.decodeStream(fis2);
                file.setLastModified(System.currentTimeMillis());
                IOUtils.closeQuietly(fis2);
                fis = fis2;
                return result;
            } catch (Exception e2) {
                e = e2;
                fis = fis2;
                try {
                    MyLog.e(e);
                    IOUtils.closeQuietly(fis);
                    return result;
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(fis);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fis = fis2;
                IOUtils.closeQuietly(fis);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            MyLog.e(e);
            IOUtils.closeQuietly(fis);
            return result;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    private static void savePic2File(android.content.Context r12, byte[] r13, java.lang.String r14) {
        /*
        if (r13 != 0) goto L_0x0008;
    L_0x0002:
        r7 = "cannot save small icon cause bitmap is null";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r7);
    L_0x0007:
        return;
    L_0x0008:
        cleanCachedPic(r12);
        r2 = new java.io.File;
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = r12.getCacheDir();
        r8 = r8.getPath();
        r7 = r7.append(r8);
        r8 = java.io.File.separator;
        r7 = r7.append(r8);
        r8 = "mipush_icon";
        r7 = r7.append(r8);
        r7 = r7.toString();
        r2.<init>(r7);
        r7 = r2.exists();
        if (r7 != 0) goto L_0x003a;
    L_0x0037:
        r2.mkdirs();
    L_0x003a:
        r0 = 0;
        r5 = 0;
        r4 = new java.io.File;
        r7 = com.xiaomi.channel.commonutils.string.XMStringUtils.getMd5Digest(r14);
        r4.<init>(r2, r7);
        r7 = r4.exists();	 Catch:{ Exception -> 0x00a1 }
        if (r7 != 0) goto L_0x004e;
    L_0x004b:
        r4.createNewFile();	 Catch:{ Exception -> 0x00a1 }
    L_0x004e:
        r6 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x00a1 }
        r6.<init>(r4);	 Catch:{ Exception -> 0x00a1 }
        r1 = new java.io.BufferedOutputStream;	 Catch:{ Exception -> 0x00bb, all -> 0x00b4 }
        r1.<init>(r6);	 Catch:{ Exception -> 0x00bb, all -> 0x00b4 }
        r1.write(r13);	 Catch:{ Exception -> 0x00be, all -> 0x00b7 }
        r1.flush();	 Catch:{ Exception -> 0x00be, all -> 0x00b7 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r1);
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r6);
        r5 = r6;
        r0 = r1;
    L_0x0066:
        r8 = currentPicFileSize;
        r10 = 0;
        r7 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r7 != 0) goto L_0x0007;
    L_0x006e:
        r7 = new java.io.File;
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = r12.getCacheDir();
        r9 = r9.getPath();
        r8 = r8.append(r9);
        r9 = java.io.File.separator;
        r8 = r8.append(r9);
        r9 = "mipush_icon";
        r8 = r8.append(r9);
        r8 = r8.toString();
        r7.<init>(r8);
        r8 = com.xiaomi.channel.commonutils.file.FileUtils.getFolderSize(r7);
        r10 = r4.length();
        r8 = r8 + r10;
        currentPicFileSize = r8;
        goto L_0x0007;
    L_0x00a1:
        r3 = move-exception;
    L_0x00a2:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r3);	 Catch:{ all -> 0x00ac }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r5);
        goto L_0x0066;
    L_0x00ac:
        r7 = move-exception;
    L_0x00ad:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r5);
        throw r7;
    L_0x00b4:
        r7 = move-exception;
        r5 = r6;
        goto L_0x00ad;
    L_0x00b7:
        r7 = move-exception;
        r5 = r6;
        r0 = r1;
        goto L_0x00ad;
    L_0x00bb:
        r3 = move-exception;
        r5 = r6;
        goto L_0x00a2;
    L_0x00be:
        r3 = move-exception;
        r5 = r6;
        r0 = r1;
        goto L_0x00a2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.NotificationIconHelper.savePic2File(android.content.Context, byte[], java.lang.String):void");
    }

    private static void cleanCachedPic(Context context) {
        File dir = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (dir.exists()) {
            if (currentPicFileSize == 0) {
                currentPicFileSize = FileUtils.getFolderSize(dir);
            }
            if (currentPicFileSize > 15728640) {
                try {
                    File[] fileList = dir.listFiles();
                    int i = 0;
                    while (i < fileList.length) {
                        if (!fileList[i].isDirectory() && Math.abs(System.currentTimeMillis() - fileList[i].lastModified()) > 1209600) {
                            fileList[i].delete();
                        }
                        i++;
                    }
                } catch (Throwable e) {
                    MyLog.e(e);
                }
                currentPicFileSize = 0;
            }
        }
    }
}
