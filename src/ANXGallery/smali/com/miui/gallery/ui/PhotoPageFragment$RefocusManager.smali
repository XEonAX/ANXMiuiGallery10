.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefocusManager"
.end annotation


# instance fields
.field private mEnterView:Landroid/view/View;

.field private mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

.field private mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

.field private mOperationMask:I

.field private mRefocusEnterListener:Landroid/view/View$OnClickListener;

.field private mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

.field private mRefocusSupport:Z

.field private mResultHandle:Z

.field private mShouldShowGuidance:Ljava/lang/Boolean;

.field private mShowGuidanceRunnable:Ljava/lang/Runnable;

.field private mTarget:Ljava/lang/String;

.field private mTransRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/View;)V
    .locals 4
    .param p2, "enterView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3184
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3178
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mResultHandle:Z

    .line 3282
    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTransRunnable:Ljava/lang/Runnable;

    .line 3289
    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    .line 3322
    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusEnterListener:Landroid/view/View$OnClickListener;

    .line 3185
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->isDeviceSupportRefocus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3900(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    .line 3186
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 3187
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mOperationMask:I

    .line 3188
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-eqz v1, :cond_1

    .line 3189
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mEnterView:Landroid/view/View;

    .line 3190
    new-instance v1, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;-><init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    .line 3192
    :cond_1
    return-void

    .line 3187
    :cond_2
    const-string/jumbo v1, "support_operation_mask"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$5600(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3169
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->finishTransition()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusEnterListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mEnterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 3169
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->appearView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 3169
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->disappearView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3169
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->showGuidance()V

    return-void
.end method

.method static synthetic access$6302(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 3169
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShouldShowGuidance:Ljava/lang/Boolean;

    return-object p1
.end method

.method private appearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3344
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3351
    :goto_0
    return-void

    .line 3347
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3348
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusEnterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3349
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->dismissGuidance()V

    .line 3350
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->tryShowGuidance()V

    goto :goto_0
.end method

.method private disappearView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 3354
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3360
    :goto_0
    return-void

    .line 3357
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3358
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3359
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->dismissGuidance()V

    goto :goto_0
.end method

.method private dismissGuidance()V
    .locals 2

    .prologue
    .line 3402
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3403
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    .line 3406
    :cond_0
    return-void
.end method

.method private finishTransition()V
    .locals 2

    .prologue
    .line 3219
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTransRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3220
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 3221
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 3223
    :cond_0
    return-void
.end method

.method private getShowGuidanceRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3373
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    .line 3382
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showGuidance()V
    .locals 3

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    if-nez v0, :cond_0

    .line 3387
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    .line 3388
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 3389
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    const v1, 0x7f0e01e8

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 3390
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$5;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3398
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mGuidanceWindow:Lmiui/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mEnterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;Z)V

    .line 3399
    return-void
.end method

.method private tryShowGuidance()V
    .locals 4

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShouldShowGuidance:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3364
    const-string v0, "photo_refocus_effects"

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureGuidance;->hasEverUsed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShouldShowGuidance:Ljava/lang/Boolean;

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mShouldShowGuidance:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3367
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->getShowGuidanceRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3369
    :cond_1
    return-void

    .line 3364
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method onActivityReenter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 3195
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-nez v0, :cond_1

    .line 3209
    :cond_0
    :goto_0
    return-void

    .line 3198
    :cond_1
    if-eqz p1, :cond_0

    .line 3201
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTarget:Ljava/lang/String;

    .line 3202
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTarget:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mResultHandle:Z

    .line 3204
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 3205
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 3206
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onRefocusEdit(Landroid/content/Intent;)V

    .line 3207
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTransRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onActivityResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 3249
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mResultHandle:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 3250
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mResultHandle:Z

    .line 3258
    :cond_1
    :goto_0
    return-void

    .line 3253
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 3254
    .local v0, "target":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3257
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onRefocusEdit(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method onImageLoadFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3212
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTarget:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3213
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->finishTransition()V

    .line 3214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mTarget:Ljava/lang/String;

    .line 3216
    :cond_0
    return-void
.end method

.method onRefocusEdit(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 3261
    const-string v0, "PhotoPageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefocusEdit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-nez v0, :cond_1

    .line 3270
    :cond_0
    :goto_0
    return-void

    .line 3265
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendResultStatic(Landroid/content/Intent;)V

    .line 3266
    if-eqz p1, :cond_0

    .line 3269
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendInsert(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 3273
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-nez v0, :cond_1

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3276
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->dismissGuidance()V

    .line 3277
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    invoke-virtual {v0}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->destroy()V

    goto :goto_0
.end method

.method tryChangeButtonVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 3237
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-nez v1, :cond_1

    .line 3246
    :cond_0
    :goto_0
    return-void

    .line 3240
    :cond_1
    if-eqz p1, :cond_2

    .line 3241
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 3242
    .local v0, "photo":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0

    .line 3244
    .end local v0    # "photo":Lcom/miui/gallery/model/BaseDataItem;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mEnterView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mEnterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->disappearView(Landroid/view/View;)V

    goto :goto_0
.end method

.method updateItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3226
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSupport:Z

    if-nez v0, :cond_0

    .line 3234
    :goto_0
    return-void

    .line 3229
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mOperationMask:I

    and-int/2addr v0, v1

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3230
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;->onRecognized(ZLjava/lang/String;)V

    goto :goto_0

    .line 3232
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->mRefocusSDK:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->sendRecognize(Ljava/lang/String;)V

    goto :goto_0
.end method
