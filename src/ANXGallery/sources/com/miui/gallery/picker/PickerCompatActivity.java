package com.miui.gallery.picker;

import android.app.ActionBar;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.activity.PermissionDeniedActivity;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.ui.CtaNoticeFragment;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.PermissionUtils;
import com.miui.security.CrossUserCompatActivity;
import java.util.ArrayList;

public class PickerCompatActivity extends CrossUserCompatActivity {
    private static final String[] REQUIRED_RUNTIME_PERMISSIONS = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    protected ActionBar mActionBar;
    private CtaNoticeFragment mCtaNoticeDialog;
    private boolean mIsResumed;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!hasCustomContentView()) {
            setContentView(R.layout.base_activity);
        }
        initActionBar();
        this.mCtaNoticeDialog = CtaNoticeFragment.newInstance(!allowUseOnOffline());
        String[] runtimePermissions = getRuntimePermissions();
        if (runtimePermissions != null && runtimePermissions.length > 0) {
            checkPermission(runtimePermissions);
        }
    }

    protected boolean hasCustomContentView() {
        return false;
    }

    protected boolean allowUseOnOffline() {
        return true;
    }

    protected void onStart() {
        super.onStart();
        if ((!CTA.allowUseOnOfflineGlobal() || !allowUseOnOffline()) && !CTA.canConnectNetwork() && !CTA.canConnectNetwork()) {
            if (BuildUtil.isInternational()) {
                CTA.setCanConnectNetwork(true);
            } else if (!this.mCtaNoticeDialog.isAdded()) {
                this.mCtaNoticeDialog.show(getFragmentManager(), "CtaNoticeFragment");
            }
        }
    }

    protected void onResume() {
        super.onResume();
        this.mIsResumed = true;
    }

    protected void onPause() {
        super.onPause();
        this.mIsResumed = false;
    }

    protected void onStop() {
        super.onStop();
    }

    protected void initActionBar() {
        this.mActionBar = getActionBar();
    }

    public void setTitle(CharSequence title) {
        if (this.mActionBar != null) {
            this.mActionBar.setTitle(title);
        }
    }

    protected String[] getRuntimePermissions() {
        return REQUIRED_RUNTIME_PERMISSIONS;
    }

    protected void checkPermission(String[] permissions) {
        String[] ungrantedPermissions = PermissionUtils.getUngrantedPermissions(this, permissions);
        if (ungrantedPermissions == null || ungrantedPermissions.length <= 0) {
            onCheckPermissionSucceed();
        } else {
            PermissionUtils.requestPermissions(this, ungrantedPermissions, 1);
        }
    }

    protected void onCheckPermissionSucceed() {
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
                onCheckPermissionSucceed();
                return;
            }
            PermissionDeniedActivity.startActivity(this, unGrantedPermissions, false);
            finish();
        }
    }

    public void startFragment(Fragment tar, String tag, boolean addToBackStack, boolean add) {
        if (getFragmentContainerId() <= 0) {
            throw new IllegalArgumentException("invalidate container id");
        } else if (TextUtils.isEmpty(tag) || getFragmentManager().findFragmentByTag(tag) == null) {
            FragmentTransaction transaction = getFragmentManager().beginTransaction();
            if (addToBackStack) {
                transaction.addToBackStack(tag);
            }
            if (add) {
                transaction.add(getFragmentContainerId(), tar, tag);
            } else {
                transaction.replace(getFragmentContainerId(), tar, tag);
            }
            transaction.commitAllowingStateLoss();
        } else {
            Log.w("PickerCompatActivity", "already has tag of fragment %s", tag);
        }
    }

    protected int getFragmentContainerId() {
        return 0;
    }
}
