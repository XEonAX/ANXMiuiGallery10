package com.miui.gallery.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.SpannableStringBuilder;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.CTA;

public class CtaPrivacyPermissionRequestDialog extends CtaPermissionRequestBaseDialog {
    private OnRequestResultListener mOnRequestResultListener;
    private String mPermissionToRequest;

    interface OnRequestResultListener {
        void onRequestResult(boolean z);
    }

    public void setPermissionToRequest(String permissionToRequest) {
        this.mPermissionToRequest = permissionToRequest;
    }

    public void setOnRequestResultListener(OnRequestResultListener listener) {
        this.mOnRequestResultListener = listener;
    }

    protected String getTitle() {
        return getString(R.string.privacy_permission_request_title);
    }

    protected SpannableStringBuilder getMessage() {
        PackageManager packageManager = getActivity().getPackageManager();
        String permissionName = this.mPermissionToRequest;
        try {
            CharSequence label = packageManager.getPermissionInfo(this.mPermissionToRequest, 128).loadLabel(packageManager);
            if (label != null) {
                permissionName = label.toString();
            }
            permissionName = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
        } catch (NameNotFoundException e) {
            Log.w("CtaPrivacyPermissionRequestDialog", "Get permission info failed, %s", permissionName);
            permissionName = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
        } catch (Throwable th) {
            permissionName = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
        }
        return CtaUtils.buildUserNotice(getActivity(), getString(R.string.privacy_permission_request_message, new Object[]{getString(R.string.user_agreement2), getString(R.string.user_agreement4), permissionName}), getString(R.string.user_agreement2), getString(R.string.user_agreement4));
    }

    protected String getPositiveText() {
        return getString(R.string.privacy_permission_request_positive);
    }

    protected String getNegativeText() {
        return getString(R.string.privacy_permission_request_negative);
    }

    protected OnClickListener getPositiveListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                CTA.setIsCtaPrivacyPermissionsAllowed(CtaPrivacyPermissionRequestDialog.this.mPermissionToRequest, true);
                if (CtaPrivacyPermissionRequestDialog.this.mOnRequestResultListener != null) {
                    CtaPrivacyPermissionRequestDialog.this.mOnRequestResultListener.onRequestResult(true);
                }
            }
        };
    }

    protected OnClickListener getNegativeListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                CTA.setIsCtaPrivacyPermissionsAllowed(CtaPrivacyPermissionRequestDialog.this.mPermissionToRequest, false);
                if (CtaPrivacyPermissionRequestDialog.this.mOnRequestResultListener != null) {
                    CtaPrivacyPermissionRequestDialog.this.mOnRequestResultListener.onRequestResult(false);
                }
            }
        };
    }
}
