package cn.kuaipan.android.kss.upload;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.exception.ErrorHelper;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.exception.ServerException;
import cn.kuaipan.android.http.DecoderInputStream;
import cn.kuaipan.android.http.IKscTransferListener;
import cn.kuaipan.android.http.KscHttpRequest;
import cn.kuaipan.android.http.KscHttpRequest.HttpMethod;
import cn.kuaipan.android.http.KscHttpResponse;
import cn.kuaipan.android.http.KscHttpTransmitter;
import cn.kuaipan.android.kss.FileTranceListener;
import cn.kuaipan.android.kss.IKssUploadRequestResult;
import cn.kuaipan.android.kss.IKssUploadRequestResult.Block;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.kss.RC4Encoder;
import cn.kuaipan.android.kss.upload.UploadFileInfo.BlockInfo;
import cn.kuaipan.android.utils.ApiDataHelper;
import cn.kuaipan.android.utils.Encode;
import cn.kuaipan.android.utils.IObtainable;
import cn.kuaipan.android.utils.RandomFileInputStream;
import com.nexstreaming.nexeditorsdk.nexEngine;
import com.xiaomi.micloudsdk.stat.MiCloudStatManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.CRC32;
import org.apache.http.HttpEntity;

public class KssUploader implements KssDef {
    public static volatile boolean sBreakForUT;
    private final CRC32 CRC32 = new CRC32();
    private final byte[] CRC_BUF = new byte[8192];
    private long mChunkSize = 65536;
    private final UploadTaskStore mTaskStore;
    private final KscHttpTransmitter mTransmitter;

    public KssUploader(KscHttpTransmitter transmitter, UploadTaskStore taskStore) {
        this.mTaskStore = taskStore;
        this.mTransmitter = transmitter;
    }

    public void upload(File localFile, IKscTransferListener listener, int taskHash, KssUploadInfo uploadInfo) throws KscException, InterruptedException {
        FileTranceListener sendListener = null;
        if (listener != null) {
            sendListener = new FileTranceListener(listener, true);
            listener.setSendTotal(localFile.length());
        }
        int blockIndex = 0;
        while (!Thread.interrupted()) {
            Log.d("KssUploader", "upload blockIndex: " + blockIndex);
            uploadBlock(taskHash, localFile, sendListener, uploadInfo, !false, blockIndex);
            blockIndex++;
            if (uploadInfo.isCompleted()) {
                return;
            }
        }
        throw new InterruptedException();
    }

    private void uploadBlock(int taskHash, File file, FileTranceListener listener, KssUploadInfo info, boolean needVerify, int blockIndex) throws KscException, InterruptedException {
        if (info == null) {
            throw new IllegalArgumentException("The KssUploadInfo can not be empty.");
        }
        verifyBlock(file, info.getFileInfo(), blockIndex);
        Block block = info.getRequestResult().getBlock(blockIndex);
        if (block == null) {
            throw new KscRuntimeException(500008, "Block should not be null");
        } else if (!block.isComplete()) {
            uploadBlock(taskHash, file, listener, info, blockIndex);
        } else if (listener != null) {
            listener.setSendPos(Math.min(((long) (blockIndex + 1)) * 4194304, file.length()));
        }
    }

    /* JADX WARNING: Missing block: B:57:?, code:
            r12.close();
     */
    /* JADX WARNING: Missing block: B:85:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:86:?, code:
            return;
     */
    private void uploadBlock(int r30, java.io.File r31, cn.kuaipan.android.kss.FileTranceListener r32, cn.kuaipan.android.kss.upload.KssUploadInfo r33, int r34) throws cn.kuaipan.android.exception.KscException, java.lang.InterruptedException {
        /*
        r29 = this;
        r27 = r29.getUploadPos(r30);
        r10 = 0;
        r22 = 0;
        if (r27 == 0) goto L_0x0019;
    L_0x0009:
        r0 = r27;
        r10 = r0.upload_id;
        r6 = android.text.TextUtils.isEmpty(r10);
        if (r6 != 0) goto L_0x0019;
    L_0x0013:
        r0 = r27;
        r0 = r0.pos;
        r22 = r0;
    L_0x0019:
        r6 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        r6 = r22 % r6;
        r22 = r22 - r6;
        r6 = r34 + 1;
        r6 = (long) r6;
        r8 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r6 = r6 * r8;
        r6 = (r22 > r6 ? 1 : (r22 == r6 ? 0 : -1));
        if (r6 >= 0) goto L_0x0036;
    L_0x002b:
        r0 = r34;
        r6 = (long) r0;
        r8 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r6 = r6 * r8;
        r6 = (r22 > r6 ? 1 : (r22 == r6 ? 0 : -1));
        if (r6 >= 0) goto L_0x003e;
    L_0x0036:
        r0 = r34;
        r6 = (long) r0;
        r8 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r22 = r6 * r8;
    L_0x003e:
        r6 = r31.length();
        r8 = r34 + 1;
        r8 = (long) r8;
        r16 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r8 = r8 * r16;
        r18 = java.lang.Math.min(r6, r8);
        r24 = r33.getRequestResult();
        r6 = "KssUploader";
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "RC4 key:";
        r7 = r7.append(r8);
        r8 = r24.getSecureKey();
        r8 = java.util.Arrays.toString(r8);
        r7 = r7.append(r8);
        r7 = r7.toString();
        android.util.Log.d(r6, r7);
        r12 = 0;
        r25 = new java.util.concurrent.atomic.AtomicInteger;	 Catch:{ Throwable -> 0x00c7 }
        r6 = 3;
        r0 = r25;
        r0.<init>(r6);	 Catch:{ Throwable -> 0x00c7 }
        r21 = r12;
    L_0x007d:
        r6 = r25.get();	 Catch:{ Throwable -> 0x01d5, all -> 0x01d0 }
        if (r6 < 0) goto L_0x01da;
    L_0x0083:
        r13 = new cn.kuaipan.android.kss.RC4Encoder;	 Catch:{ Throwable -> 0x01d5, all -> 0x01d0 }
        r6 = r24.getSecureKey();	 Catch:{ Throwable -> 0x01d5, all -> 0x01d0 }
        r13.<init>(r6);	 Catch:{ Throwable -> 0x01d5, all -> 0x01d0 }
        r12 = new cn.kuaipan.android.utils.RandomFileInputStream;	 Catch:{ Throwable -> 0x01d5, all -> 0x01d0 }
        r0 = r31;
        r12.<init>(r0);	 Catch:{ Throwable -> 0x01d5, all -> 0x01d0 }
        r0 = r22;
        r12.moveToPos(r0);	 Catch:{ Throwable -> 0x00c7 }
        if (r32 == 0) goto L_0x00a1;
    L_0x009a:
        r0 = r32;
        r1 = r22;
        r0.setSendPos(r1);	 Catch:{ Throwable -> 0x00c7 }
    L_0x00a1:
        r5 = new cn.kuaipan.android.kss.upload.UploadChunkInfo;	 Catch:{ Throwable -> 0x00c7 }
        r6 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r6 = r22 % r6;
        r8 = r18 - r22;
        r5.<init>(r6, r8, r10);	 Catch:{ Throwable -> 0x00c7 }
    L_0x00ad:
        r6 = r5.next_pos;	 Catch:{ Throwable -> 0x00c7 }
        r6 = (r6 > r18 ? 1 : (r6 == r18 ? 0 : -1));
        if (r6 >= 0) goto L_0x016c;
    L_0x00b3:
        r6 = r5.left_bytes;	 Catch:{ Throwable -> 0x00c7 }
        r8 = 0;
        r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r6 <= 0) goto L_0x016c;
    L_0x00bb:
        r6 = java.lang.Thread.interrupted();	 Catch:{ Throwable -> 0x00c7 }
        if (r6 == 0) goto L_0x00d5;
    L_0x00c1:
        r6 = new java.lang.InterruptedException;	 Catch:{ Throwable -> 0x00c7 }
        r6.<init>();	 Catch:{ Throwable -> 0x00c7 }
        throw r6;	 Catch:{ Throwable -> 0x00c7 }
    L_0x00c7:
        r26 = move-exception;
    L_0x00c8:
        r6 = 0;
        r0 = r26;
        r6 = cn.kuaipan.android.exception.KscException.newException(r0, r6);	 Catch:{ all -> 0x00d0 }
        throw r6;	 Catch:{ all -> 0x00d0 }
    L_0x00d0:
        r6 = move-exception;
    L_0x00d1:
        r12.close();	 Catch:{ Throwable -> 0x01cd }
    L_0x00d4:
        throw r6;
    L_0x00d5:
        if (r32 != 0) goto L_0x0123;
    L_0x00d7:
        r14 = 0;
    L_0x00d8:
        r11 = r29;
        r15 = r33;
        r16 = r34;
        r17 = r5;
        r5 = r11.uploadChunk(r12, r13, r14, r15, r16, r17);	 Catch:{ Throwable -> 0x00c7 }
        if (r5 == 0) goto L_0x0176;
    L_0x00e6:
        r6 = r5.isContinue();	 Catch:{ Throwable -> 0x00c7 }
        if (r6 == 0) goto L_0x012e;
    L_0x00ec:
        r28 = new cn.kuaipan.android.kss.upload.UploadChunkInfoPersist;	 Catch:{ Throwable -> 0x00c7 }
        r28.<init>();	 Catch:{ Throwable -> 0x00c7 }
        r0 = r34;
        r6 = (long) r0;	 Catch:{ Throwable -> 0x00c7 }
        r8 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r6 = r6 * r8;
        r8 = r5.next_pos;	 Catch:{ Throwable -> 0x00c7 }
        r6 = r6 + r8;
        r0 = r28;
        r0.pos = r6;	 Catch:{ Throwable -> 0x00c7 }
        r6 = r5.upload_id;	 Catch:{ Throwable -> 0x00c7 }
        r0 = r28;
        r0.upload_id = r6;	 Catch:{ Throwable -> 0x00c7 }
        r0 = r29;
        r1 = r30;
        r2 = r33;
        r3 = r28;
        r0.updateUploadInfo(r1, r2, r3);	 Catch:{ Throwable -> 0x00c7 }
        r6 = sBreakForUT;	 Catch:{ Throwable -> 0x00c7 }
        if (r6 == 0) goto L_0x00ad;
    L_0x0114:
        r6 = "KssUploader";
        r7 = "break for UT";
        android.util.Log.d(r6, r7);	 Catch:{ Throwable -> 0x00c7 }
        r6 = java.lang.Thread.currentThread();	 Catch:{ Throwable -> 0x00c7 }
        r6.interrupt();	 Catch:{ Throwable -> 0x00c7 }
        goto L_0x00ad;
    L_0x0123:
        r6 = r5.next_pos;	 Catch:{ Throwable -> 0x00c7 }
        r6 = r6 + r22;
        r0 = r32;
        r14 = r0.getChunkListaner(r6);	 Catch:{ Throwable -> 0x00c7 }
        goto L_0x00d8;
    L_0x012e:
        r6 = r5.isComplete();	 Catch:{ Throwable -> 0x00c7 }
        if (r6 == 0) goto L_0x016c;
    L_0x0134:
        r28 = new cn.kuaipan.android.kss.upload.UploadChunkInfoPersist;	 Catch:{ Throwable -> 0x00c7 }
        r28.<init>();	 Catch:{ Throwable -> 0x00c7 }
        r6 = r34 + 1;
        r6 = (long) r6;	 Catch:{ Throwable -> 0x00c7 }
        r8 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        r6 = r6 * r8;
        r8 = r31.length();	 Catch:{ Throwable -> 0x00c7 }
        r6 = java.lang.Math.min(r6, r8);	 Catch:{ Throwable -> 0x00c7 }
        r0 = r28;
        r0.pos = r6;	 Catch:{ Throwable -> 0x00c7 }
        r6 = "";
        r0 = r28;
        r0.upload_id = r6;	 Catch:{ Throwable -> 0x00c7 }
        r0 = r24;
        r1 = r34;
        r4 = r0.getBlock(r1);	 Catch:{ Throwable -> 0x00c7 }
        r6 = r5.commit_meta;	 Catch:{ Throwable -> 0x00c7 }
        r4.meta = r6;	 Catch:{ Throwable -> 0x00c7 }
        r6 = 1;
        r4.exist = r6;	 Catch:{ Throwable -> 0x00c7 }
        r0 = r29;
        r1 = r30;
        r2 = r33;
        r3 = r28;
        r0.updateUploadInfo(r1, r2, r3);	 Catch:{ Throwable -> 0x00c7 }
    L_0x016c:
        r6 = r5.isComplete();	 Catch:{ Throwable -> 0x00c7 }
        if (r6 == 0) goto L_0x0181;
    L_0x0172:
        r12.close();	 Catch:{ Throwable -> 0x01cb }
    L_0x0175:
        return;
    L_0x0176:
        r6 = new cn.kuaipan.android.exception.KscRuntimeException;	 Catch:{ Throwable -> 0x00c7 }
        r7 = 500008; // 0x7a128 float:7.0066E-40 double:2.47037E-318;
        r8 = "Return chunkInfo is null";
        r6.<init>(r7, r8);	 Catch:{ Throwable -> 0x00c7 }
        throw r6;	 Catch:{ Throwable -> 0x00c7 }
    L_0x0181:
        r6 = r5.needBlockRetry();	 Catch:{ Throwable -> 0x00c7 }
        if (r6 == 0) goto L_0x01b0;
    L_0x0187:
        r6 = r25.decrementAndGet();	 Catch:{ Throwable -> 0x00c7 }
        if (r6 <= 0) goto L_0x01b0;
    L_0x018d:
        r22 = 0;
        r10 = "";
        r6 = "KssUploader";
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00c7 }
        r7.<init>();	 Catch:{ Throwable -> 0x00c7 }
        r8 = "upload needBlockRetry: ";
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x00c7 }
        r8 = r5.stat;	 Catch:{ Throwable -> 0x00c7 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x00c7 }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x00c7 }
        android.util.Log.d(r6, r7);	 Catch:{ Throwable -> 0x00c7 }
        r21 = r12;
        goto L_0x007d;
    L_0x01b0:
        r20 = new cn.kuaipan.android.exception.ServerMsgException;	 Catch:{ Throwable -> 0x00c7 }
        r6 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r7 = r5.stat;	 Catch:{ Throwable -> 0x00c7 }
        r0 = r20;
        r0.<init>(r6, r7);	 Catch:{ Throwable -> 0x00c7 }
        r6 = "KssUploader";
        r7 = "Exception in uploadBlock";
        r0 = r20;
        android.util.Log.w(r6, r7, r0);	 Catch:{ Throwable -> 0x00c7 }
        r33.markBroken();	 Catch:{ Throwable -> 0x00c7 }
        r29.deleteUploadInfo(r30);	 Catch:{ Throwable -> 0x00c7 }
        throw r20;	 Catch:{ Throwable -> 0x00c7 }
    L_0x01cb:
        r6 = move-exception;
        goto L_0x0175;
    L_0x01cd:
        r7 = move-exception;
        goto L_0x00d4;
    L_0x01d0:
        r6 = move-exception;
        r12 = r21;
        goto L_0x00d1;
    L_0x01d5:
        r26 = move-exception;
        r12 = r21;
        goto L_0x00c8;
    L_0x01da:
        r12 = r21;
        goto L_0x0172;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.kuaipan.android.kss.upload.KssUploader.uploadBlock(int, java.io.File, cn.kuaipan.android.kss.FileTranceListener, cn.kuaipan.android.kss.upload.KssUploadInfo, int):void");
    }

    private UploadChunkInfo uploadChunk(RandomFileInputStream in, RC4Encoder rc4Decoder, IKscTransferListener listener, KssUploadInfo info, int blockIndex, UploadChunkInfo chunkInfo) throws KscException, InterruptedException {
        IKssUploadRequestResult request = info.getRequestResult();
        String[] urls = request.getNodeUrls();
        if (urls == null || urls.length <= 0) {
            throw new IllegalArgumentException("No available urls.");
        }
        int i = 0;
        while (i < urls.length) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            try {
                in.moveToPos((4194304 * ((long) blockIndex)) + chunkInfo.next_pos);
                in.mark(nexEngine.ExportHEVCMainTierLevel61);
                Builder builder = Uri.parse(urls[i] + "/upload_block_chunk").buildUpon();
                builder.appendQueryParameter("chunk_pos", String.valueOf(chunkInfo.next_pos));
                if (TextUtils.isEmpty(chunkInfo.upload_id)) {
                    builder.appendQueryParameter("file_meta", request.getFileMeta());
                    builder.appendQueryParameter("block_meta", request.getBlock(blockIndex).meta);
                } else {
                    builder.appendQueryParameter("upload_id", chunkInfo.upload_id);
                }
                UploadChunkInfo result = _uploadChunk(builder.build(), chunkInfo.next_pos, in, rc4Decoder, listener, info);
                info.mExpectInfo = result.expect_info;
                return result;
            } catch (Exception e) {
                ErrorHelper.handleInterruptException(e);
                if (i >= urls.length - 1) {
                    throw KscException.newException(e, "Failed when upload a kss chunk.");
                }
                i++;
            }
        }
        return null;
    }

    private UploadChunkInfo _uploadChunk(Uri uri, long pos, RandomFileInputStream in, RC4Encoder rc4Decoder, IKscTransferListener listener, KssUploadInfo info) throws KscException, InterruptedException, IOException {
        UploadChunkInfo result = null;
        AtomicInteger atomicInteger = new AtomicInteger(3);
        while (atomicInteger.get() >= 0) {
            in.reset();
            long blockSize = Math.min(4194304, ((long) in.available()) + pos);
            if (blockSize < 0) {
                Log.d("KssUploader", "blockSize<0, adjust blockSize to 4M");
                blockSize = 4194304;
            }
            long len = Math.min(Math.min(this.mChunkSize, blockSize - pos), info.getMaxChunkSize());
            ServerExpect expectInfo = info.mExpectInfo;
            if (expectInfo != null) {
                expectInfo.validate();
                if (expectInfo.nextChunkSize > 0) {
                    Log.v("KssUploader", String.format("Adjust chunk size from %d to %d", new Object[]{Long.valueOf(len), Long.valueOf(Math.min(len, expectInfo.nextChunkSize))}));
                    len = newLen;
                }
                if (expectInfo.uploadDelay > 0) {
                    Log.v("KssUploader", String.format("Sleeping for delay %d(s)", new Object[]{Integer.valueOf(expectInfo.uploadDelay)}));
                    Thread.sleep((long) (expectInfo.uploadDelay * 1000));
                }
            }
            Uri bodyUri = uri.buildUpon().appendQueryParameter("body_sum", String.valueOf((long) getCRC(new DecoderInputStream(in, rc4Decoder, 8192), len))).build();
            in.reset();
            DecoderInputStream input = new DecoderInputStream(in, rc4Decoder, 8192);
            if (listener != null) {
                try {
                    listener.setSendPos(0);
                } catch (KscException e) {
                    if (!ErrorHelper.isNetworkException(e) || atomicInteger.decrementAndGet() < 0) {
                        throw e;
                    }
                    this.mChunkSize = Math.max(65536, this.mChunkSize >> 1);
                    result = null;
                    if (Thread.interrupted()) {
                        throw new InterruptedException();
                    }
                    Thread.sleep(5000);
                }
            }
            result = doUpload(bodyUri, input, len, listener);
            if (result.isContinue() || result.isComplete()) {
                updatePos(result, pos, len, blockSize);
                if (len >= this.mChunkSize) {
                    this.mChunkSize = Math.min(MAX_CHUNKSIZE, this.mChunkSize << 1);
                }
                return result;
            } else if (!result.canRetry() || atomicInteger.decrementAndGet() < 0) {
                return result;
            } else {
                Log.d("KssUploader", "upload needChunkRetry: " + result.stat);
            }
        }
        return result;
    }

    private UploadChunkInfo doUpload(Uri uri, InputStream input, long len, IKscTransferListener listener) throws KscException, InterruptedException {
        Map<String, Object> dataMap = null;
        try {
            KscHttpRequest request = new KscHttpRequest(HttpMethod.POST, uri, null, listener);
            request.setPostEntity(new KssInputStreamEntity(input, len));
            long execStartTime = System.currentTimeMillis();
            KscHttpResponse resp = this.mTransmitter.execute(request, 4);
            long timeCost = System.currentTimeMillis() - execStartTime;
            long size = 0;
            if (resp.getResponse() != null) {
                HttpEntity entity = resp.getResponse().getEntity();
                if (entity != null) {
                    size = entity.getContentLength();
                }
            }
            int statusCode = resp.getStatusCode();
            String exceptionName = "";
            if (resp.getError() != null) {
                exceptionName = resp.getError().getClass().getSimpleName();
            }
            MiCloudStatManager.getInstance().addHttpEvent(uri.toString(), timeCost, size, statusCode, exceptionName);
            ErrorHelper.throwError(resp);
            if (statusCode != 200) {
                ServerException e = new ServerException(statusCode, resp.dump());
                Log.w("KssUploader", "Exception in doUpload", e);
                throw e;
            }
            dataMap = ApiDataHelper.contentToMap(resp);
            UploadChunkInfo uploadChunkInfo = new UploadChunkInfo(dataMap);
            uploadChunkInfo.expect_info = ServerExpect.getServerExpect(resp);
            return uploadChunkInfo;
        } finally {
            if (dataMap != null && (dataMap instanceof IObtainable)) {
                ((IObtainable) dataMap).recycle();
            }
        }
    }

    private void updateUploadInfo(int taskHash, KssUploadInfo uploadInfo, UploadChunkInfoPersist uploadChunkInfoPersist) {
        if (this.mTaskStore != null) {
            this.mTaskStore.updateUploadInfo(taskHash, uploadInfo, uploadChunkInfoPersist);
        }
    }

    private void deleteUploadInfo(int taskHash) throws InterruptedException {
        if (this.mTaskStore != null) {
            this.mTaskStore.removeUploadInfo(taskHash);
        }
    }

    private UploadChunkInfoPersist getUploadPos(int taskHash) throws InterruptedException {
        if (this.mTaskStore == null) {
            return null;
        }
        return this.mTaskStore.getUploadPos(taskHash);
    }

    private static void verifyBlock(File file, UploadFileInfo request, int blockIndex) throws KscException, InterruptedException {
        IOException e;
        Throwable th;
        BlockInfo info = request.getBlockInfo(blockIndex);
        int size = (int) Math.min(file.length() - (((long) blockIndex) * 4194304), 4194304);
        if (size != info.size) {
            throw new KscException(403002, "Block size has changed.");
        }
        long start = ((long) blockIndex) * 4194304;
        InputStream in = null;
        try {
            InputStream in2 = new FileInputStream(file);
            try {
                if (in2.skip(start) != start) {
                    throw new KscException(403002, "File size has changed.");
                } else if (TextUtils.equals(Encode.SHA1Encode(in2, size), info.sha1)) {
                    try {
                        in2.close();
                    } catch (Throwable th2) {
                    }
                } else {
                    throw new KscException(403002, "Block has changed.");
                }
            } catch (IOException e2) {
                e = e2;
                in = in2;
                try {
                    throw KscException.newException(e, null);
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        in.close();
                    } catch (Throwable th4) {
                    }
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                in = in2;
                in.close();
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            throw KscException.newException(e, null);
        }
    }

    private static void updatePos(UploadChunkInfo result, long pos, long len, long blockSize) {
        if (result != null) {
            if (result.isComplete()) {
                result.next_pos = blockSize;
                result.left_bytes = 0;
            } else if (result.isContinue()) {
                long nextPos = pos + len;
                long nextLen = blockSize - nextPos;
                if (result.next_pos != nextPos || result.left_bytes != nextLen) {
                    Log.w("KssUploader", "Chunk pos is (" + result.next_pos + ", " + result.left_bytes + "), but in process is (" + nextPos + ", " + nextLen + ")");
                    result.next_pos = nextPos;
                    result.left_bytes = nextLen;
                }
            } else {
                result.next_pos = pos;
                result.left_bytes = blockSize - pos;
            }
        }
    }

    private synchronized int getCRC(InputStream in, long len) throws IOException {
        this.CRC32.reset();
        long leftSize = len;
        while (leftSize > 0) {
            int size = in.read(this.CRC_BUF, 0, (int) Math.min((long) this.CRC_BUF.length, leftSize));
            if (size >= 0) {
                leftSize -= (long) size;
                this.CRC32.update(this.CRC_BUF, 0, size);
            }
        }
        return (int) this.CRC32.getValue();
    }
}
