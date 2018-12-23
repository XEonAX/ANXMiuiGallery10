package com.xiaomi.tinyData;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import java.io.File;

public class TinyDataCacheReader {
    private static boolean mTinyDataJobIsRunning = false;

    static class TinyDataReadJob implements Runnable {
        private Context mContext;
        private TinyDataUploader mUploader;

        public TinyDataReadJob(Context context, TinyDataUploader uploader) {
            this.mUploader = uploader;
            this.mContext = context;
        }

        public void run() {
            TinyDataCacheReader.extractTinyData(this.mContext, this.mUploader);
        }
    }

    public static void addTinyDataCacheReadJob(Context context, TinyDataUploader uploader) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new TinyDataReadJob(context, uploader));
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e1  */
    private static void extractTinyData(android.content.Context r11, com.xiaomi.tinyData.TinyDataUploader r12) {
        /*
        r10 = 0;
        r7 = mTinyDataJobIsRunning;
        if (r7 != 0) goto L_0x0020;
    L_0x0005:
        r7 = 1;
        mTinyDataJobIsRunning = r7;
        r1 = new java.io.File;
        r7 = r11.getFilesDir();
        r8 = "tiny_data.data";
        r1.<init>(r7, r8);
        r7 = r1.exists();
        if (r7 != 0) goto L_0x0026;
    L_0x001a:
        r7 = "TinyData no ready file to get data.";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r7);
    L_0x001f:
        return;
    L_0x0020:
        r7 = "TinyData extractTinyData is running";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r7);
        goto L_0x001f;
    L_0x0026:
        verifyFileDir(r11);
        r5 = 0;
        r3 = 0;
        r2 = com.xiaomi.push.service.TinyDataStorage.getTinyDataKeyWithDefault(r11);
        r4 = new java.io.File;	 Catch:{ Exception -> 0x00be }
        r7 = r11.getFilesDir();	 Catch:{ Exception -> 0x00be }
        r8 = "tiny_data.lock";
        r4.<init>(r7, r8);	 Catch:{ Exception -> 0x00be }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r4);	 Catch:{ Exception -> 0x00be }
        r6 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x00be }
        r7 = "rw";
        r6.<init>(r4, r7);	 Catch:{ Exception -> 0x00be }
        r7 = r6.getChannel();	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r3 = r7.lock();	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r7 = new java.io.File;	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r8 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r8.<init>();	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r9 = r11.getFilesDir();	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r8 = r8.append(r9);	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r9 = "/tdReadTemp";
        r8 = r8.append(r9);	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r9 = "/";
        r8 = r8.append(r9);	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r9 = "tiny_data.data";
        r8 = r8.append(r9);	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r8 = r8.toString();	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r7.<init>(r8);	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        r1.renameTo(r7);	 Catch:{ Exception -> 0x0100, all -> 0x00fd }
        if (r3 == 0) goto L_0x0084;
    L_0x007b:
        r7 = r3.isValid();
        if (r7 == 0) goto L_0x0084;
    L_0x0081:
        r3.release();	 Catch:{ IOException -> 0x00f8 }
    L_0x0084:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r6);
        r5 = r6;
    L_0x0088:
        r1 = new java.io.File;
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = r11.getFilesDir();
        r7 = r7.append(r8);
        r8 = "/tdReadTemp";
        r7 = r7.append(r8);
        r8 = "/";
        r7 = r7.append(r8);
        r8 = "tiny_data.data";
        r7 = r7.append(r8);
        r7 = r7.toString();
        r1.<init>(r7);
        r7 = r1.exists();
        if (r7 != 0) goto L_0x00e1;
    L_0x00b7:
        r7 = "TinyData no ready file to get data.";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r7);
        goto L_0x001f;
    L_0x00be:
        r0 = move-exception;
    L_0x00bf:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x00d1 }
        if (r3 == 0) goto L_0x00cd;
    L_0x00c4:
        r7 = r3.isValid();
        if (r7 == 0) goto L_0x00cd;
    L_0x00ca:
        r3.release();	 Catch:{ IOException -> 0x00f3 }
    L_0x00cd:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r5);
        goto L_0x0088;
    L_0x00d1:
        r7 = move-exception;
    L_0x00d2:
        if (r3 == 0) goto L_0x00dd;
    L_0x00d4:
        r8 = r3.isValid();
        if (r8 == 0) goto L_0x00dd;
    L_0x00da:
        r3.release();	 Catch:{ IOException -> 0x00ee }
    L_0x00dd:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r5);
        throw r7;
    L_0x00e1:
        readTinyDataFromFile(r11, r12, r1, r2);
        com.xiaomi.tinyData.TinyDataCacheProcessor.setIsTinyDataExtracting(r10);
        updateTinyDataUploadTimeStamp(r11);
        mTinyDataJobIsRunning = r10;
        goto L_0x001f;
    L_0x00ee:
        r0 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);
        goto L_0x00dd;
    L_0x00f3:
        r0 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);
        goto L_0x00cd;
    L_0x00f8:
        r0 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);
        goto L_0x0084;
    L_0x00fd:
        r7 = move-exception;
        r5 = r6;
        goto L_0x00d2;
    L_0x0100:
        r0 = move-exception;
        r5 = r6;
        goto L_0x00bf;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.tinyData.TinyDataCacheReader.extractTinyData(android.content.Context, com.xiaomi.tinyData.TinyDataUploader):void");
    }

    /* JADX WARNING: Missing block: B:18:?, code:
            com.xiaomi.channel.commonutils.logger.MyLog.e("TinyData read from cache file failed cause lengthBuffer error. size:" + r14);
     */
    private static void readTinyDataFromFile(android.content.Context r18, com.xiaomi.tinyData.TinyDataUploader r19, java.io.File r20, byte[] r21) {
        /*
        r12 = new java.util.ArrayList;
        r12.<init>();
        r15 = 4;
        r11 = new byte[r15];
        r2 = 0;
        r8 = 0;
        r9 = 0;
        r3 = new java.io.BufferedInputStream;	 Catch:{ Exception -> 0x0144 }
        r15 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0144 }
        r0 = r20;
        r15.<init>(r0);	 Catch:{ Exception -> 0x0144 }
        r3.<init>(r15);	 Catch:{ Exception -> 0x0144 }
        r13 = r12;
    L_0x0018:
        r14 = r3.read(r11);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = -1;
        if (r14 != r15) goto L_0x0067;
    L_0x001f:
        r0 = r18;
        r1 = r19;
        com.xiaomi.tinyData.TinyDataCacheUploader.uploadTinyData(r0, r1, r13);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = "TinyData readTinyDataFromFile upload tiny data at last. items:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = r13.size();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = " ts:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.toString();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        if (r20 == 0) goto L_0x0061;
    L_0x0050:
        r15 = r20.exists();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        if (r15 == 0) goto L_0x0061;
    L_0x0056:
        r15 = r20.delete();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        if (r15 != 0) goto L_0x0061;
    L_0x005c:
        r15 = "TinyData delete reading temp file failed";
        com.xiaomi.channel.commonutils.logger.MyLog.w(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
    L_0x0061:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);
        r2 = r3;
        r12 = r13;
    L_0x0066:
        return;
    L_0x0067:
        r15 = 4;
        if (r14 == r15) goto L_0x008b;
    L_0x006a:
        r15 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = "TinyData read from cache file failed cause lengthBuffer error. size:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r14);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.toString();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        goto L_0x001f;
    L_0x0081:
        r6 = move-exception;
        r2 = r3;
        r12 = r13;
    L_0x0084:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r6);	 Catch:{ all -> 0x0141 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r2);
        goto L_0x0066;
    L_0x008b:
        r10 = com.xiaomi.channel.commonutils.misc.ByteUtils.toInt(r11);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = 1;
        if (r10 < r15) goto L_0x0096;
    L_0x0092:
        r15 = 10240; // 0x2800 float:1.4349E-41 double:5.059E-320;
        if (r10 <= r15) goto L_0x00b5;
    L_0x0096:
        r15 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = "TinyData read from cache file failed cause lengthBuffer < 1 || too big. length:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r10);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.toString();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        goto L_0x001f;
    L_0x00ae:
        r15 = move-exception;
        r2 = r3;
        r12 = r13;
    L_0x00b1:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r2);
        throw r15;
    L_0x00b5:
        r4 = new byte[r10];	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r14 = r3.read(r4);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        if (r14 == r10) goto L_0x00df;
    L_0x00bd:
        r15 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = "TinyData read from cache file failed cause buffer size not equal length. size:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r14);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = "__length:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r10);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.toString();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        goto L_0x001f;
    L_0x00df:
        r0 = r21;
        r5 = com.xiaomi.channel.commonutils.android.DataCryptUtils.mipushDecrypt(r0, r4);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        if (r5 == 0) goto L_0x00ea;
    L_0x00e7:
        r15 = r5.length;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        if (r15 != 0) goto L_0x00f1;
    L_0x00ea:
        r15 = "TinyData read from cache file failed cause decrypt fail";
        com.xiaomi.channel.commonutils.logger.MyLog.e(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        goto L_0x0018;
    L_0x00f1:
        r7 = new com.xiaomi.xmpush.thrift.ClientUploadDataItem;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r7.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils.convertByteArrayToThriftObject(r7, r5);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r13.add(r7);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r8 = r8 + 1;
        r15 = r5.length;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r9 = r9 + r15;
        r15 = 8;
        if (r8 >= r15) goto L_0x0108;
    L_0x0104:
        r15 = 10240; // 0x2800 float:1.4349E-41 double:5.059E-320;
        if (r9 < r15) goto L_0x0147;
    L_0x0108:
        r15 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = "TinyData readTinyDataFromFile upload tiny data by part. items:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = r13.size();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = " ts:";
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r16 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.append(r16);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r15 = r15.toString();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        com.xiaomi.channel.commonutils.logger.MyLog.w(r15);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r0 = r18;
        r1 = r19;
        com.xiaomi.tinyData.TinyDataCacheUploader.uploadTinyData(r0, r1, r13);	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r12 = new java.util.ArrayList;	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r12.<init>();	 Catch:{ Exception -> 0x0081, all -> 0x00ae }
        r8 = 0;
        r9 = 0;
    L_0x013e:
        r13 = r12;
        goto L_0x0018;
    L_0x0141:
        r15 = move-exception;
        goto L_0x00b1;
    L_0x0144:
        r6 = move-exception;
        goto L_0x0084;
    L_0x0147:
        r12 = r13;
        goto L_0x013e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.tinyData.TinyDataCacheReader.readTinyDataFromFile(android.content.Context, com.xiaomi.tinyData.TinyDataUploader, java.io.File, byte[]):void");
    }

    private static void verifyFileDir(Context context) {
        File fileDir = new File(context.getFilesDir() + "/tdReadTemp");
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }
    }

    private static void updateTinyDataUploadTimeStamp(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 4).edit();
        editor.putLong("last_tiny_data_upload_timestamp", System.currentTimeMillis() / 1000);
        editor.commit();
    }
}
