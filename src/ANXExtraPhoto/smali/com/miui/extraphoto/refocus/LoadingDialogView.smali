.class public Lcom/miui/extraphoto/refocus/LoadingDialogView;
.super Landroid/view/View;
.source "LoadingDialogView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingDialogView"


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mColorPaint:Landroid/graphics/Paint;

.field private mDegree:I

.field private mLoadingPadding:I

.field private mLoadingProgress:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressRect:Landroid/graphics/RectF;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mViewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mMatrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mBitmapRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mProgressRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mColorPaint:Landroid/graphics/Paint;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mDegree:I

    .line 63
    new-instance v0, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;-><init>(Lcom/miui/extraphoto/refocus/LoadingDialogView;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 37
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mMatrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mBitmapRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mProgressRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mColorPaint:Landroid/graphics/Paint;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mDegree:I

    .line 63
    new-instance v0, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;-><init>(Lcom/miui/extraphoto/refocus/LoadingDialogView;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 42
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mMatrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mBitmapRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mProgressRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mColorPaint:Landroid/graphics/Paint;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mDegree:I

    .line 63
    new-instance v0, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView$1;-><init>(Lcom/miui/extraphoto/refocus/LoadingDialogView;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 47
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/miui/extraphoto/refocus/LoadingDialogView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/LoadingDialogView;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mDegree:I

    return p1
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mColorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mColorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f020000

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingProgress:Landroid/graphics/Bitmap;

    .line 54
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 56
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/LoadingDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingPadding:I

    .line 61
    return-void

    :array_0
    .array-data 4
        0x0
        0x167
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 93
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    const-string v0, "LoadingDialogView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 101
    const-string v0, "LoadingDialogView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 83
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    iget v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 86
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingProgress:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 74
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mProgressRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 76
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mProgressRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mLoadingPadding:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 77
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 78
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/LoadingDialogView;->mViewRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    return-void
.end method
