package miui.module.appstore;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.File;

public class MD5Utils {
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0039 A:{SYNTHETIC, Splitter: B:20:0x0039} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0045 A:{SYNTHETIC, Splitter: B:26:0x0045} */
    public static java.lang.String MD5Sum(java.io.File r10) {
        /*
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r5 = 0;
        r6 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0033 }
        r6.<init>(r10);	 Catch:{ Exception -> 0x0033 }
        r9 = "MD5";
        r2 = miui.security.DigestUtils.get(r6, r9);	 Catch:{ Exception -> 0x0051, all -> 0x004e }
        r0 = r2;
        r7 = r0.length;	 Catch:{ Exception -> 0x0051, all -> 0x004e }
        r4 = 0;
    L_0x0014:
        if (r4 >= r7) goto L_0x0022;
    L_0x0016:
        r1 = r0[r4];	 Catch:{ Exception -> 0x0051, all -> 0x004e }
        r9 = byte2Hex(r1);	 Catch:{ Exception -> 0x0051, all -> 0x004e }
        r8.append(r9);	 Catch:{ Exception -> 0x0051, all -> 0x004e }
        r4 = r4 + 1;
        goto L_0x0014;
    L_0x0022:
        if (r6 == 0) goto L_0x0054;
    L_0x0024:
        r6.close();	 Catch:{ IOException -> 0x002d }
        r5 = r6;
    L_0x0028:
        r9 = r8.toString();
        return r9;
    L_0x002d:
        r3 = move-exception;
        r3.printStackTrace();
        r5 = r6;
        goto L_0x0028;
    L_0x0033:
        r3 = move-exception;
    L_0x0034:
        r3.printStackTrace();	 Catch:{ all -> 0x0042 }
        if (r5 == 0) goto L_0x0028;
    L_0x0039:
        r5.close();	 Catch:{ IOException -> 0x003d }
        goto L_0x0028;
    L_0x003d:
        r3 = move-exception;
        r3.printStackTrace();
        goto L_0x0028;
    L_0x0042:
        r9 = move-exception;
    L_0x0043:
        if (r5 == 0) goto L_0x0048;
    L_0x0045:
        r5.close();	 Catch:{ IOException -> 0x0049 }
    L_0x0048:
        throw r9;
    L_0x0049:
        r3 = move-exception;
        r3.printStackTrace();
        goto L_0x0048;
    L_0x004e:
        r9 = move-exception;
        r5 = r6;
        goto L_0x0043;
    L_0x0051:
        r3 = move-exception;
        r5 = r6;
        goto L_0x0034;
    L_0x0054:
        r5 = r6;
        goto L_0x0028;
        */
        throw new UnsupportedOperationException("Method not decompiled: miui.module.appstore.MD5Utils.MD5Sum(java.io.File):java.lang.String");
    }

    public static boolean checkMD5(File file, String srcMD5) {
        if (file == null || !file.exists() || srcMD5 == null || !MD5Sum(file).equals(srcMD5.toLowerCase())) {
            return false;
        }
        return true;
    }

    private static String byte2Hex(byte b) {
        int value = (b & BaiduSceneResult.BANK_CARD) + (b < (byte) 0 ? 128 : 0);
        return (value < 16 ? "0" : "") + Integer.toHexString(value).toLowerCase();
    }
}
