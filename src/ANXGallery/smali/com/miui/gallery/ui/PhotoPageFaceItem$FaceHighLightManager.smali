.class Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
.super Ljava/lang/Object;
.source "PhotoPageFaceItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFaceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceHighLightManager"
.end annotation


# instance fields
.field private isAnimatorStarted:Z

.field private isExiting:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAlpha:F

.field private mCurrentRadius:I

.field private mCurrentX:I

.field private mCurrentY:I

.field private mExitAlpha:F

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

.field private mStartRadius:I

.field private mStartX:I

.field private mStartY:I

.field private mTargetRadius:I

.field private mTargetX:I

.field private mTargetY:I

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mOrientation:I

    .line 491
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    .line 494
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    .line 496
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    .line 498
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    .line 499
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$1;

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # F

    .prologue
    .line 473
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # F

    .prologue
    .line 473
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    return p1
.end method

.method static synthetic access$1402(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentX:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetX:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartX:I

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentY:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetY:I

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartY:I

    return v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;
    .param p1, "x1"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentRadius:I

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    return v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .prologue
    .line 473
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartRadius:I

    return v0
.end method

.method private initTargetValues()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 533
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    if-nez v2, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDrawableSize()Landroid/graphics/RectF;

    move-result-object v1

    .line 541
    .local v1, "size":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget v5, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mOrientation:I

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$900(FFLcom/miui/gallery/cloud/peopleface/PeopleFace;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 543
    .local v0, "faceRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getBaseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 545
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    .line 546
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetX:I

    .line 547
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetY:I

    goto :goto_0
.end method


# virtual methods
.method protected bindViewAndData(Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/CloudItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/model/CloudItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-eqz v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/CloudItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/miui/gallery/model/CloudItem;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mOrientation:I

    .line 510
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 511
    .local v0, "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->getRecommendFaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 513
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->initTargetValues()V

    .line 514
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->invalidate()V

    goto :goto_0
.end method

.method protected isExiting()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    return v0
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->getRecommendFaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->exit()V

    .line 622
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 644
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    .line 645
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    .line 646
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    .line 647
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 650
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 559
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPeopleFace:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mTargetRadius:I

    if-gtz v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-nez v0, :cond_2

    .line 564
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    .line 565
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    aput v4, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v9

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 567
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 589
    iput-boolean v9, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    .line 593
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentAlpha:F

    mul-float/2addr v0, v10

    float-to-int v5, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    .line 592
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v8

    .line 596
    .local v8, "saveCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 598
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 599
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 600
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mExitAlpha:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 604
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 605
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 608
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 609
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 610
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method protected onExiting()Z
    .locals 4

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 635
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    .line 638
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 522
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isAnimatorStarted:Z

    if-nez v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getWidth()I

    move-result v2

    .line 524
    .local v2, "width":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getHeight()I

    move-result v0

    .line 525
    .local v0, "height":I
    int-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v8

    double-to-int v1, v4

    .line 526
    .local v1, "radius":I
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartX:I

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentX:I

    .line 527
    div-int/lit8 v3, v0, 0x2

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartY:I

    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentY:I

    .line 528
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mStartRadius:I

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->mCurrentRadius:I

    .line 530
    .end local v0    # "height":I
    .end local v1    # "radius":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public final onMatrixChanged()V
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->initTargetValues()V

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFaceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->invalidate()V

    .line 556
    :cond_0
    return-void
.end method
