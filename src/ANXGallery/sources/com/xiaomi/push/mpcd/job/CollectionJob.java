package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.misc.JobMutualExclusor;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.push.mpcd.CDActionProvider;
import com.xiaomi.push.mpcd.CDActionProviderHolder;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import com.xiaomi.xmpush.thrift.DataCollectionItem;

public abstract class CollectionJob extends Job {
    protected Context context;
    protected int period;

    public abstract String collectInfo();

    public abstract ClientCollectionType getCollectionType();

    public CollectionJob(Context context, int period) {
        this.period = period;
        this.context = context;
    }

    public void run() {
        if (checkPeriodAndRecord()) {
            CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
            String regSecret = cdActionProvider == null ? "" : cdActionProvider.getRegSecret();
            if (!TextUtils.isEmpty(regSecret) && checkPermission()) {
                String info = collectInfo();
                if (!TextUtils.isEmpty(info)) {
                    DataCollectionItem collectionItem = new DataCollectionItem();
                    collectionItem.setContent(info);
                    collectionItem.setCollectedAt(System.currentTimeMillis());
                    collectionItem.setCollectionType(getCollectionType());
                    writeItemToFile(this.context, collectionItem, regSecret);
                }
            }
        }
    }

    protected boolean checkPeriodAndRecord() {
        return JobMutualExclusor.checkPeriodAndRecordWithFileLock(this.context, String.valueOf(getJobId()), (long) this.period);
    }

    public static void writeItemToFile(Context context, DataCollectionItem collectionItem) {
        CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
        String regSecret = cdActionProvider == null ? "" : cdActionProvider.getRegSecret();
        if (!TextUtils.isEmpty(regSecret) && !TextUtils.isEmpty(collectionItem.getContent())) {
            writeItemToFile(context, collectionItem, regSecret);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0075 A:{SYNTHETIC, Splitter: B:31:0x0075} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0075 A:{SYNTHETIC, Splitter: B:31:0x0075} */
    private static void writeItemToFile(android.content.Context r12, com.xiaomi.xmpush.thrift.DataCollectionItem r13, java.lang.String r14) {
        /*
        r4 = com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils.convertThriftObjectToBytes(r13);
        r4 = com.xiaomi.push.mpcd.CDataHelper.encryptData(r14, r4);
        if (r4 == 0) goto L_0x000d;
    L_0x000a:
        r9 = r4.length;
        if (r9 != 0) goto L_0x000e;
    L_0x000d:
        return;
    L_0x000e:
        r10 = com.xiaomi.push.mpcd.Constants.cDataLock4Thread;
        monitor-enter(r10);
        r7 = 0;
        r5 = 0;
        r0 = 0;
        r6 = new java.io.File;	 Catch:{ IOException -> 0x006f }
        r9 = 0;
        r9 = r12.getExternalFilesDir(r9);	 Catch:{ IOException -> 0x006f }
        r11 = "push_cdata.lock";
        r6.<init>(r9, r11);	 Catch:{ IOException -> 0x006f }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r6);	 Catch:{ IOException -> 0x006f }
        r8 = new java.io.RandomAccessFile;	 Catch:{ IOException -> 0x006f }
        r9 = "rw";
        r8.<init>(r6, r9);	 Catch:{ IOException -> 0x006f }
        r9 = r8.getChannel();	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r5 = r9.lock();	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r3 = new java.io.File;	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r9 = 0;
        r9 = r12.getExternalFilesDir(r9);	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r11 = "push_cdata.data";
        r3.<init>(r9, r11);	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r1 = new java.io.BufferedOutputStream;	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r9 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r11 = 1;
        r9.<init>(r3, r11);	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r1.<init>(r9);	 Catch:{ IOException -> 0x00a9, all -> 0x00a2 }
        r9 = r4.length;	 Catch:{ IOException -> 0x00ac, all -> 0x00a5 }
        r9 = com.xiaomi.channel.commonutils.misc.ByteUtils.parseInt(r9);	 Catch:{ IOException -> 0x00ac, all -> 0x00a5 }
        r1.write(r9);	 Catch:{ IOException -> 0x00ac, all -> 0x00a5 }
        r1.write(r4);	 Catch:{ IOException -> 0x00ac, all -> 0x00a5 }
        r1.flush();	 Catch:{ IOException -> 0x00ac, all -> 0x00a5 }
        if (r5 == 0) goto L_0x0062;
    L_0x0059:
        r9 = r5.isValid();	 Catch:{ all -> 0x009e }
        if (r9 == 0) goto L_0x0062;
    L_0x005f:
        r5.release();	 Catch:{ IOException -> 0x0098 }
    L_0x0062:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r1);	 Catch:{ all -> 0x009e }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r8);	 Catch:{ all -> 0x009e }
        r0 = r1;
        r7 = r8;
    L_0x006a:
        monitor-exit(r10);	 Catch:{ all -> 0x006c }
        goto L_0x000d;
    L_0x006c:
        r9 = move-exception;
    L_0x006d:
        monitor-exit(r10);	 Catch:{ all -> 0x006c }
        throw r9;
    L_0x006f:
        r2 = move-exception;
    L_0x0070:
        r2.printStackTrace();	 Catch:{ all -> 0x0085 }
        if (r5 == 0) goto L_0x007e;
    L_0x0075:
        r9 = r5.isValid();	 Catch:{ all -> 0x006c }
        if (r9 == 0) goto L_0x007e;
    L_0x007b:
        r5.release();	 Catch:{ IOException -> 0x009a }
    L_0x007e:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);	 Catch:{ all -> 0x006c }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);	 Catch:{ all -> 0x006c }
        goto L_0x006a;
    L_0x0085:
        r9 = move-exception;
    L_0x0086:
        if (r5 == 0) goto L_0x0091;
    L_0x0088:
        r11 = r5.isValid();	 Catch:{ all -> 0x006c }
        if (r11 == 0) goto L_0x0091;
    L_0x008e:
        r5.release();	 Catch:{ IOException -> 0x009c }
    L_0x0091:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);	 Catch:{ all -> 0x006c }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);	 Catch:{ all -> 0x006c }
        throw r9;	 Catch:{ all -> 0x006c }
    L_0x0098:
        r9 = move-exception;
        goto L_0x0062;
    L_0x009a:
        r9 = move-exception;
        goto L_0x007e;
    L_0x009c:
        r11 = move-exception;
        goto L_0x0091;
    L_0x009e:
        r9 = move-exception;
        r0 = r1;
        r7 = r8;
        goto L_0x006d;
    L_0x00a2:
        r9 = move-exception;
        r7 = r8;
        goto L_0x0086;
    L_0x00a5:
        r9 = move-exception;
        r0 = r1;
        r7 = r8;
        goto L_0x0086;
    L_0x00a9:
        r2 = move-exception;
        r7 = r8;
        goto L_0x0070;
    L_0x00ac:
        r2 = move-exception;
        r0 = r1;
        r7 = r8;
        goto L_0x0070;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.mpcd.job.CollectionJob.writeItemToFile(android.content.Context, com.xiaomi.xmpush.thrift.DataCollectionItem, java.lang.String):void");
    }

    protected boolean checkPermission() {
        return true;
    }
}
