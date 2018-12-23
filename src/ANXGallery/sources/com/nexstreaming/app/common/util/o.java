package com.nexstreaming.app.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.util.Log;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/* compiled from: UserInfo */
public class o {
    private static String a(String str) {
        String str2 = "";
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toString((b & 255) + 256, 16).substring(1));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("nex_tl_app_id", null);
        if (string == null) {
            string = "";
            string = "";
            if (a() >= 9) {
                string = Secure.getString(context.getContentResolver(), "android_id");
            } else {
                string = UUID.randomUUID().toString();
            }
            string = a(string + c(context));
            if (string != null) {
                Log.d("[UserInfo]", "deviceId length : " + string.length());
                Log.d("[UserInfo]", "deviceId : " + string);
                defaultSharedPreferences.edit().putString("nex_tl_app_id", string).commit();
            }
        }
        return string;
    }

    public static String b(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            applicationInfo = null;
        }
        String str = (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)");
        Log.d("[UserInfo]", "appName : " + str);
        return str;
    }

    public static String c(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.d("[UserInfo]", "package : " + str);
        return str;
    }

    public static String d(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.e("[UserInfo]", "Version Information ===== ");
        Log.e("[UserInfo]", "version name : " + str);
        return str;
    }

    public static int a() {
        return VERSION.SDK_INT;
    }

    /* JADX WARNING: Missing block: B:15:0x0044, code:
            if (r0.equalsIgnoreCase("universal7420") != false) goto L_0x0046;
     */
    public static java.lang.String b() {
        /*
        r3 = 1;
        r0 = "ro.board.platform";
        r1 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.b(r0);
        if (r1 == 0) goto L_0x002b;
    L_0x0009:
        r0 = r1.trim();
        r2 = "msm8960";
        r0 = r0.equalsIgnoreCase(r2);
        if (r0 == 0) goto L_0x002b;
    L_0x0015:
        r0 = "ro.product.board";
        r0 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.b(r0);
        if (r0 == 0) goto L_0x002b;
    L_0x001d:
        r0 = r0.trim();
        r2 = "8x30";
        r0 = r0.equalsIgnoreCase(r2);
        if (r0 == 0) goto L_0x002b;
    L_0x0029:
        r1 = "MSM8x30n";
    L_0x002b:
        if (r1 == 0) goto L_0x007a;
    L_0x002d:
        r0 = "exynos5";
        r0 = r1.equalsIgnoreCase(r0);
        if (r0 == 0) goto L_0x007a;
    L_0x0035:
        r0 = "ro.product.board";
        r0 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.b(r0);
        if (r0 == 0) goto L_0x007a;
    L_0x003d:
        r2 = "universal7420";
        r2 = r0.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x007a;
    L_0x0046:
        if (r0 == 0) goto L_0x0052;
    L_0x0048:
        r1 = r0.trim();
        r1 = r1.length();
        if (r1 >= r3) goto L_0x0058;
    L_0x0052:
        r0 = "ro.mediatek.platform";
        r0 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.b(r0);
    L_0x0058:
        if (r0 == 0) goto L_0x0064;
    L_0x005a:
        r1 = r0.trim();
        r1 = r1.length();
        if (r1 >= r3) goto L_0x006a;
    L_0x0064:
        r0 = "ro.hardware";
        r0 = com.nexstreaming.kminternal.nexvideoeditor.NexEditor.b(r0);
    L_0x006a:
        if (r0 == 0) goto L_0x0076;
    L_0x006c:
        r1 = r0.trim();
        r1 = r1.length();
        if (r1 >= r3) goto L_0x0079;
    L_0x0076:
        r0 = "unknown";
    L_0x0079:
        return r0;
    L_0x007a:
        r0 = r1;
        goto L_0x0046;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.util.o.b():java.lang.String");
    }
}
