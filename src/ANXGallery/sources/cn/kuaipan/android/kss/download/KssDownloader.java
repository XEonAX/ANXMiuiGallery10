package cn.kuaipan.android.kss.download;

import cn.kuaipan.android.exception.ErrorHelper;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.http.KscHttpResponse;
import cn.kuaipan.android.http.KscHttpTransmitter;
import cn.kuaipan.android.kss.KssDef;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;

public class KssDownloader implements KssDef {
    private final KscHttpTransmitter mTransmitter;

    public KssDownloader(KscHttpTransmitter transmitter) {
        this.mTransmitter = transmitter;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0046 A:{SYNTHETIC, Splitter: B:15:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0046 A:{SYNTHETIC, Splitter: B:15:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0046 A:{SYNTHETIC, Splitter: B:15:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    public void download(java.io.File r23, boolean r24, cn.kuaipan.android.http.IKscTransferListener r25, cn.kuaipan.android.kss.IKssDownloadRequestResult r26) throws cn.kuaipan.android.exception.KscException, java.lang.InterruptedException {
        /*
        r22 = this;
        r2 = 0;
        r4 = 0;
        r7 = 0;
        r9 = 0;
        r16 = r26.getTotalSize();	 Catch:{ all -> 0x0043 }
        r15 = r23.exists();	 Catch:{ all -> 0x0043 }
        if (r15 == 0) goto L_0x0051;
    L_0x000e:
        if (r24 == 0) goto L_0x001e;
    L_0x0010:
        r15 = r23.isDirectory();	 Catch:{ all -> 0x0043 }
        if (r15 != 0) goto L_0x001e;
    L_0x0016:
        r20 = r23.length();	 Catch:{ all -> 0x0043 }
        r15 = (r20 > r16 ? 1 : (r20 == r16 ? 0 : -1));
        if (r15 <= 0) goto L_0x0058;
    L_0x001e:
        r15 = cn.kuaipan.android.utils.FileUtils.deletes(r23);	 Catch:{ all -> 0x0043 }
        if (r15 != 0) goto L_0x0058;
    L_0x0024:
        r15 = new java.lang.SecurityException;	 Catch:{ all -> 0x0043 }
        r20 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0043 }
        r20.<init>();	 Catch:{ all -> 0x0043 }
        r21 = "Failed delete target file. Can't download to dest path: ";
        r20 = r20.append(r21);	 Catch:{ all -> 0x0043 }
        r0 = r20;
        r1 = r23;
        r20 = r0.append(r1);	 Catch:{ all -> 0x0043 }
        r20 = r20.toString();	 Catch:{ all -> 0x0043 }
        r0 = r20;
        r15.<init>(r0);	 Catch:{ all -> 0x0043 }
        throw r15;	 Catch:{ all -> 0x0043 }
    L_0x0043:
        r15 = move-exception;
    L_0x0044:
        if (r2 == 0) goto L_0x0049;
    L_0x0046:
        r2.close();	 Catch:{ Throwable -> 0x0149 }
    L_0x0049:
        if (r7 == 0) goto L_0x0050;
    L_0x004b:
        if (r4 == 0) goto L_0x0134;
    L_0x004d:
        r7.delete();
    L_0x0050:
        throw r15;
    L_0x0051:
        r15 = r23.getParentFile();	 Catch:{ all -> 0x0043 }
        r15.mkdirs();	 Catch:{ all -> 0x0043 }
    L_0x0058:
        r10 = new cn.kuaipan.android.kss.download.LoadMap;	 Catch:{ all -> 0x0043 }
        r0 = r26;
        r1 = r25;
        r10.<init>(r0, r1);	 Catch:{ all -> 0x0043 }
        r11 = 0;
        r6 = cn.kuaipan.android.kss.download.KInfo.getInfoFile(r23);	 Catch:{ all -> 0x014c }
        r8 = new cn.kuaipan.android.kss.download.KInfo;	 Catch:{ all -> 0x014c }
        r8.<init>(r6);	 Catch:{ all -> 0x014c }
        r15 = r6.exists();	 Catch:{ all -> 0x00db }
        if (r15 == 0) goto L_0x0088;
    L_0x0071:
        r8.load();	 Catch:{ all -> 0x00db }
        r15 = r8.getHash();	 Catch:{ all -> 0x00db }
        r20 = r26.getHash();	 Catch:{ all -> 0x00db }
        r0 = r20;
        r15 = android.text.TextUtils.equals(r15, r0);	 Catch:{ all -> 0x00db }
        if (r15 == 0) goto L_0x0088;
    L_0x0084:
        r11 = r8.loadToMap(r10);	 Catch:{ all -> 0x00db }
    L_0x0088:
        if (r11 != 0) goto L_0x0099;
    L_0x008a:
        r15 = r23.exists();	 Catch:{ all -> 0x00db }
        if (r15 == 0) goto L_0x0099;
    L_0x0090:
        r20 = r23.length();	 Catch:{ all -> 0x00db }
        r0 = r20;
        r10.initSize(r0);	 Catch:{ all -> 0x00db }
    L_0x0099:
        r3 = new cn.kuaipan.android.kss.download.KssAccessor;	 Catch:{ IOException -> 0x00d3 }
        r0 = r23;
        r3.<init>(r0);	 Catch:{ IOException -> 0x00d3 }
        r15 = 0;
        r10.verify(r3, r15);	 Catch:{ IOException -> 0x0150 }
        r18 = r26.getTotalSize();	 Catch:{ IOException -> 0x0150 }
        r20 = r23.length();	 Catch:{ IOException -> 0x0150 }
        r15 = (r20 > r18 ? 1 : (r20 == r18 ? 0 : -1));
        if (r15 == 0) goto L_0x00b5;
    L_0x00b0:
        r0 = r18;
        r3.inflate(r0);	 Catch:{ IOException -> 0x0150 }
    L_0x00b5:
        r14 = new java.util.concurrent.atomic.AtomicInteger;	 Catch:{ all -> 0x00cd }
        r15 = 3;
        r14.<init>(r15);	 Catch:{ all -> 0x00cd }
    L_0x00bb:
        r4 = r10.isCompleted();	 Catch:{ all -> 0x00cd }
        if (r4 != 0) goto L_0x0108;
    L_0x00c1:
        r15 = java.lang.Thread.interrupted();	 Catch:{ all -> 0x00cd }
        if (r15 == 0) goto L_0x00e0;
    L_0x00c7:
        r15 = new java.lang.InterruptedException;	 Catch:{ all -> 0x00cd }
        r15.<init>();	 Catch:{ all -> 0x00cd }
        throw r15;	 Catch:{ all -> 0x00cd }
    L_0x00cd:
        r15 = move-exception;
        r9 = r10;
        r7 = r8;
        r2 = r3;
        goto L_0x0044;
    L_0x00d3:
        r5 = move-exception;
    L_0x00d4:
        r15 = "Local IO error, when prepare kss download.";
        r15 = cn.kuaipan.android.exception.KscException.newException(r5, r15);	 Catch:{ all -> 0x00db }
        throw r15;	 Catch:{ all -> 0x00db }
    L_0x00db:
        r15 = move-exception;
        r9 = r10;
        r7 = r8;
        goto L_0x0044;
    L_0x00e0:
        r0 = r22;
        r1 = r26;
        r0.download(r1, r3, r10, r14);	 Catch:{ InvalidKeyException -> 0x00ec, KscException -> 0x00f4 }
        r15 = 3;
        r14.set(r15);	 Catch:{ InvalidKeyException -> 0x00ec, KscException -> 0x00f4 }
        goto L_0x00bb;
    L_0x00ec:
        r5 = move-exception;
        r15 = "Failed when download kss block.";
        r15 = cn.kuaipan.android.exception.KscException.newException(r5, r15);	 Catch:{ all -> 0x00cd }
        throw r15;	 Catch:{ all -> 0x00cd }
    L_0x00f4:
        r5 = move-exception;
        r15 = cn.kuaipan.android.exception.ErrorHelper.isNetworkException(r5);	 Catch:{ all -> 0x00cd }
        if (r15 == 0) goto L_0x0107;
    L_0x00fb:
        r15 = r14.decrementAndGet();	 Catch:{ all -> 0x00cd }
        if (r15 < 0) goto L_0x0107;
    L_0x0101:
        r20 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        java.lang.Thread.sleep(r20);	 Catch:{ all -> 0x00cd }
        goto L_0x00bb;
    L_0x0107:
        throw r5;	 Catch:{ all -> 0x00cd }
    L_0x0108:
        r12 = r26.getModifyTime();	 Catch:{ all -> 0x00cd }
        r20 = 0;
        r15 = (r12 > r20 ? 1 : (r12 == r20 ? 0 : -1));
        if (r15 <= 0) goto L_0x0117;
    L_0x0112:
        r0 = r23;
        r0.setLastModified(r12);	 Catch:{ all -> 0x00cd }
    L_0x0117:
        if (r3 == 0) goto L_0x011c;
    L_0x0119:
        r3.close();	 Catch:{ Throwable -> 0x0147 }
    L_0x011c:
        if (r8 == 0) goto L_0x0123;
    L_0x011e:
        if (r4 == 0) goto L_0x0124;
    L_0x0120:
        r8.delete();
    L_0x0123:
        return;
    L_0x0124:
        if (r10 == 0) goto L_0x0123;
    L_0x0126:
        r15 = r26.getHash();
        r8.setHash(r15);
        r8.setLoadMap(r10);
        r8.save();
        goto L_0x0123;
    L_0x0134:
        if (r9 == 0) goto L_0x0050;
    L_0x0136:
        r20 = r26.getHash();
        r0 = r20;
        r7.setHash(r0);
        r7.setLoadMap(r9);
        r7.save();
        goto L_0x0050;
    L_0x0147:
        r15 = move-exception;
        goto L_0x011c;
    L_0x0149:
        r20 = move-exception;
        goto L_0x0049;
    L_0x014c:
        r15 = move-exception;
        r9 = r10;
        goto L_0x0044;
    L_0x0150:
        r5 = move-exception;
        r2 = r3;
        goto L_0x00d4;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.kuaipan.android.kss.download.KssDownloader.download(java.io.File, boolean, cn.kuaipan.android.http.IKscTransferListener, cn.kuaipan.android.kss.IKssDownloadRequestResult):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:60:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0137 A:{SYNTHETIC} */
    private void download(cn.kuaipan.android.kss.IKssDownloadRequestResult r34, cn.kuaipan.android.kss.download.KssAccessor r35, cn.kuaipan.android.kss.download.LoadMap r36, java.util.concurrent.atomic.AtomicInteger r37) throws java.lang.InterruptedException, java.security.InvalidKeyException, cn.kuaipan.android.exception.KscException {
        /*
        r33 = this;
        r23 = r36.obtainRecorder();
    L_0x0004:
        if (r23 == 0) goto L_0x017b;
    L_0x0006:
        r6 = java.lang.Thread.interrupted();
        if (r6 == 0) goto L_0x0012;
    L_0x000c:
        r6 = new java.lang.InterruptedException;
        r6.<init>();
        throw r6;
    L_0x0012:
        r6 = r23.getSpace();
        r28 = r6.getStart();
        r0 = r34;
        r1 = r28;
        r27 = r0.getBlockUrls(r1);
        r0 = r36;
        r1 = r28;
        r30 = r0.getBlockStart(r1);
        r20 = r28 - r30;
        if (r27 == 0) goto L_0x0033;
    L_0x002e:
        r0 = r27;
        r6 = r0.length;
        if (r6 > 0) goto L_0x003d;
    L_0x0033:
        r6 = new java.lang.IllegalArgumentException;
        r30 = "No available urls to download.";
        r0 = r30;
        r6.<init>(r0);
        throw r6;
    L_0x003d:
        r22 = new cn.kuaipan.android.kss.RC4Encoder;
        r6 = r34.getSecureKey();
        r0 = r22;
        r0.<init>(r6);
        r17 = 0;
    L_0x004a:
        r0 = r27;
        r6 = r0.length;
        r0 = r17;
        if (r0 >= r6) goto L_0x011c;
    L_0x0051:
        r6 = java.lang.Thread.interrupted();
        if (r6 == 0) goto L_0x005d;
    L_0x0057:
        r6 = new java.lang.InterruptedException;
        r6.<init>();
        throw r6;
    L_0x005d:
        r24 = 0;
        r26 = 0;
        r14 = 0;
        r22.init();	 Catch:{ Exception -> 0x012a }
        r7 = r27[r17];	 Catch:{ Exception -> 0x012a }
        r25 = new cn.kuaipan.android.http.KscHttpRequest;	 Catch:{ Exception -> 0x012a }
        r6 = cn.kuaipan.android.http.KscHttpRequest.HttpMethod.GET;	 Catch:{ Exception -> 0x012a }
        r30 = 0;
        r0 = r25;
        r1 = r22;
        r2 = r30;
        r0.<init>(r6, r7, r1, r2);	 Catch:{ Exception -> 0x012a }
        r30 = 0;
        r6 = (r20 > r30 ? 1 : (r20 == r30 ? 0 : -1));
        if (r6 <= 0) goto L_0x00a6;
    L_0x007c:
        r6 = r25.getRequest();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r30 = "Range";
        r31 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r31.<init>();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r32 = "bytes=";
        r31 = r31.append(r32);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r0 = r31;
        r1 = r20;
        r31 = r0.append(r1);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r32 = "-";
        r31 = r31.append(r32);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r31 = r31.toString();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r0 = r30;
        r1 = r31;
        r6.addHeader(r0, r1);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
    L_0x00a6:
        r18 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r0 = r33;
        r6 = r0.mTransmitter;	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r30 = 4;
        r0 = r25;
        r1 = r30;
        r26 = r6.execute(r0, r1);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r30 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r8 = r30 - r18;
        r10 = 0;
        r6 = r26.getResponse();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        if (r6 == 0) goto L_0x00d4;
    L_0x00c6:
        r6 = r26.getResponse();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r16 = r6.getEntity();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        if (r16 == 0) goto L_0x00d4;
    L_0x00d0:
        r10 = r16.getContentLength();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
    L_0x00d4:
        r12 = r26.getStatusCode();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r13 = "";
        r6 = r26.getError();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        if (r6 == 0) goto L_0x00ec;
    L_0x00e0:
        r6 = r26.getError();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r6 = r6.getClass();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r13 = r6.getSimpleName();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
    L_0x00ec:
        r6 = com.xiaomi.micloudsdk.stat.MiCloudStatManager.getInstance();	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r6.addHttpEvent(r7, r8, r10, r12, r13);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        cn.kuaipan.android.exception.ErrorHelper.throwError(r26);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r0 = r33;
        r1 = r26;
        r2 = r35;
        r3 = r23;
        r4 = r37;
        r0.save(r1, r2, r3, r4);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r6 = 1;
        r0 = r36;
        r1 = r35;
        r0.verify(r1, r6);	 Catch:{ Exception -> 0x0180, all -> 0x017c }
        r14 = 1;
        if (r14 != 0) goto L_0x0122;
    L_0x010e:
        if (r25 == 0) goto L_0x0122;
    L_0x0110:
        r6 = r25.getRequest();
        r6.abort();
    L_0x0117:
        if (r23 == 0) goto L_0x011c;
    L_0x0119:
        r23.recycle();
    L_0x011c:
        r23 = r36.obtainRecorder();
        goto L_0x0004;
    L_0x0122:
        r0 = r33;
        r1 = r26;
        r0.releaseResponse(r1);
        goto L_0x0117;
    L_0x012a:
        r15 = move-exception;
    L_0x012b:
        cn.kuaipan.android.exception.ErrorHelper.handleInterruptException(r15);	 Catch:{ all -> 0x0140 }
        r0 = r27;
        r6 = r0.length;	 Catch:{ all -> 0x0140 }
        r6 = r6 + -1;
        r0 = r17;
        if (r0 < r6) goto L_0x0157;
    L_0x0137:
        if (r26 != 0) goto L_0x0152;
    L_0x0139:
        r6 = "No response.";
    L_0x013b:
        r6 = cn.kuaipan.android.exception.KscException.newException(r15, r6);	 Catch:{ all -> 0x0140 }
        throw r6;	 Catch:{ all -> 0x0140 }
    L_0x0140:
        r6 = move-exception;
    L_0x0141:
        if (r14 != 0) goto L_0x0173;
    L_0x0143:
        if (r24 == 0) goto L_0x0173;
    L_0x0145:
        r30 = r24.getRequest();
        r30.abort();
    L_0x014c:
        if (r23 == 0) goto L_0x0151;
    L_0x014e:
        r23.recycle();
    L_0x0151:
        throw r6;
    L_0x0152:
        r6 = r26.dump();	 Catch:{ all -> 0x0140 }
        goto L_0x013b;
    L_0x0157:
        if (r14 != 0) goto L_0x016b;
    L_0x0159:
        if (r24 == 0) goto L_0x016b;
    L_0x015b:
        r6 = r24.getRequest();
        r6.abort();
    L_0x0162:
        if (r23 == 0) goto L_0x0167;
    L_0x0164:
        r23.recycle();
    L_0x0167:
        r17 = r17 + 1;
        goto L_0x004a;
    L_0x016b:
        r0 = r33;
        r1 = r26;
        r0.releaseResponse(r1);
        goto L_0x0162;
    L_0x0173:
        r0 = r33;
        r1 = r26;
        r0.releaseResponse(r1);
        goto L_0x014c;
    L_0x017b:
        return;
    L_0x017c:
        r6 = move-exception;
        r24 = r25;
        goto L_0x0141;
    L_0x0180:
        r15 = move-exception;
        r24 = r25;
        goto L_0x012b;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.kuaipan.android.kss.download.KssDownloader.download(cn.kuaipan.android.kss.IKssDownloadRequestResult, cn.kuaipan.android.kss.download.KssAccessor, cn.kuaipan.android.kss.download.LoadMap, java.util.concurrent.atomic.AtomicInteger):void");
    }

    private void save(KscHttpResponse response, KssAccessor accessor, LoadRecorder recorder, AtomicInteger retry) throws IllegalStateException, IOException {
        boolean received = false;
        try {
            InputStream in = response.getContent();
            if (in == null) {
                throw new KscRuntimeException(500008, "Not meet exception, but no response.\n" + response.dump());
            }
            byte[] buf = new byte[8192];
            while (true) {
                int len = in.read(buf);
                if (len < 0) {
                    break;
                }
                received = true;
                if (len > 0 && accessor.write(buf, 0, len, recorder) < len) {
                    break;
                }
            }
            if (received) {
                retry.set(3);
            }
        } catch (Throwable th) {
            if (null != null) {
                retry.set(3);
            }
        }
    }

    private void releaseResponse(KscHttpResponse response) throws InterruptedException {
        if (response != null) {
            try {
                response.release();
            } catch (Throwable t) {
                if (ErrorHelper.isInterrupted(t) == null) {
                }
            }
        }
    }
}
