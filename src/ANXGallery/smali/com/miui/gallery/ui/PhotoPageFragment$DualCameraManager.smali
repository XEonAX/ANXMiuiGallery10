.class Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
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
    name = "DualCameraManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;,
        Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;
    }
.end annotation


# instance fields
.field private mAppearAnim:Landroid/view/animation/Animation;

.field private mDisapperAnim:Landroid/view/animation/Animation;

.field private mDualCameraEnter:Landroid/view/ViewGroup;

.field private mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

.field private mParseState:I

.field private mParseTask:Landroid/os/AsyncTask;

.field private mSaveTask:Landroid/os/AsyncTask;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 4

    .prologue
    .line 3429
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3425
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    .line 3430
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f120215

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3431
    .local v0, "dualCameraStub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 3432
    .local v1, "root":Landroid/view/View;
    const v2, 0x7f120143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    .line 3433
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->getInstance()Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    .line 3434
    return-void
.end method

.method static synthetic access$6400(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .prologue
    .line 3409
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->resolveSupportFunc()V

    return-void
.end method

.method static synthetic access$6500(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
    .param p1, "x1"    # I

    .prologue
    .line 3409
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    return p1
.end method

.method static synthetic access$6700(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
    .param p1, "x1"    # Z

    .prologue
    .line 3409
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->setStereoBtnVisible(Z)V

    return-void
.end method

.method private appearView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Z

    .prologue
    .line 3477
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3478
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3479
    if-eqz p2, :cond_0

    .line 3480
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3481
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->getAppearAnim()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3483
    :cond_0
    return-void
.end method

.method private cancelParseTask()V
    .locals 2

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 3581
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseTask:Landroid/os/AsyncTask;

    .line 3583
    const-string v0, "PhotoPageFragment"

    const-string v1, "cancelParseTask"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    :cond_0
    return-void
.end method

.method private disappearView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Z

    .prologue
    .line 3486
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3487
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3488
    if-eqz p2, :cond_0

    .line 3489
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3490
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->getDisappearAnim()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3492
    :cond_0
    return-void
.end method

.method private getAppearAnim()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mAppearAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 3458
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mAppearAnim:Landroid/view/animation/Animation;

    .line 3459
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mAppearAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3460
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mAppearAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3462
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mAppearAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 3463
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mAppearAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getDisappearAnim()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDisapperAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 3468
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDisapperAnim:Landroid/view/animation/Animation;

    .line 3469
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDisapperAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3470
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDisapperAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3472
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDisapperAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 3473
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDisapperAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private isExternalEnvOK(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3648
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3649
    if-eqz p1, :cond_0

    .line 3650
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "support_operation_mask"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int v0, v1, v2

    .line 3651
    .local v0, "supportOptions":I
    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    .line 3654
    .end local v0    # "supportOptions":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLightStereoPhoto(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveSupportFunc()V
    .locals 7

    .prologue
    .line 3437
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3438
    .local v0, "count":I
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-virtual {v5}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->resolveExtraFuncs()Ljava/util/List;

    move-result-object v1

    .line 3440
    .local v1, "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3442
    .local v3, "needRemoveFuncs":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3443
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3444
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3445
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3442
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3447
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3451
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3452
    .restart local v4    # "view":Landroid/view/View;
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 3454
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private sendParseTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3574
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->cancelParseTask()V

    .line 3575
    const-string v0, "PhotoPageFragment"

    const-string v1, "excute parse task %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3576
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$ParsePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseTask:Landroid/os/AsyncTask;

    .line 3577
    return-void
.end method

.method private setStereoBtnVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3609
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->clearAnim()V

    .line 3610
    if-eqz p1, :cond_2

    .line 3611
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3612
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3614
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3615
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->showMoreFuncExceptRefocus(Z)V

    .line 3622
    :cond_1
    :goto_0
    return-void

    .line 3618
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 3619
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearAnim()V
    .locals 5

    .prologue
    .line 3499
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3500
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-virtual {v3}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->resolveExtraFuncs()Ljava/util/List;

    move-result-object v0

    .line 3501
    .local v0, "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3502
    .local v1, "id":I
    const v3, 0x7f120016

    if-eq v1, v3, :cond_0

    .line 3503
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3504
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3505
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 3510
    .end local v0    # "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public hideMoreFuncExceptRefocus(Z)V
    .locals 5
    .param p1, "anim"    # Z

    .prologue
    .line 3529
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3530
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 3531
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-virtual {v3}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->resolveExtraFuncs()Ljava/util/List;

    move-result-object v0

    .line 3532
    .local v0, "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3533
    .local v1, "id":I
    const v3, 0x7f120016

    if-eq v1, v3, :cond_0

    .line 3534
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3535
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3536
    invoke-direct {p0, v2, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->disappearView(Landroid/view/View;Z)V

    goto :goto_0

    .line 3542
    .end local v0    # "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public isDualCamera()Z
    .locals 1

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-virtual {v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->isExtraCamera()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3663
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3664
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 3665
    .local v0, "photo":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_1

    .line 3666
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3667
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2600(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3669
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3686
    .end local v0    # "photo":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    :goto_0
    return-void

    .line 3671
    .restart local v0    # "photo":Lcom/miui/gallery/model/BaseDataItem;
    :sswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/IntentUtil;->startFancyColorAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;Z)V

    .line 3672
    const-string v1, "photo"

    const-string/jumbo v2, "view_fancy_color"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3675
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/IntentUtil;->startRefocusAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;Z)V

    .line 3676
    const-string v1, "photo"

    const-string/jumbo v2, "view_refocus"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3679
    :sswitch_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/IntentUtil;->startFreeViewAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;Z)V

    .line 3680
    const-string v1, "photo"

    const-string/jumbo v2, "view_free_view"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3669
    :sswitch_data_0
    .sparse-switch
        0x7f120004 -> :sswitch_0
        0x7f120005 -> :sswitch_2
        0x7f120016 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 3566
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->cancelParseTask()V

    .line 3567
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mSaveTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 3568
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mSaveTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mSaveTask:Landroid/os/AsyncTask;

    .line 3571
    :cond_0
    return-void
.end method

.method public onDualPhotoEdited(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 3689
    if-eqz p1, :cond_1

    .line 3690
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3691
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 3692
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3693
    .local v0, "path":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3694
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mSaveTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    .line 3695
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mSaveTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3697
    :cond_0
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mSaveTask:Landroid/os/AsyncTask;

    .line 3701
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 3692
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->clearAnim()V

    .line 3562
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->stop(Landroid/content/Context;)V

    .line 3563
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->start(Landroid/content/Context;Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;)V

    .line 3558
    return-void
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v1, 0x0

    .line 3588
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    .line 3589
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3590
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->cancelParseTask()V

    .line 3591
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1600(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1600(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isSlipped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3592
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isExternalEnvOK(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isLightStereoPhoto(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3593
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->sendParseTask(Ljava/lang/String;)V

    .line 3602
    :cond_0
    :goto_0
    return-void

    .line 3595
    :cond_1
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    .line 3596
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->setStereoBtnVisible(Z)V

    goto :goto_0

    .line 3600
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->setStereoBtnVisible(Z)V

    goto :goto_0
.end method

.method public showMoreFuncExceptRefocus(Z)V
    .locals 5
    .param p1, "anim"    # Z

    .prologue
    .line 3513
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3514
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 3515
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualWrapper:Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    invoke-virtual {v3}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->resolveExtraFuncs()Ljava/util/List;

    move-result-object v0

    .line 3516
    .local v0, "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3517
    .local v1, "id":I
    const v3, 0x7f120016

    if-eq v1, v3, :cond_0

    .line 3518
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mDualCameraEnter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3519
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3520
    invoke-direct {p0, v2, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->appearView(Landroid/view/View;Z)V

    goto :goto_0

    .line 3526
    .end local v0    # "funcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public tryChangeStereoBtnVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 3625
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3626
    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    packed-switch v1, :pswitch_data_0

    .line 3645
    :cond_0
    :goto_0
    return-void

    .line 3628
    :pswitch_0
    if-eqz p1, :cond_1

    .line 3629
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 3630
    .local v0, "photo":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0

    .line 3632
    .end local v0    # "photo":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->setStereoBtnVisible(Z)V

    goto :goto_0

    .line 3636
    :pswitch_1
    if-nez p1, :cond_0

    .line 3637
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->setStereoBtnVisible(Z)V

    goto :goto_0

    .line 3641
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->setStereoBtnVisible(Z)V

    goto :goto_0

    .line 3626
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3605
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->mParseState:I

    .line 3606
    return-void
.end method
