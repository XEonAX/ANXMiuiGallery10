package com.miui.internal.webkit;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import com.miui.internal.hybrid.provider.AbsWebView;
import com.miui.internal.util.ContextHelper;
import com.miui.internal.util.UrlResolverHelper;
import miui.util.UrlResolver;

public class WebViewClientDelegate {
    public static final int FEATURE_AUTO_LOGIN = 2;
    public static final int FEATURE_DEEP_LINK = 1;
    private static final int pw = -1;
    private LoginState pA;
    private boolean px;
    private boolean py;
    private DeviceAccountLogin pz;

    private enum LoginState {
        LOGIN_START,
        LOGIN_INPROGRESS,
        LOGIN_FINISHED
    }

    public WebViewClientDelegate() {
        this(-1);
    }

    public WebViewClientDelegate(int i) {
        this(i, -1);
    }

    public WebViewClientDelegate(int i, int i2) {
        this.pA = LoginState.LOGIN_FINISHED;
        i = (i & i2) | ((~i2) & -1);
        boolean z = true;
        this.px = (1 & i) != 0;
        if ((i & 2) == 0) {
            z = false;
        }
        this.py = z;
    }

    public boolean shouldOverrideUrlLoading(AbsWebView absWebView, String str) {
        if (!this.px || !UrlResolverHelper.isMiUrl(str)) {
            return false;
        }
        Context context = absWebView.getContext();
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addCategory("android.intent.category.BROWSABLE");
        ResolveInfo checkMiuiIntent = UrlResolver.checkMiuiIntent(context, packageManager, intent);
        if (checkMiuiIntent == null) {
            return false;
        }
        if (checkMiuiIntent.activityInfo != null) {
            context.startActivity(intent);
        }
        return true;
    }

    public void onPageStarted(AbsWebView absWebView, String str, Bitmap bitmap) {
        if (this.py && this.pA == LoginState.LOGIN_START) {
            this.pA = LoginState.LOGIN_INPROGRESS;
        }
    }

    public void onPageFinished(AbsWebView absWebView, String str) {
        if (this.py && this.pA == LoginState.LOGIN_INPROGRESS) {
            this.pA = LoginState.LOGIN_FINISHED;
            this.pz.onLoginPageFinished();
        }
    }

    public void onReceivedLoginRequest(AbsWebView absWebView, String str, String str2, String str3) {
        if (this.py) {
            Activity activityContextFromView = ContextHelper.getActivityContextFromView(absWebView.getRootView());
            if (this.pz == null) {
                this.pz = new DefaultDeviceAccountLogin(activityContextFromView, absWebView);
            }
            if (!absWebView.canGoForward()) {
                this.pA = LoginState.LOGIN_START;
                absWebView.setVisibility(4);
                this.pz.login(str, str2, str3);
            } else if (absWebView.canGoBack()) {
                absWebView.goBack();
            } else {
                activityContextFromView.finish();
            }
        }
    }
}
