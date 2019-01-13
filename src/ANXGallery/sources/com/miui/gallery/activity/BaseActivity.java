package com.miui.gallery.activity;

import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.ui.CtaNoticeFragment;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.PermissionCheckHelper;
import com.miui.gallery.util.PermissionCheckHelper.PermissionCheckCallback;
import com.miui.gallery.util.ReceiverUtils;
import com.miui.gallery.util.TransitionPatching;
import com.nexstreaming.nexeditorsdk.nexEngine;
import miui.app.ActionBar;
import miui.app.Activity;

public class BaseActivity extends Activity implements PermissionCheckCallback {
    private static final String[] REQUIRED_RUNTIME_PERMISSIONS = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    protected ActionBar mActionBar;
    private OnClickListener mCtaAgreedListener;
    private CtaNoticeFragment mCtaNoticeDialog;
    private boolean mIsResumed;
    private boolean mIsStartingEnterTransition = false;
    private PermissionCheckHelper mPermissionCheckHelper;
    private BroadcastReceiver mScreenReceiver;

    private class ScreenBroadcastReceiver extends BroadcastReceiver {
        private ScreenBroadcastReceiver() {
        }

        /* synthetic */ ScreenBroadcastReceiver(BaseActivity x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) && !BaseActivity.this.isFinishing()) {
                BaseActivity.this.finish();
            }
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!hasCustomContentView()) {
            setContentView(R.layout.base_activity);
        }
        initActionBar();
        this.mCtaNoticeDialog = CtaNoticeFragment.newInstance(!allowUseOnOffline());
        this.mPermissionCheckHelper = new PermissionCheckHelper(this, isShowWhenLocked(), this);
        this.mPermissionCheckHelper.checkPermission();
        if (supportShowOnScreenLocked() && isShowWhenLocked()) {
            getWindow().addFlags(nexEngine.ExportHEVCHighTierLevel52);
            this.mScreenReceiver = new ScreenBroadcastReceiver(this, null);
            ReceiverUtils.registerReceiver(this, this.mScreenReceiver, "android.intent.action.SCREEN_OFF");
        }
    }

    protected boolean hasCustomContentView() {
        return false;
    }

    protected void onStop() {
        if (this.mIsStartingEnterTransition) {
            TransitionPatching.onActivityStopWhenEnterStarting(this);
            this.mIsStartingEnterTransition = false;
        }
        super.onStop();
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        DocumentProviderUtils.handleRequestPermissionResult(this, requestCode, resultCode, data);
    }

    protected boolean allowUseOnOffline() {
        return true;
    }

    protected void onCtaChecked(boolean agreed) {
    }

    protected void onResume() {
        super.onResume();
        this.mIsResumed = true;
        this.mIsStartingEnterTransition = false;
    }

    protected void onPause() {
        super.onPause();
        this.mIsResumed = false;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mScreenReceiver != null) {
            ReceiverUtils.safeUnregisterReceiver(this, this.mScreenReceiver);
        }
    }

    protected void initActionBar() {
        this.mActionBar = getActionBar();
    }

    public void setTitle(CharSequence title) {
        if (this.mActionBar != null) {
            this.mActionBar.setTitle(title);
        }
    }

    protected int getFragmentContainerId() {
        return 0;
    }

    public String[] getRuntimePermissions() {
        return REQUIRED_RUNTIME_PERMISSIONS;
    }

    public String[] getFatalPermissions() {
        return getRuntimePermissions();
    }

    public void onCheckPermissionSucceed() {
        if ((CTA.allowUseOnOfflineGlobal() && allowUseOnOffline()) || CTA.canConnectNetwork()) {
            onCtaChecked(true);
        } else if (BuildUtil.isInternational()) {
            CTA.setCanConnectNetwork(true);
            onCtaChecked(true);
        } else if (!this.mCtaNoticeDialog.isAdded()) {
            this.mCtaAgreedListener = new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    BaseActivity.this.onCtaChecked(true);
                }
            };
            this.mCtaNoticeDialog.setOnNegativeButtonClickListener(new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    BaseActivity.this.onCtaChecked(false);
                }
            });
            this.mCtaNoticeDialog.setOnPositiveButtonClickListener(this.mCtaAgreedListener);
            this.mCtaNoticeDialog.show(getFragmentManager(), "CtaNoticeFragment");
        }
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        this.mPermissionCheckHelper.onRequestPermissionsResult(requestCode, permissions, grantResults);
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
            Log.w("BaseActivity", "already has tag of fragment %s", tag);
        }
    }

    protected boolean supportShowOnScreenLocked() {
        return false;
    }

    protected boolean isShowWhenLocked() {
        return getIntent().getBooleanExtra("StartActivityWhenLocked", false);
    }

    protected boolean supportEnterSetting() {
        return false;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode != 82 && keyCode != 187) || !supportEnterSetting()) {
            return super.onKeyDown(keyCode, event);
        }
        IntentUtil.enterGallerySetting(this);
        return true;
    }

    protected final boolean resumed() {
        return this.mIsResumed;
    }

    public void startPostponedEnterTransition() {
        super.startPostponedEnterTransition();
        this.mIsStartingEnterTransition = true;
        TransitionPatching.setOnEnterStartedListener(this, new Runnable() {
            public void run() {
                BaseActivity.this.mIsStartingEnterTransition = false;
            }
        });
    }
}
