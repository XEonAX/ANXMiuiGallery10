package com.miui.gallery.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ReceiverUtils;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import java.util.List;

public class PermissionDeniedActivity extends Activity {
    private AlertDialog mInfoDialog;
    private ScreenBroadcastReceiver mScreenReceiver;
    private ArrayList<String> mUnGrantedPermissions;

    private class ScreenBroadcastReceiver extends BroadcastReceiver {
        private ScreenBroadcastReceiver() {
        }

        /* synthetic */ ScreenBroadcastReceiver(PermissionDeniedActivity x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) && !PermissionDeniedActivity.this.isFinishing()) {
                PermissionDeniedActivity.this.finish();
            }
        }
    }

    public static void startActivity(Activity activity, List<String> unGrantedPermissions, boolean startFromLock) {
        if (activity != null && unGrantedPermissions != null && unGrantedPermissions.size() > 0) {
            Intent intent = new Intent(activity, PermissionDeniedActivity.class);
            intent.putStringArrayListExtra("permissions", new ArrayList(unGrantedPermissions));
            intent.putExtra("StartActivityWhenLocked", startFromLock);
            activity.startActivity(intent);
            activity.overridePendingTransition(0, 0);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.permission_denied_activity);
    }

    protected void onStart() {
        super.onStart();
        if (isShowWhenLocked()) {
            getWindow().addFlags(nexEngine.ExportHEVCHighTierLevel52);
        }
        this.mUnGrantedPermissions = getIntent().getStringArrayListExtra("permissions");
        if (this.mUnGrantedPermissions == null || this.mUnGrantedPermissions.size() <= 0) {
            finish();
            return;
        }
        if (this.mInfoDialog == null) {
            this.mInfoDialog = showDialog();
        }
        if (this.mScreenReceiver == null) {
            this.mScreenReceiver = new ScreenBroadcastReceiver(this, null);
            ReceiverUtils.registerReceiver(this, this.mScreenReceiver, "android.intent.action.SCREEN_OFF");
        }
    }

    protected void onStop() {
        super.onStop();
        finish();
    }

    public void finish() {
        if (this.mInfoDialog != null) {
            this.mInfoDialog.dismiss();
            this.mInfoDialog = null;
        }
        if (this.mScreenReceiver != null) {
            ReceiverUtils.safeUnregisterReceiver(this, this.mScreenReceiver);
            this.mScreenReceiver = null;
        }
        super.finish();
        overridePendingTransition(0, 0);
    }

    protected void onResume() {
        super.onResume();
        GallerySamplingStatHelper.recordPageStart(this, "permission_denied");
    }

    protected void onPause() {
        super.onPause();
        GallerySamplingStatHelper.recordPageEnd(this, "permission_denied");
    }

    private boolean isShowWhenLocked() {
        return getIntent().getBooleanExtra("StartActivityWhenLocked", false);
    }

    private AlertDialog showDialog() {
        PackageManager packageManager = getPackageManager();
        String[] permissionNames = new String[this.mUnGrantedPermissions.size()];
        for (int i = 0; i < this.mUnGrantedPermissions.size(); i++) {
            String permissionName = (String) this.mUnGrantedPermissions.get(i);
            try {
                CharSequence label = packageManager.getPermissionInfo((String) this.mUnGrantedPermissions.get(i), 128).loadLabel(packageManager);
                if (label != null) {
                    permissionName = label.toString();
                }
                permissionNames[i] = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
            } catch (NameNotFoundException e) {
                Log.w("PermissionDeniedActivity", "Get permission info failed, %s", permissionName);
                permissionNames[i] = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
            } catch (Throwable th) {
                permissionNames[i] = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
            }
        }
        return DialogUtil.showInfoDialog((Context) this, false, String.format(getString(R.string.grant_permission_text), new Object[]{TextUtils.join("\n", permissionNames)}), getString(R.string.grant_permission_title), isShowWhenLocked() ? R.string.grant_permission_unlock_and_set : R.string.grant_permission_go_and_set, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (PermissionDeniedActivity.this.isShowWhenLocked()) {
                    PermissionDeniedActivity.this.getWindow().addFlags(nexEngine.ExportHEVCMainTierLevel61);
                }
                IntentUtil.enterGalleryAppSetting(PermissionDeniedActivity.this);
                PermissionDeniedActivity.this.finish();
            }
        }, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                PermissionDeniedActivity.this.finish();
            }
        });
    }
}
