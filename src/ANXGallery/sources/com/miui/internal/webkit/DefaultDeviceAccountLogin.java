package com.miui.internal.webkit;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.miui.internal.R;
import com.miui.internal.hybrid.provider.AbsWebView;
import miui.app.ProgressDialog;

public class DefaultDeviceAccountLogin extends DeviceAccountLogin {
    private static final String pn = "dialog";
    private static final int po = 0;
    private static final int pp = 1;
    private static final int pq = 500;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message message) {
            if (message.what == 0) {
                DefaultDeviceAccountLogin.this.aY();
            } else if (message.what == 1) {
                DefaultDeviceAccountLogin.this.aZ();
                DefaultDeviceAccountLogin.this.pr.setVisibility(0);
            }
        }
    };
    private AbsWebView pr;
    private ProgressDialogFragment ps;

    public static class ProgressDialogFragment extends DialogFragment {
        public Dialog onCreateDialog(Bundle bundle) {
            Dialog progressDialog = new ProgressDialog(getActivity());
            progressDialog.setMessage(getString(R.string.web_sso_login_message));
            progressDialog.setIndeterminate(true);
            progressDialog.setCancelable(false);
            return progressDialog;
        }
    }

    public DefaultDeviceAccountLogin(Activity activity, AbsWebView absWebView) {
        super(activity);
        this.pr = absWebView;
    }

    private void aY() {
        aZ();
        this.ps = new ProgressDialogFragment();
        try {
            this.ps.show(this.mActivity.getFragmentManager(), pn);
        } catch (IllegalStateException e) {
        }
    }

    private void aZ() {
        this.mHandler.removeMessages(0);
        if (this.ps != null && this.ps.isAdded()) {
            this.ps.dismissAllowingStateLoss();
        }
        this.ps = null;
    }

    public void onLoginStart() {
        this.mHandler.sendEmptyMessageDelayed(0, 500);
    }

    public void onLoginSuccess(String str) {
        this.pr.loadUrl(str);
    }

    public void onLoginFail() {
        aZ();
        this.pr.setVisibility(0);
        Toast.makeText(this.mActivity, R.string.web_sso_login_fail, 0).show();
    }

    public void onLoginCancel() {
        aZ();
        this.pr.setVisibility(0);
    }

    public void onLoginPageFinished() {
        this.mHandler.sendEmptyMessageDelayed(1, 500);
    }
}
