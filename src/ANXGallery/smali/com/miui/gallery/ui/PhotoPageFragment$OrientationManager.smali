.class Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationManager"
.end annotation


# instance fields
.field private isOrientationLocked:Z

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAppearAnim:Landroid/view/animation/Animation;

.field private mClickDismissRunnable:Ljava/lang/Runnable;

.field private mCurUiOrientation:I

.field private mDisappearAnim:Landroid/view/animation/Animation;

.field private mDismissLockRunnable:Ljava/lang/Runnable;

.field private mIsInMultiWindow:Z

.field private mMarginHorizontal:I

.field private mOrientationLock:Landroid/view/View;

.field private mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

.field private mPendingUnLock:Z

.field private mSensorEnable:Z

.field private mSensorRotation:I

.field private mShowLockRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2205
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2189
    const/4 v7, -0x1

    iput v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    .line 2190
    iput v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    .line 2197
    iput-boolean v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    .line 2198
    iput-boolean v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mPendingUnLock:Z

    .line 2200
    iput-boolean v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2206
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f120214

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 2207
    .local v2, "lockStub":Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 2208
    .local v3, "root":Landroid/view/View;
    const v7, 0x7f12021c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    .line 2209
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2210
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    .line 2211
    new-instance v7, Lcom/miui/gallery/util/OrientationSensor;

    iget-object v8, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v7, v8}, Lcom/miui/gallery/util/OrientationSensor;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    .line 2213
    invoke-static {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x2

    .line 2214
    .local v1, "lockStatus":I
    :goto_0
    iget-object v7, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v7}, Lcom/miui/gallery/compat/app/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mIsInMultiWindow:Z

    .line 2215
    packed-switch v1, :pswitch_data_0

    .line 2238
    :cond_0
    :goto_1
    return-void

    .line 2213
    .end local v1    # "lockStatus":I
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getLockStatus()I

    move-result v1

    goto :goto_0

    .line 2217
    .restart local v1    # "lockStatus":I
    :pswitch_0
    iput-boolean v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2218
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getRotation()I

    move-result v0

    .line 2219
    .local v0, "lockRotation":I
    iget-object v5, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 2220
    .local v4, "uiRotation":I
    iget-object v5, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getScreenOrientation(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2222
    if-eq v0, v4, :cond_0

    .line 2223
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->showLockDelay()V

    goto :goto_1

    .line 2227
    .end local v0    # "lockRotation":I
    .end local v4    # "uiRotation":I
    :pswitch_1
    iput-boolean v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2228
    iget-object v5, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 2231
    :pswitch_2
    iget-object v7, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 2232
    invoke-virtual {v7}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    .line 2231
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    iput-boolean v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2235
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->tryRestoreOrientation()V

    goto :goto_1

    :cond_2
    move v5, v6

    .line 2231
    goto :goto_2

    .line 2215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$4100(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->dismissLockInternal()V

    return-void
.end method

.method static synthetic access$4200(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->showLockInternal()V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mClickDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mClickDismissRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    return v0
.end method

.method static synthetic access$4702(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 2178
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mPendingUnLock:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2178
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnim()V

    return-void
.end method

.method private adjustLockPos()Z
    .locals 8

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x15

    const/16 v5, 0x13

    const/4 v3, 0x0

    .line 2471
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2472
    .local v1, "rotation":I
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    if-eq v2, v1, :cond_0

    move v2, v3

    .line 2510
    :goto_0
    return v2

    .line 2475
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2476
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v1, :pswitch_data_0

    .line 2509
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2510
    const/4 v2, 0x1

    goto :goto_0

    .line 2478
    :pswitch_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2479
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2480
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginHorizontal()I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2482
    :cond_1
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2483
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginVertical()I

    move-result v2

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2487
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2488
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2489
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginHorizontal()I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2491
    :cond_2
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2492
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginHorizontal()I

    move-result v2

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2496
    :pswitch_2
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2497
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginVertical()I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2500
    :pswitch_3
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2501
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2502
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginHorizontal()I

    move-result v2

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 2504
    :cond_3
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2505
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginHorizontal()I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 2476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private clearAnim()V
    .locals 2

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2343
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2344
    return-void
.end method

.method private clearAnimRunnable()V
    .locals 2

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDismissLockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2314
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDismissLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2316
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mShowLockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2317
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mShowLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mClickDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2320
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mClickDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2322
    :cond_2
    return-void
.end method

.method private disableAccelerometerRotationObserver()V
    .locals 2

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2390
    const-string v0, "PhotoPageFragment"

    const-string v1, "disableAccelerometerRotationObserver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 2394
    :cond_0
    return-void
.end method

.method private disableOrientationSensor()V
    .locals 2

    .prologue
    .line 2365
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->dismissLockInternal()V

    .line 2366
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    const-string v0, "PhotoPageFragment"

    const-string v1, "disableOrientationSensor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/OrientationSensor;->setOrientationChangedListener(Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;)V

    .line 2369
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->disable()V

    .line 2371
    :cond_0
    return-void
.end method

.method private dismissLockDelay()V
    .locals 4

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDismissLockRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDismissLockRunnable:Ljava/lang/Runnable;

    .line 2308
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnimRunnable()V

    .line 2309
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDismissLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2310
    return-void
.end method

.method private dismissLockInternal()V
    .locals 2

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2288
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDisappearAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f050009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDisappearAnim:Landroid/view/animation/Animation;

    .line 2291
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnim()V

    .line 2292
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mDisappearAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2293
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    :cond_1
    return-void
.end method

.method private enableAccelerometerRotationObserver()V
    .locals 4

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2386
    :cond_0
    :goto_0
    return-void

    .line 2377
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2378
    const-string v0, "PhotoPageFragment"

    const-string v1, "enableAccelerometerRotationObserver"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;-><init>(Landroid/os/Handler;Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 2380
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 2381
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 2380
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private enableOrientationSensor()V
    .locals 2

    .prologue
    .line 2354
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2358
    const-string v0, "PhotoPageFragment"

    const-string v1, "enableOrientationSensor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/OrientationSensor;->setOrientationChangedListener(Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;)V

    .line 2360
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationSensor:Lcom/miui/gallery/util/OrientationSensor;

    invoke-virtual {v0}, Lcom/miui/gallery/util/OrientationSensor;->enable()V

    goto :goto_0
.end method

.method private getMarginHorizontal()I
    .locals 2

    .prologue
    .line 2460
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mMarginHorizontal:I

    if-nez v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mMarginHorizontal:I

    .line 2463
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mMarginHorizontal:I

    return v0
.end method

.method private getMarginVertical()I
    .locals 2

    .prologue
    .line 2467
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getMarginHorizontal()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getScreenOrientation(I)I
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 2258
    packed-switch p1, :pswitch_data_0

    .line 2268
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 2260
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2262
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2264
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2266
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 2258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private lock()V
    .locals 4

    .prologue
    .line 2565
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2566
    .local v1, "uiRotation":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getScreenOrientation(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2567
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->lock(I)V

    .line 2568
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2571
    .local v0, "map":Ljava/util/Map;
    const-string v2, "lock"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    const-string v2, "photo"

    const-string v3, "orientation_lock"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2573
    return-void
.end method

.method private showClickAnim(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 13
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 2514
    const/high16 v9, 0x3f800000    # 1.0f

    .line 2515
    .local v9, "alpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2516
    .local v1, "scale":F
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "getChildTransformation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gallery/util/MiscUtil;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2517
    .local v10, "obj":Ljava/lang/Object;
    if-eqz v10, :cond_0

    move-object v12, v10

    .line 2518
    check-cast v12, Landroid/view/animation/Transformation;

    .line 2519
    .local v12, "transformation":Landroid/view/animation/Transformation;
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v9

    .line 2520
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MatrixUtil;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 2522
    .end local v12    # "transformation":Landroid/view/animation/Transformation;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnimRunnable()V

    .line 2523
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnim()V

    .line 2524
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2525
    .local v11, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2526
    const-wide/16 v2, 0xc8

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2527
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2528
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2529
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f99999a    # 1.2f

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v3, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2530
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2559
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2560
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2561
    return-void
.end method

.method private showLockDelay()V
    .locals 4

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mShowLockRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2326
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mShowLockRunnable:Ljava/lang/Runnable;

    .line 2335
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnimRunnable()V

    .line 2336
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mShowLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2337
    return-void
.end method

.method private showLockInternal()V
    .locals 2

    .prologue
    .line 2273
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->adjustLockPos()Z

    .line 2274
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAppearAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f050008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAppearAnim:Landroid/view/animation/Animation;

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2279
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnim()V

    .line 2280
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mAppearAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2281
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2283
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->dismissLockDelay()V

    .line 2284
    return-void
.end method

.method private unlock()V
    .locals 3

    .prologue
    .line 2576
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2577
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->unlock()V

    .line 2578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    .line 2580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2581
    .local v0, "map":Ljava/util/Map;
    const-string/jumbo v1, "unlock"

    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    const-string v1, "photo"

    const-string v2, "orientation_lock"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2583
    return-void
.end method


# virtual methods
.method onAccelerometerRotationChanged()V
    .locals 4

    .prologue
    .line 2241
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v1, :cond_0

    .line 2242
    const-string v1, "PhotoPageFragment"

    const-string v2, "activity has detached AccelerometerRotationChanged"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    :goto_0
    return-void

    .line 2245
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 2246
    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    .line 2245
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2249
    .local v0, "accelerometerRotation":I
    const-string v1, "PhotoPageFragment"

    const-string v2, "onAccelerometerRotationChanged %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2250
    if-nez v0, :cond_1

    .line 2251
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->lock()V

    goto :goto_0

    .line 2253
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->unlock()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2587
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mOrientationLock:Landroid/view/View;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2588
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->showClickAnim(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2613
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    if-eqz v0, :cond_1

    .line 2614
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->unlock()V

    .line 2618
    :goto_1
    return-void

    .line 2587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2616
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->lock()V

    goto :goto_1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindow"    # Z

    .prologue
    .line 2625
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mIsInMultiWindow:Z

    .line 2626
    return-void
.end method

.method onSensorOrientationChanged(II)V
    .locals 4
    .param p1, "last"    # I
    .param p2, "cur"    # I

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_1

    .line 2429
    const-string v0, "PhotoPageFragment"

    const-string v1, "activity has detached onOrientationChanged oldOrientation %d, newOrientation %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2440
    :cond_0
    :goto_0
    return-void

    .line 2432
    :cond_1
    invoke-static {p2}, Lcom/miui/gallery/util/OrientationSensor;->transfer2SurfaceRotation(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorRotation:I

    .line 2433
    const-string v0, "PhotoPageFragment"

    const-string v1, "onSensorOrientationChanged old %s, new %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2434
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_0

    .line 2435
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 2437
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->showLockInternal()V

    goto :goto_0
.end method

.method onUiOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2444
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 2445
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mCurUiOrientation:I

    .line 2446
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_0

    .line 2447
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mPendingUnLock:Z

    if-eqz v0, :cond_1

    .line 2448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mPendingUnLock:Z

    .line 2449
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0e0313

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2452
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->dismissLockInternal()V

    .line 2453
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->showLockDelay()V

    goto :goto_0
.end method

.method pause()V
    .locals 0

    .prologue
    .line 2422
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableOrientationSensor()V

    .line 2423
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableAccelerometerRotationObserver()V

    .line 2424
    return-void
.end method

.method release()V
    .locals 0

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnimRunnable()V

    .line 2348
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->clearAnim()V

    .line 2349
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableOrientationSensor()V

    .line 2350
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableAccelerometerRotationObserver()V

    .line 2351
    return-void
.end method

.method resume()V
    .locals 0

    .prologue
    .line 2417
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->enableOrientationSensor()V

    .line 2418
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->enableAccelerometerRotationObserver()V

    .line 2419
    return-void
.end method

.method setSensorEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2397
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    .line 2399
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->mSensorEnable:Z

    if-eqz v0, :cond_1

    .line 2401
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->enableOrientationSensor()V

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->disableOrientationSensor()V

    goto :goto_0
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2621
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2622
    return-void

    .line 2621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tryRestoreOrientation()V
    .locals 2

    .prologue
    .line 2409
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->isOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->getScreenOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2414
    :goto_0
    return-void

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
