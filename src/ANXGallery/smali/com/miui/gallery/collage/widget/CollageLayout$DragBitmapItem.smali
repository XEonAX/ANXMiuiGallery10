.class Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;
.super Ljava/lang/Object;
.source "CollageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragBitmapItem"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mDisplayOriginRect:Landroid/graphics/RectF;

.field private mDisplayRect:Landroid/graphics/RectF;

.field private mMirror:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectTemp:Landroid/graphics/RectF;

.field private mRotateDegree:I

.field private mScale:F

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field private mTransitionAnimator:Landroid/animation/ObjectAnimator;

.field private mUserMatrix:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmapRect:Landroid/graphics/RectF;

    .line 460
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayOriginRect:Landroid/graphics/RectF;

    .line 461
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    .line 463
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mRectTemp:Landroid/graphics/RectF;

    .line 465
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 466
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mUserMatrix:Landroid/graphics/Matrix;

    .line 468
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    .line 470
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    .line 472
    iput v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mRotateDegree:I

    .line 473
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mMirror:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$1;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    .prologue
    .line 445
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mRotateDegree:I

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mMirror:Z

    return v0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 551
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 555
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 556
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 558
    return-void
.end method

.method getTransitionAnimator(Landroid/graphics/RectF;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "animatorUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->getTransitionAnimator(Landroid/graphics/RectF;ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method getTransitionAnimator(Landroid/graphics/RectF;ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 11
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "resetUserMatrix"    # Z
    .param p3, "animatorUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v10, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 529
    if-eqz p2, :cond_0

    .line 530
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "scale"

    new-array v3, v9, [F

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    aput v4, v3, v7

    aput v5, v3, v8

    .line 532
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "alpha"

    new-array v3, v9, [I

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    .line 533
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    aput v4, v3, v7

    const/16 v4, 0xff

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "displayRect"

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;-><init>()V

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    .line 534
    invoke-static {v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v9

    const-string/jumbo v2, "userMatrix"

    new-instance v3, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;-><init>()V

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v4, v7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    aput-object v5, v4, v8

    .line 535
    invoke-static {v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v10

    .line 530
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 545
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    :goto_0
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    return-object v0

    .line 538
    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    new-array v1, v10, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "scale"

    new-array v3, v9, [F

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    aput v4, v3, v7

    aput v5, v3, v8

    .line 540
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "alpha"

    new-array v3, v9, [I

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    .line 541
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    aput v4, v3, v7

    const/16 v4, 0xff

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "displayRect"

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;-><init>()V

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    .line 542
    invoke-static {v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v9

    .line 538
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method receiveScrollEvent(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 495
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->refreshBitmapMatrix()V

    .line 496
    return-void
.end method

.method refreshBitmapMatrix()V
    .locals 6

    .prologue
    .line 499
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mMirror:Z

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mRotateDegree:I

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mRectTemp:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 500
    return-void
.end method

.method release()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 562
    return-void
.end method

.method reset(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "animatorUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayOriginRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->getTransitionAnimator(Landroid/graphics/RectF;ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mTransitionAnimator:Landroid/animation/ObjectAnimator;

    .line 517
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mTransitionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 518
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mTransitionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 521
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 572
    return-void
.end method

.method setCollageImageView(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 4
    .param p1, "collageImageView"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    const/4 v3, 0x0

    .line 479
    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 480
    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getRotateDegree()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mRotateDegree:I

    .line 481
    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->isMirror()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mMirror:Z

    .line 483
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayOriginRect:Landroid/graphics/RectF;

    invoke-static {v0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$1500(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    .line 485
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayOriginRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 486
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->refreshBitmapMatrix()V

    .line 487
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getCanvasMatrix(Landroid/graphics/Matrix;)V

    .line 489
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    .line 490
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 491
    return-void
.end method

.method public setDisplayRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "displayRect"    # Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 577
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->refreshBitmapMatrix()V

    .line 578
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 566
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    .line 567
    return-void
.end method

.method public setUserMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "userMatrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 583
    return-void
.end method

.method show(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 7
    .param p1, "animatorUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    new-array v0, v6, [Landroid/animation/PropertyValuesHolder;

    const-string v1, "scale"

    new-array v2, v6, [F

    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mScale:F

    aput v3, v2, v4

    const v3, 0x3f8ccccd    # 1.1f

    aput v3, v2, v5

    .line 504
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "alpha"

    new-array v2, v6, [I

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mPaint:Landroid/graphics/Paint;

    .line 505
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    aput v3, v2, v4

    const/16 v3, 0xc8

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 503
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 506
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 507
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 510
    return-void
.end method
