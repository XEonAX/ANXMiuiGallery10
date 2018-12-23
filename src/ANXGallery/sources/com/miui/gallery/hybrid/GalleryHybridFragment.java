package com.miui.gallery.hybrid;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.hybrid.HybridLoadingProgressView.HybridLoadingState;
import com.miui.gallery.hybrid.HybridLoadingProgressView.HybridOnRefreshListener;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.OnRefreshListener;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshWebView;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.request.HostManager;
import com.miui.gallery.ui.BaseFragment;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.os.Rom;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import miui.webkit.WebViewClient;

public class GalleryHybridFragment extends BaseFragment implements HybridOnRefreshListener {
    private static Set<String> sSchemes = new HashSet();
    private String mCurrentUrl;
    private HybridViewEventListener mHybridViewEventListener;
    private HybridLoadingProgressView mLoadingProgressView;
    private HybridLoadingState mLoadingState;
    private boolean mNetworkConnected;
    private NetworkConnectivityChangedReceiver mNetworkConnectivityReceiver;
    private PullToRefreshWebView mPullToRefreshWebView;
    private WebView mWebview;

    public interface HybridViewEventListener {
        void onReceivedTitle(String str);
    }

    private class GalleryHybridChromeClient extends WebChromeClient {
        private GalleryHybridChromeClient() {
        }

        /* synthetic */ GalleryHybridChromeClient(GalleryHybridFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceivedTitle(WebView view, String title) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onReceivedTitle: already detached, do nothing");
                return;
            }
            super.onReceivedTitle(view, title);
            if (GalleryHybridFragment.this.mHybridViewEventListener != null) {
                GalleryHybridFragment.this.mHybridViewEventListener.onReceivedTitle(title);
            }
        }

        public void onGeolocationPermissionsShowPrompt(String origin, Callback callback) {
            callback.invoke(origin, true, false);
        }

        public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onJsConfirm: already detached, do nothing");
                return false;
            }
            Builder builder = new Builder(GalleryHybridFragment.this.mActivity);
            String title = view.getTitle();
            if (!TextUtils.isEmpty(title)) {
                builder.setTitle(title);
            }
            builder.setMessage(message);
            builder.setPositiveButton(17039370, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    result.confirm();
                }
            });
            builder.setNegativeButton(17039360, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    result.cancel();
                }
            });
            builder.setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialog) {
                    result.cancel();
                }
            });
            builder.show();
            return true;
        }

        public boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onJsAlert: already detached, do nothing");
                return false;
            }
            Builder builder = new Builder(GalleryHybridFragment.this.mActivity);
            String title = view.getTitle();
            if (!TextUtils.isEmpty(title)) {
                builder.setTitle(title);
            }
            builder.setMessage(message);
            builder.setPositiveButton(17039370, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    result.confirm();
                }
            });
            builder.setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialog) {
                    result.cancel();
                }
            });
            builder.show();
            return true;
        }

        public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onJsPrompt: already detached, do nothing");
                return false;
            } else if (!"MiuiGallery-finish-queuing".equals(message)) {
                return false;
            } else {
                GalleryHybridFragment.this.mActivity.setResult(-1, null);
                GalleryHybridFragment.this.mActivity.finish();
                result.confirm();
                return true;
            }
        }

        public void onProgressChanged(WebView view, int progress) {
            Log.d("GalleryHybridFragment", "onProgressChanged: " + progress);
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onProgressChanged: already detached, do nothing");
                return;
            }
            super.onProgressChanged(view, progress);
            if (GalleryHybridFragment.this.mLoadingProgressView != null && progress - GalleryHybridFragment.this.mLoadingProgressView.getProgress() > 0 && progress >= 0 && progress <= 100) {
                GalleryHybridFragment.this.mLoadingProgressView.setProgress(progress);
            }
        }
    }

    private class GalleryHybridWebViewClient extends WebViewClient {
        private GalleryHybridWebViewClient() {
        }

        /* synthetic */ GalleryHybridWebViewClient(GalleryHybridFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "shouldOverrideUrlLoading: already detached, do nothing");
                return false;
            }
            GalleryHybridFragment.this.mLoadingState = HybridLoadingState.OK;
            GalleryHybridFragment.this.mLoadingProgressView.setProgress(10);
            GalleryHybridFragment.this.mLoadingProgressView.onStartLoading(false);
            if (HostManager.isGalleryUrl(url)) {
                view.loadUrl(url);
                return true;
            }
            boolean shouldOverride = super.shouldOverrideUrlLoading(view, url);
            if (shouldOverride) {
                return shouldOverride;
            }
            return GalleryHybridFragment.sSchemes.contains(Uri.parse(url).getScheme()) ? tryToOverrideUrlLoading(view, url) : false;
        }

        private boolean tryToOverrideUrlLoading(WebView view, String url) {
            try {
                Intent intent = Intent.parseUri(url, 1);
                intent.addCategory("android.intent.category.BROWSABLE");
                intent.setComponent(null);
                Intent selector = intent.getSelector();
                if (selector != null) {
                    selector.addCategory("android.intent.category.BROWSABLE");
                    selector.setComponent(null);
                }
                intent.putExtra("com.android.browser.application_id", view.getContext().getPackageName());
                try {
                    view.getContext().startActivity(intent);
                    return true;
                } catch (Throwable ex) {
                    Log.w("GalleryHybridFragment", ex);
                    return false;
                }
            } catch (Throwable ex2) {
                Log.w("GalleryHybridFragment", ex2);
                return false;
            }
        }

        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            GalleryHybridFragment.this.mCurrentUrl = url;
            super.onPageStarted(view, url, favicon);
        }

        public void onPageFinished(WebView view, String url) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onPageFinished: already detached, do nothing");
                return;
            }
            super.onPageFinished(view, url);
            GalleryHybridFragment.this.mPullToRefreshWebView.onRefreshComplete();
            if (GalleryHybridFragment.this.mLoadingState != HybridLoadingState.OK) {
                GalleryHybridFragment.this.mLoadingProgressView.onError(false, GalleryHybridFragment.this.mLoadingState, null);
                GalleryHybridFragment.this.mPullToRefreshWebView.setVisibility(8);
                return;
            }
            GalleryHybridFragment.this.mLoadingProgressView.onStopLoading(false);
            GalleryHybridFragment.this.mLoadingProgressView.setVisibility(8);
            GalleryHybridFragment.this.mPullToRefreshWebView.setVisibility(0);
        }

        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            if (GalleryHybridFragment.this.mActivity == null) {
                Log.d("GalleryHybridFragment", "onReceivedError: already detached, do nothing");
                return;
            }
            super.onReceivedError(view, errorCode, description, failingUrl);
            GalleryHybridFragment.this.mPullToRefreshWebView.onRefreshComplete();
            if (NetworkUtils.isNetworkConnected()) {
                GalleryHybridFragment.this.mLoadingState = HybridLoadingState.SERVICE_ERROR;
            } else {
                GalleryHybridFragment.this.mLoadingState = HybridLoadingState.NETWORK_ERROR;
            }
        }

        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            handler.proceed();
        }
    }

    public class MiuiGalleryJSBridge {
        @JavascriptInterface
        public String getDeviceId() {
            if (HostManager.isInternalUrl(GalleryHybridFragment.this.mCurrentUrl)) {
                return MiscUtil.getHashedDeviceId(GalleryHybridFragment.this.getActivity());
            }
            return null;
        }
    }

    private class NetworkConnectivityChangedReceiver extends BroadcastReceiver {
        private NetworkConnectivityChangedReceiver() {
        }

        /* synthetic */ NetworkConnectivityChangedReceiver(GalleryHybridFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            boolean isConnected = NetworkUtils.isNetworkConnected();
            if (!GalleryHybridFragment.this.mNetworkConnected && isConnected) {
                GalleryHybridFragment.this.reload();
            }
            GalleryHybridFragment.this.mNetworkConnected = isConnected;
        }
    }

    private class OpenDownloadListener implements DownloadListener {
        private OpenDownloadListener() {
        }

        /* synthetic */ OpenDownloadListener(GalleryHybridFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
            GalleryHybridFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
        }
    }

    static {
        sSchemes.add("tel");
        sSchemes.add("sip");
        sSchemes.add("sms");
        sSchemes.add("smsto");
        sSchemes.add("mailto");
        sSchemes.add("micloud");
        if (Rom.IS_ALPHA || Rom.IS_DEV) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
    }

    public void onRefresh() {
        reload();
    }

    public void setHybridViewEventListener(HybridViewEventListener l) {
        this.mHybridViewEventListener = l;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.hybrid_view, container, false);
        this.mPullToRefreshWebView = (PullToRefreshWebView) view.findViewById(R.id.hybrid_view);
        this.mPullToRefreshWebView.setOnRefreshListener(new OnRefreshListener<WebView>() {
            public void onRefresh(PullToRefreshBase<WebView> pullToRefreshBase) {
                GalleryHybridFragment.this.mWebview.reload();
            }
        });
        this.mWebview = (WebView) this.mPullToRefreshWebView.getRefreshableView();
        configureWebView();
        this.mLoadingProgressView = (HybridLoadingProgressView) view.findViewById(R.id.loading_view);
        this.mLoadingProgressView.onInit(false, false, this);
        return view;
    }

    public void loadUrl(String url) {
        if (TextUtils.isEmpty(url)) {
            Log.e("GalleryHybridFragment", "The url should not be null, load nothing");
            return;
        }
        initLoadingState();
        this.mWebview.loadUrl(url);
    }

    public void loadWebLoginUrl(String url) {
        if (!CTA.canConnectNetwork()) {
            Log.e("GalleryHybridFragment", "cta not allowed");
        } else if (TextUtils.isEmpty(url)) {
            Log.e("GalleryHybridFragment", "The url should not be null, load nothing");
        } else {
            initLoadingState();
            String loginUrl = "weblogin:" + url;
            Account account = AccountHelper.getXiaomiAccount(this.mActivity);
            if (account != null) {
                AccountManager.get(this.mActivity).getAuthToken(account, loginUrl, null, false, new AccountManagerCallback<Bundle>() {
                    public void run(AccountManagerFuture<Bundle> future) {
                        try {
                            GalleryHybridFragment.this.mWebview.loadUrl(((Bundle) future.getResult()).getString("authtoken"));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }, null);
            }
        }
    }

    private void initLoadingState() {
        this.mLoadingProgressView.setIndeterminate(false);
        this.mLoadingProgressView.setProgress(10);
        this.mLoadingProgressView.onStartLoading(false);
        this.mLoadingState = HybridLoadingState.OK;
    }

    public String getPageName() {
        return "hybrid";
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        registerConnectivityReceiver();
    }

    public void onDetach() {
        unregisterConnectivityReceiver();
        super.onDetach();
    }

    public void onPause() {
        super.onPause();
        this.mWebview.onPause();
    }

    public void onResume() {
        super.onResume();
        this.mWebview.onResume();
    }

    private void configureWebView() {
        initSettings();
        this.mWebview.setWebViewClient(new GalleryHybridWebViewClient(this, null));
        this.mWebview.setWebChromeClient(new GalleryHybridChromeClient(this, null));
        this.mWebview.setOverScrollMode(2);
        this.mWebview.requestFocus();
        this.mWebview.setDownloadListener(new OpenDownloadListener(this, null));
        this.mWebview.addJavascriptInterface(new MiuiGalleryJSBridge(), "MiuiGalleryJSBridge");
    }

    private void initSettings() {
        WebSettings settings = this.mWebview.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setTextZoom(100);
        setGeoLocation(settings);
        setAppCache(settings);
        setDOMStorage(settings);
        setBrowserUA(settings);
    }

    private void setBrowserUA(WebSettings settings) {
        StringBuilder sbUA = new StringBuilder();
        sbUA.append(settings.getUserAgentString()).append(" ");
        sbUA.append("MiuiGallery").append(" ");
        sbUA.append("lg/").append(Locale.getDefault().toString()).append(" ");
        sbUA.append("XiaoMi/MiuiBrowser/4.3");
        settings.setUserAgentString(sbUA.toString());
    }

    private void setGeoLocation(WebSettings settings) {
        settings.setGeolocationEnabled(true);
        settings.setGeolocationDatabasePath(this.mActivity.getDir("geodatabase", 0).getPath());
    }

    private void setAppCache(WebSettings settings) {
        settings.setAppCacheEnabled(true);
        String cacheDir = this.mActivity.getDir("cache", 0).getPath();
        ensureExistence(cacheDir);
        settings.setAppCachePath(cacheDir);
    }

    private void ensureExistence(String cacheDir) {
        File file = new File(cacheDir);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    private static void setDOMStorage(WebSettings settings) {
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
    }

    public void onDestroy() {
        if (this.mWebview != null) {
            ((ViewGroup) this.mWebview.getParent()).removeView(this.mWebview);
            this.mWebview.destroy();
            this.mWebview = null;
        }
        super.onDestroy();
    }

    public boolean onBackPressed() {
        if (!this.mWebview.canGoBack()) {
            return false;
        }
        WebBackForwardList list = this.mWebview.copyBackForwardList();
        int backSteps = stepsToGoBack();
        int curIndex = list.getCurrentIndex();
        if (backSteps > curIndex) {
            return false;
        }
        String preTitle = list.getItemAtIndex(curIndex - backSteps).getTitle();
        if (!(TextUtils.isEmpty(preTitle) || this.mHybridViewEventListener == null)) {
            this.mHybridViewEventListener.onReceivedTitle(preTitle);
        }
        this.mWebview.goBackOrForward(-backSteps);
        return true;
    }

    private int stepsToGoBack() {
        int count = 1;
        WebBackForwardList list = this.mWebview.copyBackForwardList();
        int currentIndex = list.getCurrentIndex();
        for (int i = 0; i <= currentIndex; i++) {
            if (TextUtils.equals(this.mWebview.getUrl(), list.getItemAtIndex(currentIndex - i).getUrl())) {
                break;
            }
            count++;
        }
        return count;
    }

    private void registerConnectivityReceiver() {
        Log.d("GalleryHybridFragment", "Register network connectivity changed receiver");
        if (this.mNetworkConnectivityReceiver == null) {
            this.mNetworkConnectivityReceiver = new NetworkConnectivityChangedReceiver(this, null);
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mActivity.registerReceiver(this.mNetworkConnectivityReceiver, filter);
    }

    private void unregisterConnectivityReceiver() {
        Log.d("GalleryHybridFragment", "Unregister network connectivity changed receiver");
        this.mActivity.unregisterReceiver(this.mNetworkConnectivityReceiver);
    }

    private void reload() {
        if (!TextUtils.isEmpty(this.mWebview.getUrl())) {
            loadUrl(this.mWebview.getUrl());
        }
    }
}
