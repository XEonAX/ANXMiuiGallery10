package com.miui.extraphoto.common.utils;

import android.app.Activity;
import java.util.ArrayList;

public class PermissionCheckHelper {
    private static final int RUNTIME_PERMISSION_REQUEST_CODE = 1;
    private Activity mActivity;
    private PermissionCheckCallback mCallback;
    private boolean mIsShowWhenLocked;

    public interface PermissionCheckCallback {
        String[] getRuntimePermissions();

        void onCheckPermissionSucceed();
    }

    public PermissionCheckHelper(Activity activity, boolean isShowWhenLocked, PermissionCheckCallback callback) {
        if (activity == null || callback == null) {
            throw new RuntimeException("PermissionCheckHelper: activity or callback can't be null");
        }
        this.mActivity = activity;
        this.mIsShowWhenLocked = isShowWhenLocked;
        this.mCallback = callback;
    }

    public void checkPermission() {
        String[] permissions = this.mCallback.getRuntimePermissions();
        if (permissions == null || permissions.length <= 0) {
            this.mCallback.onCheckPermissionSucceed();
            return;
        }
        String[] ungrantedPermissions = PermissionUtils.getUngrantedPermissions(this.mActivity, permissions);
        if (ungrantedPermissions == null || ungrantedPermissions.length <= 0) {
            this.mCallback.onCheckPermissionSucceed();
        } else if (this.mIsShowWhenLocked) {
            this.mActivity.finish();
        } else {
            PermissionUtils.requestPermissions(this.mActivity, ungrantedPermissions, 1);
        }
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 1 && permissions != null) {
            boolean succeed = true;
            ArrayList<String> unGrantedPermissions = new ArrayList();
            for (int i = 0; i < permissions.length; i++) {
                if (grantResults[i] != 0) {
                    unGrantedPermissions.add(permissions[i]);
                    succeed = false;
                }
            }
            if (succeed) {
                this.mCallback.onCheckPermissionSucceed();
            } else {
                this.mActivity.finish();
            }
        }
    }
}
