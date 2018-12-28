.class public Lcom/miui/gallery/ui/PhotoPageFragment;
.super Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;,
        Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;,
        Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;,
        Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;,
        Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;
    }
.end annotation


# instance fields
.field private isFromCamera:Z

.field private mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

.field private mAlwaysShowMenubar:Z

.field private mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

.field private mDataLoaded:Z

.field private mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

.field private mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

.field private mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

.field private mFromRecommendFacePage:Z

.field private mHasSendDismissCast:Z

.field private mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

.field private mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

.field private mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

.field private mNeedConfirmPassWord:Z

.field private mOnExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

.field private mOnPhotoMatrixChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

.field private mOnPhotoScaleChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

.field private mOnSingleTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

.field private mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

.field private mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

.field private mPreviewMode:Z

.field private mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

.field private mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

.field private mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

.field private mShowSecretInAddDialog:Z

.field private mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

.field private mStartWhenLocked:Z

.field private mStartWhenLockedAndSecret:Z

.field private mTheme:I

.field private mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

.field private mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

.field private mUserShowBarIndex:I

.field private mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

.field private mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;-><init>()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTheme:I

    .line 1215
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$5;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    .line 1222
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$6;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    .line 1234
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$7;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnSingleTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    .line 1254
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$8;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoScaleChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    .line 1268
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$9;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoMatrixChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    .line 1284
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$10;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 4150
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/ui/PhotoPageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "x3"    # Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->needDismissKeyGuard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->dismissKeyGuard()V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getItemClickEventCategory(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnTransitEnd()V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->prohibitOperateProcessingItem(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mShowSecretInAddDialog:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/miui/gallery/ui/PhotoPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mShowSecretInAddDialog:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->downloadOrigin()V

    return-void
.end method

.method static synthetic access$3900(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLockedAndSecret:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTheme(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/miui/gallery/ui/PhotoPageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onBarsCreated()V

    return-void
.end method

.method static synthetic access$6800(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->hideActionBarView()V

    return-void
.end method

.method static synthetic access$6900(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->showActionBarView()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageTopBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->activityAlive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBarHeight()I

    move-result v0

    return v0
.end method

.method private activityAlive()Z
    .locals 1

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private alwaysShowMenubar()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlwaysShowMenubar:Z

    return v0
.end method

.method private configViewLayout(Landroid/view/View;)V
    .locals 28
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 330
    .local v11, "res":Landroid/content/res/Resources;
    const v24, 0x7f0a0003

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v16

    .line 331
    .local v16, "shareTitleRatio":F
    const v24, 0x7f0a0001

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    .line 332
    .local v13, "sharePagerRatio":F
    const/high16 v24, 0x7f0a0000

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    .line 333
    .local v12, "shareChannelRatio":F
    const v24, 0x7f0a0002

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v15

    .line 334
    .local v15, "shareTitlePaddingRatio":F
    const v24, 0x7f090004

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->resolveGravity(I)I

    move-result v14

    .line 336
    .local v14, "shareTitleGravity":I
    const v24, 0x7f120212

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 337
    .local v17, "slipLayout":Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    const v24, 0x7f120213

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 338
    .local v18, "title":Landroid/widget/TextView;
    const v24, 0x7f120001

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 340
    .local v5, "choice":Landroid/view/View;
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenHeight()I

    move-result v24

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenWidth()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 341
    .local v20, "viewHeight":I
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenHeight()I

    move-result v24

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenWidth()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 343
    .local v21, "viewWidth":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 344
    .local v19, "titleHeight":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-int v6, v0

    .line 345
    .local v6, "choiceHeight":I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v0, v19

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 346
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 347
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v15

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 348
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setFixedSideSlipDistance(I)V

    .line 351
    const v24, 0x7f0b023c

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 352
    .local v23, "widthSlipMargin":I
    const v24, 0x7f0b034b

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 353
    .local v9, "pagerMargin":I
    const v24, 0x7f0b034c

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 354
    .local v10, "pagerSlipMargin":I
    move v7, v13

    .line 355
    .local v7, "heightRatio":F
    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    sub-float v22, v24, v25

    .line 356
    .local v22, "widthRatio":F
    const/high16 v24, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v25, v0

    mul-float v24, v24, v25

    int-to-float v0, v9

    move/from16 v25, v0

    div-float v8, v24, v25

    .line 357
    .local v8, "marginRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/miui/gallery/widget/ViewPager;->setHeightSlipRatio(F)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setWidthSlipRatio(F)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/miui/gallery/widget/ViewPager;->setMarginSlipRatio(F)V

    .line 360
    return-void
.end method

.method private createBars()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 531
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 537
    .local v1, "listener":Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v4, v5, v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    .line 538
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isShowBarsWhenEntering()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 539
    .local v0, "delayInitMenus":Z
    :goto_0
    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->setHasOptionsMenu(Z)V

    .line 542
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFragment$4;

    invoke-direct {v4, p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 554
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v6, v6, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 555
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 556
    return-void

    .line 538
    .end local v0    # "delayInitMenus":Z
    .end local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissKeyGuard()V
    .locals 3

    .prologue
    .line 1344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mHasSendDismissCast:Z

    .line 1345
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1346
    return-void
.end method

.method private doDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 1
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "firstLoad"    # Z

    .prologue
    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDataLoaded:Z

    .line 469
    if-eqz p2, :cond_0

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->initSelected(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->updateSet(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 477
    :cond_1
    return-void
.end method

.method private doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "downloadCallback"    # Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    .prologue
    .line 1381
    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFragment$13;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$13;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1415
    .local v3, "onDownloadListener":Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    new-instance v1, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v6

    invoke-direct {v1, v4, p2, v6, v7}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    .line 1416
    .local v1, "downloadItem":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v2, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-static {v2}, Lcom/miui/gallery/ui/DownloadFragment;->newInstance(Ljava/util/ArrayList;)Lcom/miui/gallery/ui/DownloadFragment;

    move-result-object v0

    .line 1419
    .local v0, "downloadFragment":Lcom/miui/gallery/ui/DownloadFragment;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/DownloadFragment;->setOnDownloadListener(Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;)V

    .line 1420
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "DownloadFragment"

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/ui/DownloadFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method private doOnItemChanged(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1127
    .local v0, "curDataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_2

    .line 1128
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTopBar(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1129
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v1, :cond_2

    .line 1136
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1139
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v1, :cond_3

    .line 1140
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->refreshMask(Z)V

    .line 1142
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v1, :cond_4

    .line 1143
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1145
    :cond_4
    return-void
.end method

.method private doOnItemSettled(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x2000

    .line 1154
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1155
    .local v0, "curDataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_7

    .line 1156
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    if-eqz v2, :cond_0

    .line 1157
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v2, :cond_1

    .line 1160
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v2, v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    .line 1162
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v2, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1165
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    if-eqz v2, :cond_3

    .line 1166
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1168
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v2, :cond_4

    .line 1169
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1171
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v2, :cond_5

    .line 1172
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1174
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v3

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBarHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActionBarVisibleChanged(ZI)V

    .line 1176
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1177
    .local v1, "flags":I
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1178
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_6

    .line 1179
    const-string v2, "PhotoPageFragment"

    const-string v3, "add FLAG_SECURE"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1189
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 1191
    .end local v1    # "flags":I
    :cond_7
    return-void

    .line 1183
    .restart local v1    # "flags":I
    :cond_8
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_6

    .line 1184
    const-string v2, "PhotoPageFragment"

    const-string v3, "clear FLAG_SECURE"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private doOnPause()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->pause()V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->pause()V

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->disableRemoteControl()V

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    .line 603
    :cond_3
    return-void
.end method

.method private doOnResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/gallery/util/SystemUiUtil;->setSystemBarsVisibility(ZLandroid/view/View;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->resume()V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->resume()V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->enableRemoteControl()V

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isNeedConfirmPassWord(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    .line 621
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V

    .line 625
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    if-nez v0, :cond_5

    .line 626
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    .line 627
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.gallery.action.VOICE_ASSISTANT_SHARE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 629
    :cond_5
    return-void
.end method

.method private doOnTransitEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->delayDoAfterTransit()V

    .line 418
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miu.gallery.action.ENTER_PHOTO_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->createBars()V

    .line 431
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->supportProjection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    .line 434
    :cond_3
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .line 435
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    .line 436
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    .line 437
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .line 439
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    .line 440
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getRefocusEnterView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .line 441
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .line 444
    :cond_4
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    .line 448
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnResume()V

    .line 451
    :cond_5
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDataLoaded:Z

    if-eqz v0, :cond_6

    .line 452
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 453
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemChanged(I)V

    .line 454
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemSettled(I)V

    .line 457
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setBackgroundAlpha(F)V

    goto/16 :goto_0
.end method

.method private downloadOrigin()V
    .locals 2

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 1350
    .local v0, "pageItem":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->downloadOrigin()V

    .line 1353
    :cond_0
    return-void
.end method

.method private finishActivity(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 520
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.EXIT_PHOTO_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "photo_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 526
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 528
    :cond_1
    return-void
.end method

.method private fromRecommendFacePage()Z
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFromRecommendFacePage:Z

    return v0
.end method

.method private getActionBarHeight()I
    .locals 5

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 1031
    .local v0, "actionBarHeight":I
    if-lez v0, :cond_0

    move v1, v0

    .line 1035
    .end local v0    # "actionBarHeight":I
    .local v1, "actionBarHeight":I
    :goto_0
    return v1

    .line 1034
    .end local v1    # "actionBarHeight":I
    .restart local v0    # "actionBarHeight":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    move v1, v0

    .line 1035
    .end local v0    # "actionBarHeight":I
    .restart local v1    # "actionBarHeight":I
    goto :goto_0
.end method

.method private getItemClickEventCategory(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4143
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4144
    const-string v0, "photo_secret"

    .line 4146
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "photo"

    goto :goto_0
.end method

.method private hideActionBarView()V
    .locals 2

    .prologue
    .line 830
    const-string v0, "PhotoPageFragment"

    const-string v1, "hideActionBarView"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->hide()V

    .line 835
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->hideBottomMenu()V

    .line 836
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->hideMaskImmediately()V

    goto :goto_0
.end method

.method private inPreviewMode()Z
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isPendingSlipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionBarVisible()Z
    .locals 1

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFromCamera()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    return v0
.end method

.method private isNeedConfirmPassWord(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1052
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviewMode()Z
    .locals 1

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->fromRecommendFacePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPreviewMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureKeyguard()Z
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 254
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    return v1
.end method

.method private isShowBarsWhenEntering()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "photo_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/UriUtil;->isNetUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->alwaysShowMenubar()Z

    move-result v3

    if-nez v3, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.miui.gallery.extra.show_bars_when_enter"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isStatUserShowMenuBar()Z
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransparentTheme()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 225
    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTheme:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needDismissKeyGuard()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLockedAndSecret:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mHasSendDismissCast:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/miui/gallery/ui/PhotoPageFragment;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "theme"    # I

    .prologue
    .line 182
    if-nez p2, :cond_0

    .line 183
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "data":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 185
    .restart local p2    # "data":Landroid/os/Bundle;
    :cond_0
    const-string v1, "key_theme"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    if-eqz p0, :cond_1

    .line 187
    const-string v1, "photo_uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    if-eqz p1, :cond_2

    .line 190
    const-string v1, "mime_type"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_2
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;-><init>()V

    .line 193
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 194
    return-object v0
.end method

.method private onActionBarVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 988
    if-eqz p1, :cond_7

    .line 989
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->showMoreFuncExceptRefocus(Z)V

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v1, :cond_1

    .line 993
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->show()V

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->tryChangeButtonVisible(Z)V

    .line 998
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v1, :cond_3

    .line 999
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->onActionBarVisibilityChanged(Z)V

    .line 1015
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v1, :cond_4

    .line 1016
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->refreshMask(Z)V

    .line 1018
    :cond_4
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting:Z

    if-nez v1, :cond_6

    .line 1019
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTheme(Z)V

    .line 1020
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBarHeight()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActionBarVisibleChanged(ZI)V

    .line 1021
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/util/SystemUiUtil;->setSystemBarsVisibility(ZLandroid/view/View;)V

    .line 1022
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_6

    .line 1023
    if-eqz p1, :cond_5

    const/4 v0, -0x1

    .line 1024
    .local v0, "navigationColor":I
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/compat/view/WindowCompat;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 1027
    .end local v0    # "navigationColor":I
    :cond_6
    return-void

    .line 1002
    :cond_7
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v1, :cond_8

    .line 1003
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->hideMoreFuncExceptRefocus(Z)V

    .line 1005
    :cond_8
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v1, :cond_9

    .line 1006
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->hide()V

    .line 1008
    :cond_9
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v1, :cond_a

    .line 1009
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->tryChangeButtonVisible(Z)V

    .line 1011
    :cond_a
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->onActionBarVisibilityChanged(Z)V

    goto :goto_0
.end method

.method private onBarsCreated()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    .line 569
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 570
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTopBar(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 575
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isShowBarsWhenEntering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    .line 579
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 580
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    .line 581
    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 587
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    .line 584
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 585
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    goto :goto_0
.end method

.method private parseArguments()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 231
    const-string v2, "photo_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 235
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    const-string v2, "from_MiuiCamera"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    .line 236
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    if-eqz v2, :cond_2

    .line 237
    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    .line 238
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isSecureKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLockedAndSecret:Z

    .line 242
    :cond_2
    const-string v2, "key_theme"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTheme:I

    .line 244
    const-string v2, "photo_always_show_menubar"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlwaysShowMenubar:Z

    .line 245
    const-string v2, "from_recommend_face_page"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFromRecommendFacePage:Z

    .line 246
    const-string v2, "photo_preview_mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPreviewMode:Z

    move v4, v3

    .line 247
    goto :goto_0

    :cond_3
    move v2, v4

    .line 238
    goto :goto_1
.end method

.method private prohibitOperateProcessingItem(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 2
    .param p1, "current"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1842
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->isProcessingMedia(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0e02e9

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1844
    const/4 v0, 0x1

    .line 1846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshTheme(Z)V
    .locals 2
    .param p1, "quickly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 978
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    if-eqz v0, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->inPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setDarkTheme(ZZ)V

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setLightTheme(ZZ)V

    goto :goto_0
.end method

.method private refreshTopBar(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 559
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/BaseDataItem;->getViewTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;->setTitle(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/BaseDataItem;->getViewSubTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;->setSubTitle(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageTopBar;->setLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void
.end method

.method private resolveGravity(I)I
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 311
    sparse-switch p1, :sswitch_data_0

    .line 317
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 313
    :sswitch_0
    const/16 v0, 0x11

    goto :goto_0

    .line 315
    :sswitch_1
    const/16 v0, 0x51

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x51 -> :sswitch_1
    .end sparse-switch
.end method

.method private setActionBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    if-eqz p1, :cond_3

    .line 798
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isSlipped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 811
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActionBarVisibilityChanged(Z)V

    goto :goto_0

    .line 806
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->alwaysShowMenubar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_1
.end method

.method private showActionBarView()V
    .locals 2

    .prologue
    .line 815
    const-string v0, "PhotoPageFragment"

    const-string/jumbo v1, "showActionBarView"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->show()V

    .line 820
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->showBottomMenu()V

    .line 821
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->showMaskImmediately()V

    goto :goto_0
.end method

.method private statUserShowMenuBar()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1111
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    if-ltz v2, :cond_1

    .line 1112
    .local v0, "isUserShowBar":Z
    :goto_0
    const-string v2, "isUserShowMenuBar"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    if-eqz v0, :cond_0

    .line 1114
    const-string/jumbo v2, "showBarIndex"

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :cond_0
    const-string v2, "photo"

    const-string v3, "photo_user_show_menu_bar"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1117
    return-void

    .line 1111
    .end local v0    # "isUserShowBar":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportProjection()Z
    .locals 1

    .prologue
    .line 1850
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->needImpunityDeclaration()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected delayDoAfterTransit()V
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const-string v0, "PhotoPageFragment"

    const-string v1, "delayDoAfterTransit but not added"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnTransitEnd()V

    goto :goto_0
.end method

.method protected downloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
    .locals 7
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "downloadCallback"    # Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    .prologue
    .line 1360
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/PhotoPageFragment$11;

    invoke-direct {v5, p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$11;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    new-instance v6, Lcom/miui/gallery/ui/PhotoPageFragment$12;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$12;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 1378
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Ljava/lang/String;ZZ)V

    .line 1376
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    .line 517
    return-void
.end method

.method protected getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 272
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getPageLayout()Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400de

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1073
    const-string v0, "photo"

    return-object v0
.end method

.method protected getPhotoPageInteractionListener()Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 502
    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    const v1, 0x7f120219

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "PhotoPageFragment"

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const v0, 0x7f0f00a8

    .line 261
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f00a7

    goto :goto_0
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 644
    if-eqz p2, :cond_0

    .line 645
    const-string v1, "extra_photo_edit_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "editType":Ljava/lang/String;
    const-string v1, "extra_photo_editor_type_common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onActivityReenter(Landroid/content/Intent;)V

    .line 656
    .end local v0    # "editType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 650
    .restart local v0    # "editType":Ljava/lang/String;
    :cond_1
    const-string v1, "extra_photo_editor_type_refocus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onActivityReenter(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 660
    sparse-switch p1, :sswitch_data_0

    .line 707
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 708
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 709
    return-void

    .line 662
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->exitSlideShow()V

    goto :goto_0

    .line 667
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onActivityResult(ILandroid/content/Intent;)V

    .line 670
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "photo_secret_finish"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    goto :goto_0

    .line 673
    :cond_2
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 677
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->onDualPhotoEdited(Landroid/content/Intent;)V

    goto :goto_0

    .line 682
    :sswitch_3
    if-eq p2, v0, :cond_3

    .line 683
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    goto :goto_0

    .line 685
    :cond_3
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 689
    :sswitch_4
    if-ne p2, v0, :cond_4

    .line 690
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 692
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    goto :goto_0

    .line 696
    :sswitch_5
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onActivityResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 701
    :sswitch_6
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->onActivityResult(Landroid/content/Intent;)V

    .line 703
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    goto :goto_0

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x1b -> :sswitch_3
        0x1e -> :sswitch_1
        0x25 -> :sswitch_2
        0x26 -> :sswitch_4
        0x2c -> :sswitch_5
        0x2d -> :sswitch_6
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doExit()V

    .line 497
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2169
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2170
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_1

    .line 2174
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V

    .line 2176
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 199
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->parseArguments()Z

    move-result v0

    .line 201
    .local v0, "argValid":Z
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 202
    if-nez v0, :cond_1

    .line 203
    const-string v2, "PhotoPageFragment"

    const-string v3, "params error %s"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->finish()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    if-eqz v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 210
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    invoke-direct {v2, p0, v7}, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    .line 211
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.intent.action.SCREEN_OFF"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 213
    :cond_2
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    invoke-direct {v2, p0, v7}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    .line 214
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const/4 v2, 0x0

    .line 762
    :goto_0
    return v2

    .line 753
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 754
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f130009

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, "operationMask":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 757
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 758
    const-string/jumbo v2, "support_operation_mask"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 760
    :cond_1
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-direct {v2, p0, p1, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/Menu;I)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .line 761
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/Menu;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    .line 762
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 0
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "firstLoad"    # Z

    .prologue
    .line 481
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 483
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1078
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->initFirstCacheBitmap()V

    .line 1079
    invoke-static {}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->clear()V

    .line 1080
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->onDestory()V

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v0, :cond_3

    .line 1090
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onDestroy()V

    .line 1092
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v0, :cond_4

    .line 1093
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->onDestroy()V

    .line 1095
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    if-eqz v0, :cond_5

    .line 1096
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->onDestroy()V

    .line 1098
    :cond_5
    invoke-static {}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->getInstance()Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->clearCache()V

    .line 1099
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isStatUserShowMenuBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1100
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->statUserShowMenuBar()V

    .line 1102
    :cond_6
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDestroy()V

    .line 1103
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 720
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDestroyView()V

    .line 721
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->onDestroy()V

    .line 722
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->release()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->release()V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->release()V

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->release()V

    .line 734
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v0, :cond_4

    .line 735
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->release()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .line 738
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v0, :cond_5

    .line 739
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->release()V

    .line 741
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    if-eqz v0, :cond_6

    .line 742
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->release()V

    .line 744
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDataLoaded:Z

    .line 745
    return-void
.end method

.method protected onExiting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 511
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 512
    return-void
.end method

.method public onImageLoadFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onImageLoadFinish(Ljava/lang/String;)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onImageLoadFinish(Ljava/lang/String;)V

    .line 1213
    :cond_1
    return-void
.end method

.method protected onItemChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1201
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemChanged(I)V

    .line 1202
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemChanged(I)V

    .line 1203
    return-void
.end method

.method protected onItemSettled(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1195
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemSettled(I)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemSettled(I)V

    .line 1197
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 780
    const-string v0, "PhotoPageFragment"

    const-string v1, "isInMultiWindowMode: %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->onMultiWindowModeChanged(Z)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onMultiWindowModeChanged(Z)V

    .line 787
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 775
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 633
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onPause()V

    .line 634
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnPause()V

    .line 635
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 770
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 639
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onResume()V

    .line 640
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnResume()V

    .line 641
    return-void
.end method

.method protected onShared()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onShared()V

    .line 716
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    .line 1058
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onStop()V

    .line 1059
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1063
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onTrimMemory(I)V

    .line 1064
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 1065
    const-string v0, "PhotoPageFragment"

    const-string v1, "onTrimMemory level:%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->clear()V

    .line 1067
    invoke-static {}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->clear()V

    .line 1069
    :cond_0
    return-void
.end method

.method protected onViewInflated(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onViewInflated(Landroid/view/View;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->configViewLayout(Landroid/view/View;)V

    .line 285
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->setHasOptionsMenu(Z)V

    .line 287
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->fromRecommendFacePage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnSingleTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnTapListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;)V

    .line 292
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoScaleChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnScaleChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;)V

    .line 293
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoMatrixChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnDisplayRectChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;)V

    .line 294
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnDownloadListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 295
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnExitListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;)V

    .line 296
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnAlphaChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;)V

    .line 299
    const v1, 0x7f120212

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 300
    .local v0, "slip":Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 302
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    const v1, 0x7f120211

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/IMultiThemeView;

    invoke-direct {v2, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;-><init>(Lcom/miui/gallery/widget/IMultiThemeView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    .line 303
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setDarkTheme(ZZ)V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isShowBarsWhenEntering()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SystemUiUtil;->setLayoutFullScreen(Landroid/view/View;Z)V

    .line 307
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 308
    return-void
.end method
