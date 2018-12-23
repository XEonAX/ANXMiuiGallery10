package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.io.File;

public class StorageCollectionJob extends CollectionJob {
    public StorageCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        return "ram:" + getRamSize() + "," + "rom:" + getRomSize();
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.Storage;
    }

    public int getJobId() {
        return 23;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0081 A:{SYNTHETIC, Splitter: B:27:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008a A:{SYNTHETIC, Splitter: B:32:0x008a} */
    private java.lang.String getRamSize() {
        /*
        r16 = this;
        r8 = "0";
        r7 = "/proc/meminfo";
        r4 = new java.io.File;
        r4.<init>(r7);
        if (r4 == 0) goto L_0x0068;
    L_0x000b:
        r9 = r4.exists();
        if (r9 == 0) goto L_0x0068;
    L_0x0011:
        r1 = 0;
        r5 = new java.io.FileReader;	 Catch:{ Exception -> 0x007c }
        r5.<init>(r7);	 Catch:{ Exception -> 0x007c }
        r2 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x007c }
        r9 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r2.<init>(r5, r9);	 Catch:{ Exception -> 0x007c }
        r6 = r2.readLine();	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r9 = android.text.TextUtils.isEmpty(r6);	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        if (r9 != 0) goto L_0x0063;
    L_0x0028:
        r9 = "\\s+";
        r0 = r6.split(r9);	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        if (r0 == 0) goto L_0x0063;
    L_0x0030:
        r9 = r0.length;	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r12 = 2;
        if (r9 < r12) goto L_0x0063;
    L_0x0034:
        r9 = 1;
        r9 = r0[r9];	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r9 = java.lang.Double.valueOf(r9);	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r12 = r9.doubleValue();	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r14 = 4652218415073722368; // 0x4090000000000000 float:0.0 double:1024.0;
        r12 = r12 / r14;
        r14 = 4652218415073722368; // 0x4090000000000000 float:0.0 double:1024.0;
        r10 = r12 / r14;
        r12 = 4602678819172646912; // 0x3fe0000000000000 float:0.0 double:0.5;
        r9 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r9 <= 0) goto L_0x0050;
    L_0x004c:
        r10 = java.lang.Math.ceil(r10);	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
    L_0x0050:
        r9 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r9.<init>();	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r9 = r9.append(r10);	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r12 = "";
        r9 = r9.append(r12);	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
        r8 = r9.toString();	 Catch:{ Exception -> 0x0095, all -> 0x0092 }
    L_0x0063:
        if (r2 == 0) goto L_0x0068;
    L_0x0065:
        r2.close();	 Catch:{ IOException -> 0x008e }
    L_0x0068:
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r9 = r9.append(r8);
        r12 = "GB";
        r9 = r9.append(r12);
        r9 = r9.toString();
        return r9;
    L_0x007c:
        r3 = move-exception;
    L_0x007d:
        r8 = "0";
        if (r1 == 0) goto L_0x0068;
    L_0x0081:
        r1.close();	 Catch:{ IOException -> 0x0085 }
        goto L_0x0068;
    L_0x0085:
        r9 = move-exception;
        goto L_0x0068;
    L_0x0087:
        r9 = move-exception;
    L_0x0088:
        if (r1 == 0) goto L_0x008d;
    L_0x008a:
        r1.close();	 Catch:{ IOException -> 0x0090 }
    L_0x008d:
        throw r9;
    L_0x008e:
        r9 = move-exception;
        goto L_0x0068;
    L_0x0090:
        r12 = move-exception;
        goto L_0x008d;
    L_0x0092:
        r9 = move-exception;
        r1 = r2;
        goto L_0x0088;
    L_0x0095:
        r3 = move-exception;
        r1 = r2;
        goto L_0x007d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.mpcd.job.StorageCollectionJob.getRamSize():java.lang.String");
    }

    private String getRomSize() {
        return getNum(((((double) getSize(Environment.getDataDirectory())) / 1024.0d) / 1024.0d) / 1024.0d) + "GB";
    }

    private long getSize(File path) {
        StatFs stat = new StatFs(path.getPath());
        return ((long) stat.getBlockSize()) * ((long) stat.getBlockCount());
    }

    private double getNum(double size) {
        int value = 1;
        while (((double) value) < size) {
            value <<= 1;
        }
        return (double) value;
    }
}
