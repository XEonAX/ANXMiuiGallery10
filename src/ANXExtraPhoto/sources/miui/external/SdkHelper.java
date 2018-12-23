package miui.external;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;

public class SdkHelper {
    private static final String LOG_TAG = "miuisdk";
    static final String MIUI_SYSTEM_APK_NAME = "miui";
    private static final String PROP_MIUI_VERSION_CODE = "ro.miui.ui.version.code";

    private SdkHelper() {
    }

    public static boolean isMiuiSystem() {
        return TextUtils.isEmpty(getSystemProperty(PROP_MIUI_VERSION_CODE, "")) ^ 1;
    }

    static String getApkPath(Context context, String packageName, String systemApkName) {
        if (context == null) {
            return guessApkPath(packageName, systemApkName);
        }
        PackageInfo pi = getPackageInfo(context, packageName);
        if (pi != null) {
            return pi.applicationInfo.publicSourceDir;
        }
        return null;
    }

    private static String guessApkPath(String packageName, String systemApkName) {
        String apkPath = guessDataApkPath(packageName);
        if (apkPath == null) {
            return guessSystemApkPath(systemApkName);
        }
        return apkPath;
    }

    private static String guessDataApkPath(String packageName) {
        String[] strArr = new String[4];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(packageName);
        stringBuilder.append("-1.apk");
        strArr[0] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(packageName);
        stringBuilder.append("-2.apk");
        strArr[1] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(packageName);
        stringBuilder.append("-1/base.apk");
        strArr[2] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(packageName);
        stringBuilder.append("-2/base.apk");
        strArr[3] = stringBuilder.toString();
        return searchApkPath(strArr);
    }

    private static String guessSystemApkPath(String systemApkName) {
        String[] strArr = new String[4];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/system/app/");
        stringBuilder.append(systemApkName);
        stringBuilder.append(".apk");
        strArr[0] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/system/priv-app/");
        stringBuilder.append(systemApkName);
        stringBuilder.append(".apk");
        strArr[1] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/system/app/");
        stringBuilder.append(systemApkName);
        stringBuilder.append("/");
        stringBuilder.append(systemApkName);
        stringBuilder.append(".apk");
        strArr[2] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/system/priv-app/");
        stringBuilder.append(systemApkName);
        stringBuilder.append("/");
        stringBuilder.append(systemApkName);
        stringBuilder.append(".apk");
        strArr[3] = stringBuilder.toString();
        return searchApkPath(strArr);
    }

    private static String searchApkPath(String[] paths) {
        for (String path : paths) {
            if (new File(path).exists()) {
                return path;
            }
        }
        return null;
    }

    static String getLibPath(Context context, String packageName) {
        if (context == null) {
            context = getSystemContext();
        }
        if (context == null) {
            return guessLibPath(packageName);
        }
        PackageInfo pi = getPackageInfo(context, packageName);
        if (pi != null) {
            return pi.applicationInfo.nativeLibraryDir;
        }
        return null;
    }

    private static String guessLibPath(String packageName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/data/data/");
        stringBuilder.append(packageName);
        stringBuilder.append("/lib/");
        return stringBuilder.toString();
    }

    private static PackageInfo getPackageInfo(Context context, String packageName) {
        try {
            return context.getPackageManager().getPackageInfo(packageName, 128);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Context getSystemContext() {
        try {
            Class activityThreadCls = Class.forName("android.app.ActivityThread");
            return (Context) activityThreadCls.getDeclaredMethod("getSystemContext", new Class[0]).invoke(activityThreadCls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Exception e) {
            Log.e("miuisdk", "getSystemContext error", e);
            return null;
        }
    }

    private static String getSystemProperty(String key, String defValue) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{key, defValue});
        } catch (Exception e) {
            Log.e("miuisdk", "getSystemProperty error", e);
            return defValue;
        }
    }
}
