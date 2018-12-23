package com.miui.gallery.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import java.util.ArrayList;

public class PermissionUtils {

    public static class CtaPrivacyPermissions {
        private static final String[] CTA_PRIVACY_PERMISSIONS = new String[]{"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.CAMERA", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECORD_AUDIO", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG"};

        public static boolean isPrivacyAllowed(String permission) {
            if (TextUtils.isEmpty(permission) || BuildUtil.isInternational()) {
                return true;
            }
            for (String privacyPermission : CTA_PRIVACY_PERMISSIONS) {
                if (TextUtils.equals(permission, privacyPermission)) {
                    return CTA.getIsCtaPrivacyPermissionsAllowed(permission);
                }
            }
            return true;
        }
    }

    public static boolean checkPermission(Activity activity, String permission) {
        if (!supportRuntimePermissionCheck() || ContextCompat.checkSelfPermission(activity, permission) == 0) {
            return true;
        }
        return false;
    }

    public static boolean checkPermission(Context context, String permission) {
        if (!supportRuntimePermissionCheck() || ContextCompat.checkSelfPermission(context, permission) == 0) {
            return true;
        }
        return false;
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
        if (!supportRuntimePermissionCheck() || permissions == null || permissions.length <= 0) {
            return null;
        }
        ArrayList<String> permissionList = new ArrayList();
        for (String permission : permissions) {
            if (!(TextUtils.isEmpty(permission) || checkPermission(activity, permission))) {
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
