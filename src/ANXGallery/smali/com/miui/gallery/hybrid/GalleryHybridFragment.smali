.class public Lcom/miui/gallery/hybrid/GalleryHybridFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "GalleryHybridFragment.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$MiuiGalleryJSBridge;,
        Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;
    }
.end annotation


# static fields
.field private static sSchemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentUrl:Ljava/lang/String;

.field private mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

.field private mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

.field private mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

.field private mNetworkConnected:Z

.field private mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

.field private mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

.field private mWebview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    .line 77
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "tel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "sip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    const-string/jumbo v1, "smsto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    const-string v1, "mailto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    const-string v1, "micloud"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 87
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->reload()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mCurrentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p1, "x1"    # Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Set;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->sSchemes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method private configureWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->initSettings()V

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$OpenDownloadListener;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$MiuiGalleryJSBridge;

    invoke-direct {v1, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$MiuiGalleryJSBridge;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    const-string v2, "MiuiGalleryJSBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private ensureExistence(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 506
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 510
    :cond_0
    return-void
.end method

.method private initLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setIndeterminate(Z)V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setProgress(I)V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onStartLoading(Z)V

    .line 173
    sget-object v0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingState:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 174
    return-void
.end method

.method private initSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 230
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 231
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 232
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 234
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 235
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 236
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 237
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 238
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 240
    invoke-direct {p0, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setGeoLocation(Landroid/webkit/WebSettings;)V

    .line 241
    invoke-direct {p0, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setAppCache(Landroid/webkit/WebSettings;)V

    .line 242
    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setDOMStorage(Landroid/webkit/WebSettings;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setBrowserUA(Landroid/webkit/WebSettings;)V

    .line 244
    return-void
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    .prologue
    .line 585
    const-string v1, "GalleryHybridFragment"

    const-string v2, "Register network connectivity changed receiver"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    if-nez v1, :cond_0

    .line 587
    new-instance v1, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    .line 589
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 590
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    return-void
.end method

.method private reload()V
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->loadUrl(Ljava/lang/String;)V

    .line 615
    :cond_0
    return-void
.end method

.method private setAppCache(Landroid/webkit/WebSettings;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 499
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 500
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "cacheDir":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->ensureExistence(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method private setBrowserUA(Landroid/webkit/WebSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "sbUA":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, "MiuiGallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, "lg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, "XiaoMi/MiuiBrowser/4.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private static setDOMStorage(Landroid/webkit/WebSettings;)V
    .locals 1
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 515
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 516
    return-void
.end method

.method private setGeoLocation(Landroid/webkit/WebSettings;)V
    .locals 4
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 492
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 493
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "geodatabase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "dir":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private stepsToGoBack()I
    .locals 6

    .prologue
    .line 570
    const/4 v0, 0x1

    .line 571
    .local v0, "count":I
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 572
    .local v3, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 573
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 574
    sub-int v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 576
    add-int/lit8 v0, v0, 0x1

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "GalleryHybridFragment"

    const-string v1, "Unregister network connectivity changed receiver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mNetworkConnectivityReceiver:Lcom/miui/gallery/hybrid/GalleryHybridFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 597
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "hybrid"

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "GalleryHybridFragment"

    const-string v1, "The url should not be null, load nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->initLoadingState()V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadWebLoginUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string v0, "GalleryHybridFragment"

    const-string v3, "cta not allowed"

    invoke-static {v0, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const-string v0, "GalleryHybridFragment"

    const-string v3, "The url should not be null, load nothing"

    invoke-static {v0, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->initLoadingState()V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weblogin:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "loginUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 150
    .local v1, "account":Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$2;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->registerConnectivityReceiver()V

    .line 184
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 548
    iget-object v6, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 549
    iget-object v6, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 550
    .local v3, "list":Landroid/webkit/WebBackForwardList;
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->stepsToGoBack()I

    move-result v0

    .line 551
    .local v0, "backSteps":I
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 552
    .local v1, "curIndex":I
    if-le v0, v1, :cond_1

    .line 566
    .end local v0    # "backSteps":I
    .end local v1    # "curIndex":I
    .end local v3    # "list":Landroid/webkit/WebBackForwardList;
    :cond_0
    :goto_0
    return v5

    .line 555
    .restart local v0    # "backSteps":I
    .restart local v1    # "curIndex":I
    .restart local v3    # "list":Landroid/webkit/WebBackForwardList;
    :cond_1
    sub-int v5, v1, v0

    invoke-virtual {v3, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 556
    .local v2, "historyItem":Landroid/webkit/WebHistoryItem;
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "preTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 558
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    if-eqz v5, :cond_2

    .line 559
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    invoke-interface {v5, v4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;->onReceivedTitle(Ljava/lang/String;)V

    .line 562
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    neg-int v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 563
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 540
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 541
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    .line 544
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 545
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->unregisterConnectivityReceiver()V

    .line 189
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDetach()V

    .line 190
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 111
    const v1, 0x7f04008e

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    new-instance v2, Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    .line 114
    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mPullToRefreshWebView:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->configureWebView()V

    .line 123
    const v1, 0x7f120179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    iput-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mLoadingProgressView:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v1, v3, v3, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onInit(ZZLcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;)V

    .line 125
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 196
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->reload()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 202
    return-void
.end method

.method public setHybridViewEventListener(Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->mHybridViewEventListener:Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    .line 106
    return-void
.end method
