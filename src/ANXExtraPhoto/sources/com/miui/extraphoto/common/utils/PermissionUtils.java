package com.miui.extraphoto.common.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;
import java.util.ArrayList;

public class PermissionUtils {
    private static final String TAG = "PermissionUtils";

    public static boolean checkPermission(Activity activity, String permission) {
        boolean z = true;
        if (!supportRuntimePermissionCheck()) {
            return true;
        }
        if (ActivityCompat.checkSelfPermission(activity, permission) != 0) {
            z = false;
        }
        return z;
    }

    public static boolean checkPermission(Context context, String permission) {
        boolean z = true;
        if (!supportRuntimePermissionCheck()) {
            return true;
        }
        if (ActivityCompat.checkSelfPermission(context, permission) != 0) {
            z = false;
        }
        return z;
    }

    public static void requestPermissions(Activity activity, String[] permissions, int requestCode) {
        if (supportRuntimePermissionCheck()) {
            ActivityCompat.requestPermissions(activity, permissions, requestCode);
        }
    }

    private static boolean supportRuntimePermissionCheck() {
        return VERSION.SDK_INT >= 23;
    }

    public static String[] getUngrantedPermissions(Activity activity, String[] permissions) {
        if (!supportRuntimePermissionCheck() || permissions == null) {
            return null;
        }
        ArrayList<String> permissionList = new ArrayList();
        for (String permission : permissions) {
            if (!checkPermission(activity, permission)) {
                permissionList.add(permission);
            }
        }
        if (permissionList.isEmpty()) {
            return new String[0];
        }
        String[] permissionArray = new String[permissionList.size()];
        permissionList.toArray(permissionArray);
        return permissionArray;
    }
}
