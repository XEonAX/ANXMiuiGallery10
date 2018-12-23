.class Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;
.super Ljava/lang/Object;
.source "CleanerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CleanerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanLayout"
.end annotation


# instance fields
.field private mFlexAnimator:Landroid/animation/ValueAnimator;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field public mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/CleanerFragment;Landroid/view/View;)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    .line 399
    iput-object p2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mView:Landroid/view/View;

    .line 400
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1100(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 401
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mView:Landroid/view/View;

    const v1, 0x7f110043

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;
    .param p1, "x1"    # I

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->setHeight(I)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    .line 466
    :cond_0
    return-void
.end method

.method private initFlexAnimator(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 446
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    .line 447
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 448
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout$1;-><init>(Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 459
    return-void
.end method

.method private setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->setMarginTop(I)V

    .line 472
    return-void
.end method


# virtual methods
.method public expand(Z)V
    .locals 2
    .param p1, "anim"    # Z

    .prologue
    .line 406
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->expand(ZJ)V

    .line 407
    return-void
.end method

.method public expand(ZJ)V
    .locals 2
    .param p1, "anim"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->cancelAnimation()V

    .line 411
    if-nez p1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1100(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->setHeight(I)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    .local v0, "height":I
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1100(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1100(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->initFlexAnimator(II)V

    .line 417
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 418
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retract(Z)V
    .locals 2
    .param p1, "anim"    # Z

    .prologue
    .line 424
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->retract(ZJ)V

    .line 425
    return-void
.end method

.method public retract(ZJ)V
    .locals 2
    .param p1, "anim"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->cancelAnimation()V

    .line 429
    if-nez p1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1200(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->setHeight(I)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    .local v0, "height":I
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1200(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CleanerFragment;->access$1200(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->initFlexAnimator(II)V

    .line 435
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 436
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mFlexAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
