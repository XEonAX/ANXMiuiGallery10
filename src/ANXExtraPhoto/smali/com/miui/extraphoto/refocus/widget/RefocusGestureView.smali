.class public Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;
.super Landroid/view/View;
.source "RefocusGestureView.java"


# static fields
.field private static final COLOR:I = -0x33000001


# instance fields
.field private mBigCircleSize:F

.field private mBigCircleTargetSize:F

.field private mCenterX:F

.field private mCenterY:F

.field private mHeight:I

.field private mPaintInside:Landroid/graphics/Paint;

.field private mPaintOutSide:Landroid/graphics/Paint;

.field private mProgress:F

.field private mSmallCircleSize:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mProgress:F

    .line 36
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mProgress:F

    .line 41
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mProgress:F

    .line 46
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;
    .param p1, "x1"    # F

    .line 12
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mProgress:F

    return p1
.end method

.method private init()V
    .locals 4

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 51
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView$1;-><init>(Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintOutSide:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintOutSide:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintOutSide:Landroid/graphics/Paint;

    const v2, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintOutSide:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintInside:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintInside:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintInside:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintInside:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static progressInRange(FFF)F
    .locals 2
    .param p0, "progress"    # F
    .param p1, "rangeStart"    # F
    .param p2, "rangeEnd"    # F

    .line 112
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 117
    :cond_1
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private static valueByProgress(FFF)F
    .locals 1
    .param p0, "progress"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 108
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 101
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 88
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mProgress:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->progressInRange(FFF)F

    move-result v0

    .line 89
    .local v0, "progress":F
    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mBigCircleSize:F

    iget v2, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mBigCircleTargetSize:F

    invoke-static {v0, v1, v2}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->valueByProgress(FFF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 90
    .local v1, "size":F
    iget v3, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mCenterX:F

    iget v4, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mCenterY:F

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintOutSide:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    iget v3, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mCenterX:F

    iget v4, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mCenterY:F

    iget v5, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mSmallCircleSize:F

    div-float/2addr v5, v2

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mPaintInside:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 75
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mWidth:I

    .line 76
    iput p2, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mHeight:I

    .line 77
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mWidth:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mBigCircleSize:F

    .line 78
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mWidth:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mBigCircleTargetSize:F

    .line 80
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mWidth:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mSmallCircleSize:F

    .line 82
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mCenterX:F

    .line 83
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mCenterY:F

    .line 84
    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 104
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    return-void
.end method

.method public start()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 96
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    return-void
.end method
