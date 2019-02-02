package com.miui.gallery.util;

import android.text.TextUtils;
import com.miui.gallery.activity.PermissionDeniedActivity;
import com.miui.gallery.util.PermissionUtils.CtaPrivacyPermissions;
import java.util.ArrayList;
import java.util.Arrays;
import miui.app.Activity;

public class PermissionCheckHelper {
    private Activity mActivity;
    private PermissionCheckCallback mCallback;
    private boolean mIsShowWhenLocked;

    public interface PermissionCheckCallback {
        String[] getFatalPermissions();

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
        } else {
            internalCheckPermissions((String[]) Arrays.copyOf(permissions, permissions.length), (String[]) Arrays.copyOf(permissions, permissions.length));
        }
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 46 && permissions != null) {
            boolean succeed = true;
            ArrayList<String> unGrantedPermissions = new ArrayList();
            int i = 0;
            while (i < permissions.length) {
                if (grantResults[i] != 0 && isFatalPermission(permissions[i])) {
                    unGrantedPermissions.add(permissions[i]);
                    succeed = false;
                }
                i++;
            }
            if (succeed) {
                this.mCallback.onCheckPermissionSucceed();
                return;
            }
            PermissionDeniedActivity.startActivity(this.mActivity, unGrantedPermissions, this.mIsShowWhenLocked);
            this.mActivity.finish();
        }
    }

    private void internalCheckPermissions(String[] needRequestPermissions, String[] needCheckCTAPermissions) {
        if (needRequestPermissions == null || needRequestPermissions.length <= 0) {
            this.mCallback.onCheckPermissionSucceed();
        } else if (checkCtaPrivacyPermissions(needRequestPermissions, needCheckCTAPermissions)) {
            String[] ungrantedPermissions = PermissionUtils.getUngrantedPermissions(this.mActivity, needRequestPermissions);
            if (ungrantedPermissions == null || ungrantedPermissions.length <= 0) {
                this.mCallback.onCheckPermissionSucceed();
            } else if (this.mIsShowWhenLocked) {
                PermissionDeniedActivity.startActivity(this.mActivity, Arrays.asList(ungrantedPermissions), true);
                this.mActivity.finish();
            } else {
                PermissionUtils.requestPermissions(this.mActivity, ungrantedPermissions, 46);
            }
        }
    }

    private boolean checkCtaPrivacyPermissions(String[] runtimePermissions, String[] needCheckCtaPermissions) {
        if (needCheckCtaPermissions == null && needCheckCtaPermissions.length <= 0) {
            return true;
        }
        int i = 0;
        while (i < needCheckCtaPermissions.length) {
            final String permission = needCheckCtaPermissions[i];
            if (CtaPrivacyPermissions.isPrivacyAllowed(permission)) {
                i++;
            } else {
                final int index = i;
                String dialogTag = "cta_privacy_permission_dialog_" + permission;
                CtaPrivacyPermissionRequestDialog dialog = (CtaPrivacyPermissionRequestDialog) this.mActivity.getFragmentManager().findFragmentByTag(dialogTag);
                if (dialog == null) {
                    dialog = new CtaPrivacyPermissionRequestDialog();
                }
                dialog.setPermissionToRequest(permission);
                final String[] strArr = needCheckCtaPermissions;
                final String[] strArr2 = runtimePermissions;
                dialog.setOnRequestResultListener(new OnRequestResultListener() {
                    public void onRequestResult(boolean isAllowed) {
                        if (isAllowed) {
                            strArr[index] = null;
                        } else if (PermissionCheckHelper.this.isFatalPermission(permission)) {
                            PermissionCheckHelper.this.mActivity.finish();
                            return;
                        } else {
                            strArr[index] = null;
                            strArr2[index] = null;
                        }
                        PermissionCheckHelper.this.internalCheckPermissions(strArr2, strArr);
                    }
                });
                if (dialog.isAdded()) {
                    return false;
                }
                dialog.show(this.mActivity.getFragmentManager(), dialogTag);
                return false;
            }
        }
        return true;
    }

    private boolean isFatalPermission(String permission) {
        if (this.mCallback == null) {
            return false;
        }
        String[] fatalPermissions = this.mCallback.getFatalPermissions();
        if (fatalPermissions == null) {
            return false;
        }
        for (String fatalPermission : fatalPermissions) {
            if (TextUtils.equals(fatalPermission, permission)) {
                return true;
            }
        }
        return false;
    }
}
