package com.xiaomi.mistatistic.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.t;
import java.lang.reflect.Method;

public class BuildSetting {
    private static boolean a = false;
    private static boolean b = false;
    private static Boolean c = null;
    private static boolean d = true;
    private static long e = 60000;
    private static long f = 0;

    public static boolean isTestNetworkEnabled() {
        return a;
    }

    public static boolean isSelfStats() {
        return b;
    }

    public static boolean isRespectUEP() {
        return d;
    }

    public static boolean isDisabled(Context context) {
        boolean z = false;
        if (d) {
            if (c == null || t.a(f, e)) {
                if (t.d(context) && t.e(context)) {
                    if (!isUserExperienceProgramEnabled(context)) {
                        z = true;
                    }
                    c = Boolean.valueOf(z);
                } else {
                    c = Boolean.valueOf(false);
                }
                f = System.currentTimeMillis();
            }
            return c.booleanValue();
        }
        j.b("uploading is disabled? false, sRespectUEP " + d);
        return false;
    }

    public static boolean isUserExperienceProgramEnabled(Context context) {
        if (!t.d(context) && !t.g(context)) {
            return true;
        }
        boolean isMiTvExperienceUploadGrantedByUser;
        try {
            if (t.g(context)) {
                isMiTvExperienceUploadGrantedByUser = isMiTvExperienceUploadGrantedByUser(context);
            } else {
                Method declaredMethod = Class.forName("android.provider.MiuiSettings$Secure").getDeclaredMethod("isUserExperienceProgramEnable", new Class[]{ContentResolver.class});
                declaredMethod.setAccessible(true);
                isMiTvExperienceUploadGrantedByUser = ((Boolean) declaredMethod.invoke(null, new Object[]{context.getContentResolver()})).booleanValue();
            }
        } catch (Throwable e) {
            j.a("BS", "isUserExperienceProgramEnabled exception:", e);
            isMiTvExperienceUploadGrantedByUser = true;
        }
        return isMiTvExperienceUploadGrantedByUser;
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x0020  */
    /* JADX WARNING: Removed duplicated region for block: B:10:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    public static boolean isMiTvExperienceUploadGrantedByUser(android.content.Context r4) {
        /*
        r1 = 1;
        r0 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x0016 }
        r2 = 17;
        if (r0 < r2) goto L_0x001e;
    L_0x0007:
        r0 = r4.getContentResolver();	 Catch:{ Exception -> 0x0016 }
        r2 = "user_experience_enabled";
        r3 = 1;
        r0 = android.provider.Settings.Global.getInt(r0, r2, r3);	 Catch:{ Exception -> 0x0016 }
    L_0x0013:
        if (r0 != r1) goto L_0x0020;
    L_0x0015:
        return r1;
    L_0x0016:
        r0 = move-exception;
        r2 = "BS";
        r3 = "isMiTvExperienceUploadGrantedByUser exception:";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);
    L_0x001e:
        r0 = r1;
        goto L_0x0013;
    L_0x0020:
        r1 = 0;
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.BuildSetting.isMiTvExperienceUploadGrantedByUser(android.content.Context):boolean");
    }

    public static boolean isUploadDebugLogEnable(Context context) {
        boolean booleanValue;
        Throwable e;
        if (!t.b()) {
            Log.w("MI_STAT", "The statistics is disabled.");
            return true;
        } else if (context == null) {
            Log.e(j.b(), "isUploadDebugLogEnable: context is null.");
            return true;
        } else if (!t.d(context)) {
            return true;
        } else {
            try {
                Method declaredMethod = Class.forName("android.provider.MiuiSettings$Secure").getDeclaredMethod("isUploadDebugLogEnable", new Class[]{ContentResolver.class});
                declaredMethod.setAccessible(true);
                booleanValue = ((Boolean) declaredMethod.invoke(null, new Object[]{context.getContentResolver()})).booleanValue();
                try {
                    j.a("isUploadDebugLogEnable: " + booleanValue);
                    return booleanValue;
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable e3) {
                Throwable th = e3;
                booleanValue = true;
                e = th;
            }
        }
        j.a("BS", "isUploadDebugLogEnable exception:", e);
        return booleanValue;
    }

    public static boolean isCTABuild() {
        try {
            if (t.d(d.a())) {
                return ((Boolean) Class.forName("miui.os.Build").getField("IS_CTA_BUILD").get(null)).booleanValue();
            }
        } catch (Throwable e) {
            j.a("BS", "isCTABuild exception:", e);
        }
        return false;
    }

    private static boolean a() {
        try {
            Object obj = Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").get(null);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        } catch (Throwable e) {
            j.a("BS", "isAlphaBuild exception:", e);
        }
        return false;
    }

    private static boolean b() {
        try {
            Object obj = Class.forName("miui.os.Build").getField("IS_DEVELOPMENT_VERSION").get(null);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        } catch (Throwable e) {
            j.a("BS", "isDevBuild exception:", e);
        }
        return false;
    }

    private static boolean c() {
        try {
            Object obj = Class.forName("miui.os.Build").getField("IS_STABLE_VERSION").get(null);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        } catch (Throwable e) {
            j.a("BS", "isStableBuild exception:", e);
        }
        return false;
    }

    public static boolean isInternationalBuild() {
        try {
            if (t.d(d.a())) {
                return ((Boolean) Class.forName("miui.os.Build").getField("IS_INTERNATIONAL_BUILD").get(null)).booleanValue();
            }
            return false;
        } catch (Throwable e) {
            j.a("BS", "isInternationalBuild exception:", e);
            return false;
        }
    }

    public static String getMiuiBuildCode() {
        if (!t.d(d.a())) {
            return "";
        }
        if (c()) {
            return "S";
        }
        if (b()) {
            return "D";
        }
        if (a()) {
            return "A";
        }
        return "";
    }
}
