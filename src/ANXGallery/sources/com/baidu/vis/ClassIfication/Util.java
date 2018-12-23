package com.baidu.vis.ClassIfication;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.baidu.vis.ClassIfication.SDKExceptions.NV21BytesLengthNotMatch;
import java.io.File;
import java.nio.ByteBuffer;

public class Util {
    private static final String TAG = "Predictor";

    public static byte[] bitmap2Bytes(Bitmap bmp) {
        ByteBuffer buf = ByteBuffer.allocate(bmp.getByteCount());
        bmp.copyPixelsToBuffer(buf);
        return buf.array();
    }

    public static Bitmap bytes2Bitmap(byte[] bytes, int width, int height, Config type) {
        Bitmap stitchBmp = Bitmap.createBitmap(width, height, type);
        stitchBmp.copyPixelsFromBuffer(ByteBuffer.wrap(bytes));
        return stitchBmp;
    }

    public static void checkFile(String nnFileName) throws NV21BytesLengthNotMatch {
        if (!new File(nnFileName).exists()) {
            throw new NV21BytesLengthNotMatch();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x00b8 A:{SYNTHETIC, Splitter: B:47:0x00b8} */
    /* JADX WARNING: Removed duplicated region for block: B:80:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00bd A:{SYNTHETIC, Splitter: B:50:0x00bd} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00d5 A:{SYNTHETIC, Splitter: B:64:0x00d5} */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00da A:{SYNTHETIC, Splitter: B:67:0x00da} */
    public static void copyAssets(android.content.Context r17, java.lang.String r18) throws com.baidu.vis.ClassIfication.SDKExceptions.NoSDCardPermission, com.baidu.vis.ClassIfication.SDKExceptions.MissingModleFileInAssetFolder, com.baidu.vis.ClassIfication.SDKExceptions.IlleagleCpuArch {
        /*
        r1 = android.os.Build.CPU_ABI;
        r14 = "v7a";
        r14 = r1.contains(r14);
        if (r14 != 0) goto L_0x0014;
    L_0x000b:
        r14 = "v8a";
        r14 = r1.contains(r14);
        if (r14 == 0) goto L_0x0034;
    L_0x0014:
        r2 = r17.getAssets();
        r8 = 0;
        r0 = r18;
        r8 = r2.open(r0);	 Catch:{ IOException -> 0x003f }
        if (r8 == 0) goto L_0x0024;
    L_0x0021:
        r8.close();	 Catch:{ IOException -> 0x003a }
    L_0x0024:
        r14 = "android.permission.WRITE_EXTERNAL_STORAGE";
        r0 = r17;
        r12 = r0.checkCallingOrSelfPermission(r14);
        if (r12 == 0) goto L_0x0052;
    L_0x002e:
        r14 = new com.baidu.vis.ClassIfication.SDKExceptions$NoSDCardPermission;
        r14.<init>();
        throw r14;
    L_0x0034:
        r14 = new com.baidu.vis.ClassIfication.SDKExceptions$IlleagleCpuArch;
        r14.<init>();
        throw r14;
    L_0x003a:
        r4 = move-exception;
        r4.printStackTrace();
        goto L_0x0024;
    L_0x003f:
        r5 = move-exception;
        r14 = new com.baidu.vis.ClassIfication.SDKExceptions$MissingModleFileInAssetFolder;	 Catch:{ all -> 0x0046 }
        r14.<init>();	 Catch:{ all -> 0x0046 }
        throw r14;	 Catch:{ all -> 0x0046 }
    L_0x0046:
        r14 = move-exception;
        if (r8 == 0) goto L_0x004c;
    L_0x0049:
        r8.close();	 Catch:{ IOException -> 0x004d }
    L_0x004c:
        throw r14;
    L_0x004d:
        r4 = move-exception;
        r4.printStackTrace();
        goto L_0x004c;
    L_0x0052:
        r6 = new java.io.File;
        r14 = 0;
        r0 = r17;
        r14 = r0.getExternalFilesDir(r14);
        r0 = r18;
        r6.<init>(r14, r0);
        r14 = r6.exists();
        if (r14 == 0) goto L_0x006e;
    L_0x0066:
        r14 = "Predictor";
        r15 = "NN model on SD card";
        android.util.Log.d(r14, r15);
    L_0x006d:
        return;
    L_0x006e:
        r7 = 0;
        r9 = 0;
        r0 = r18;
        r7 = r2.open(r0);	 Catch:{ IOException -> 0x00e9 }
        r11 = new java.io.File;	 Catch:{ IOException -> 0x00e9 }
        r14 = 0;
        r0 = r17;
        r14 = r0.getExternalFilesDir(r14);	 Catch:{ IOException -> 0x00e9 }
        r0 = r18;
        r11.<init>(r14, r0);	 Catch:{ IOException -> 0x00e9 }
        r10 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x00e9 }
        r10.<init>(r11);	 Catch:{ IOException -> 0x00e9 }
        r14 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r3 = new byte[r14];	 Catch:{ IOException -> 0x0099, all -> 0x00e6 }
    L_0x008d:
        r13 = r7.read(r3);	 Catch:{ IOException -> 0x0099, all -> 0x00e6 }
        r14 = -1;
        if (r13 == r14) goto L_0x00c3;
    L_0x0094:
        r14 = 0;
        r10.write(r3, r14, r13);	 Catch:{ IOException -> 0x0099, all -> 0x00e6 }
        goto L_0x008d;
    L_0x0099:
        r4 = move-exception;
        r9 = r10;
    L_0x009b:
        r14 = "tag";
        r15 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00d2 }
        r15.<init>();	 Catch:{ all -> 0x00d2 }
        r16 = "Failed to copy asset file: ";
        r15 = r15.append(r16);	 Catch:{ all -> 0x00d2 }
        r0 = r18;
        r15 = r15.append(r0);	 Catch:{ all -> 0x00d2 }
        r15 = r15.toString();	 Catch:{ all -> 0x00d2 }
        android.util.Log.e(r14, r15, r4);	 Catch:{ all -> 0x00d2 }
        if (r7 == 0) goto L_0x00bb;
    L_0x00b8:
        r7.close();	 Catch:{ IOException -> 0x00e0 }
    L_0x00bb:
        if (r9 == 0) goto L_0x006d;
    L_0x00bd:
        r9.close();	 Catch:{ IOException -> 0x00c1 }
        goto L_0x006d;
    L_0x00c1:
        r14 = move-exception;
        goto L_0x006d;
    L_0x00c3:
        if (r7 == 0) goto L_0x00c8;
    L_0x00c5:
        r7.close();	 Catch:{ IOException -> 0x00de }
    L_0x00c8:
        if (r10 == 0) goto L_0x00eb;
    L_0x00ca:
        r10.close();	 Catch:{ IOException -> 0x00cf }
        r9 = r10;
        goto L_0x006d;
    L_0x00cf:
        r14 = move-exception;
        r9 = r10;
        goto L_0x006d;
    L_0x00d2:
        r14 = move-exception;
    L_0x00d3:
        if (r7 == 0) goto L_0x00d8;
    L_0x00d5:
        r7.close();	 Catch:{ IOException -> 0x00e2 }
    L_0x00d8:
        if (r9 == 0) goto L_0x00dd;
    L_0x00da:
        r9.close();	 Catch:{ IOException -> 0x00e4 }
    L_0x00dd:
        throw r14;
    L_0x00de:
        r14 = move-exception;
        goto L_0x00c8;
    L_0x00e0:
        r14 = move-exception;
        goto L_0x00bb;
    L_0x00e2:
        r15 = move-exception;
        goto L_0x00d8;
    L_0x00e4:
        r15 = move-exception;
        goto L_0x00dd;
    L_0x00e6:
        r14 = move-exception;
        r9 = r10;
        goto L_0x00d3;
    L_0x00e9:
        r4 = move-exception;
        goto L_0x009b;
    L_0x00eb:
        r9 = r10;
        goto L_0x006d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.vis.ClassIfication.Util.copyAssets(android.content.Context, java.lang.String):void");
    }
}
