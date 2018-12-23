package com.xiaomi.channel.commonutils.misc;

import android.content.Context;
import android.os.Environment;
import com.xiaomi.channel.commonutils.file.IOUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

public class JobMutualExclusor {
    private static final String COMMON_PATH = (Environment.getExternalStorageDirectory().getPath() + "/mipush/");
    private static final String LAST_COLLECT_FILE_PATH = (COMMON_PATH + "lcfp");
    private static final String LAST_COLLECT_FILE_PATH_LOCK = (COMMON_PATH + "lcfp.lock");

    /* JADX WARNING: Removed duplicated region for block: B:40:0x010a A:{Catch:{ IOException -> 0x011c, all -> 0x014c }} */
    private static boolean checkPeriodAndRecordWorking(android.content.Context r22, java.lang.String r23, long r24) {
        /*
        r18 = android.os.Build.VERSION.SDK_INT;
        r19 = 23;
        r0 = r18;
        r1 = r19;
        if (r0 < r1) goto L_0x0019;
    L_0x000a:
        r18 = "android.permission.WRITE_EXTERNAL_STORAGE";
        r0 = r22;
        r1 = r18;
        r18 = com.xiaomi.channel.commonutils.android.AppInfoUtils.checkSelfPermission(r0, r1);
        if (r18 != 0) goto L_0x0019;
    L_0x0016:
        r18 = 1;
    L_0x0018:
        return r18;
    L_0x0019:
        r7 = new java.io.File;
        r18 = LAST_COLLECT_FILE_PATH;
        r0 = r18;
        r7.<init>(r0);
        r11 = new java.util.ArrayList;
        r11.<init>();
        r14 = java.lang.System.currentTimeMillis();
        r18 = new java.lang.StringBuilder;
        r18.<init>();
        r0 = r18;
        r1 = r23;
        r18 = r0.append(r1);
        r19 = ":";
        r18 = r18.append(r19);
        r19 = r22.getPackageName();
        r18 = r18.append(r19);
        r19 = ",";
        r18 = r18.append(r19);
        r0 = r18;
        r18 = r0.append(r14);
        r12 = r18.toString();
        r18 = r7.exists();
        if (r18 == 0) goto L_0x0137;
    L_0x005c:
        r2 = 0;
        r3 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0155 }
        r18 = new java.io.FileReader;	 Catch:{ Exception -> 0x0155 }
        r0 = r18;
        r0.<init>(r7);	 Catch:{ Exception -> 0x0155 }
        r0 = r18;
        r3.<init>(r0);	 Catch:{ Exception -> 0x0155 }
    L_0x006b:
        r10 = r3.readLine();	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        if (r10 == 0) goto L_0x012d;
    L_0x0071:
        r18 = ":";
        r0 = r18;
        r13 = r10.split(r0);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r0 = r13.length;	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r18 = r0;
        r19 = 2;
        r0 = r18;
        r1 = r19;
        if (r0 != r1) goto L_0x006b;
    L_0x0084:
        r18 = 0;
        r18 = r13[r18];	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r19 = java.lang.String.valueOf(r23);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r18 = android.text.TextUtils.equals(r18, r19);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        if (r18 == 0) goto L_0x00e3;
    L_0x0092:
        r18 = 1;
        r5 = r13[r18];	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r18 = ",";
        r0 = r18;
        r4 = r5.split(r0);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r0 = r4.length;	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r18 = r0;
        r19 = 2;
        r0 = r18;
        r1 = r19;
        if (r0 != r1) goto L_0x006b;
    L_0x00a9:
        r18 = 1;
        r18 = r4[r18];	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r8 = java.lang.Long.parseLong(r18);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r18 = 0;
        r18 = r4[r18];	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r19 = r22.getPackageName();	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r18 = android.text.TextUtils.equals(r18, r19);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        if (r18 != 0) goto L_0x006b;
    L_0x00bf:
        r18 = r14 - r8;
        r18 = java.lang.Math.abs(r18);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        r0 = r18;
        r0 = (float) r0;
        r18 = r0;
        r20 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r20 = r20 * r24;
        r0 = r20;
        r0 = (float) r0;
        r19 = r0;
        r20 = 1063675494; // 0x3f666666 float:0.9 double:5.2552552E-315;
        r19 = r19 * r20;
        r18 = (r18 > r19 ? 1 : (r18 == r19 ? 0 : -1));
        if (r18 >= 0) goto L_0x006b;
    L_0x00dc:
        r18 = 0;
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);
        goto L_0x0018;
    L_0x00e3:
        r11.add(r10);	 Catch:{ Exception -> 0x00e7, all -> 0x0152 }
        goto L_0x006b;
    L_0x00e7:
        r6 = move-exception;
        r2 = r3;
    L_0x00e9:
        r11.clear();	 Catch:{ all -> 0x0132 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r2);
    L_0x00ef:
        r11.add(r12);
        r16 = 0;
        r17 = new java.io.BufferedWriter;	 Catch:{ IOException -> 0x0150 }
        r18 = new java.io.FileWriter;	 Catch:{ IOException -> 0x0150 }
        r0 = r18;
        r0.<init>(r7);	 Catch:{ IOException -> 0x0150 }
        r17.<init>(r18);	 Catch:{ IOException -> 0x0150 }
        r18 = r11.iterator();	 Catch:{ IOException -> 0x011c, all -> 0x014c }
    L_0x0104:
        r19 = r18.hasNext();	 Catch:{ IOException -> 0x011c, all -> 0x014c }
        if (r19 == 0) goto L_0x0141;
    L_0x010a:
        r10 = r18.next();	 Catch:{ IOException -> 0x011c, all -> 0x014c }
        r10 = (java.lang.String) r10;	 Catch:{ IOException -> 0x011c, all -> 0x014c }
        r0 = r17;
        r0.write(r10);	 Catch:{ IOException -> 0x011c, all -> 0x014c }
        r17.newLine();	 Catch:{ IOException -> 0x011c, all -> 0x014c }
        r17.flush();	 Catch:{ IOException -> 0x011c, all -> 0x014c }
        goto L_0x0104;
    L_0x011c:
        r6 = move-exception;
        r16 = r17;
    L_0x011f:
        r18 = r6.toString();	 Catch:{ all -> 0x0147 }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r18);	 Catch:{ all -> 0x0147 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r16);
    L_0x0129:
        r18 = 1;
        goto L_0x0018;
    L_0x012d:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);
        r2 = r3;
        goto L_0x00ef;
    L_0x0132:
        r18 = move-exception;
    L_0x0133:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r2);
        throw r18;
    L_0x0137:
        r18 = com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r7);
        if (r18 != 0) goto L_0x00ef;
    L_0x013d:
        r18 = 1;
        goto L_0x0018;
    L_0x0141:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r17);
        r16 = r17;
        goto L_0x0129;
    L_0x0147:
        r18 = move-exception;
    L_0x0148:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r16);
        throw r18;
    L_0x014c:
        r18 = move-exception;
        r16 = r17;
        goto L_0x0148;
    L_0x0150:
        r6 = move-exception;
        goto L_0x011f;
    L_0x0152:
        r18 = move-exception;
        r2 = r3;
        goto L_0x0133;
    L_0x0155:
        r6 = move-exception;
        goto L_0x00e9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.misc.JobMutualExclusor.checkPeriodAndRecordWorking(android.content.Context, java.lang.String, long):boolean");
    }

    public static boolean checkPeriodAndRecordWithFileLock(Context context, String jobId, long period) {
        IOException e;
        Throwable th;
        RandomAccessFile lockRandomFile = null;
        FileLock lock = null;
        try {
            File lockFile = new File(LAST_COLLECT_FILE_PATH_LOCK);
            IOUtils.createFileQuietly(lockFile);
            RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
            try {
                lock = lockRandomFile2.getChannel().lock();
                boolean checkPeriodAndRecordWorking = checkPeriodAndRecordWorking(context, jobId, period);
                if (lock != null && lock.isValid()) {
                    try {
                        lock.release();
                    } catch (IOException e2) {
                    }
                }
                IOUtils.closeQuietly(lockRandomFile2);
                lockRandomFile = lockRandomFile2;
                return checkPeriodAndRecordWorking;
            } catch (IOException e3) {
                e = e3;
                lockRandomFile = lockRandomFile2;
            } catch (Throwable th2) {
                th = th2;
                lockRandomFile = lockRandomFile2;
                try {
                    lock.release();
                } catch (IOException e4) {
                }
                IOUtils.closeQuietly(lockRandomFile);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            try {
                e.printStackTrace();
                if (lock != null && lock.isValid()) {
                    try {
                        lock.release();
                    } catch (IOException e6) {
                    }
                }
                IOUtils.closeQuietly(lockRandomFile);
                return true;
            } catch (Throwable th3) {
                th = th3;
                if (lock != null && lock.isValid()) {
                    lock.release();
                }
                IOUtils.closeQuietly(lockRandomFile);
                throw th;
            }
        }
    }
}
