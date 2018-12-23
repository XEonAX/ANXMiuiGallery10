.class public Lcom/miui/extraphoto/refocus/RelightingAdjustView;
.super Landroid/view/View;
.source "RelightingAdjustView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RelightingAdjustView"


# instance fields
.field private mAngle:F

.field private mAvailableRect:Landroid/graphics/RectF;

.field private mCenterX:F

.field private mCenterY:F

.field private mOvalRectF:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mSphereRadius:F

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mPaint:Landroid/graphics/Paint;

    .line 31
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mPaint:Landroid/graphics/Paint;

    .line 36
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mPaint:Landroid/graphics/Paint;

    .line 41
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->init()V

    .line 42
    return-void
.end method

.method public static getAngle(FFFF)F
    .locals 6
    .param p0, "centerX"    # F
    .param p1, "centerY"    # F
    .param p2, "currentX"    # F
    .param p3, "currentY"    # F

    .line 99
    sub-float v0, p1, p3

    float-to-double v0, v0

    sub-float v2, p0, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 100
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 101
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double v4, v0, v2

    rem-double/2addr v4, v2

    .line 102
    .end local v0    # "angle":D
    .local v4, "angle":D
    double-to-float v0, v4

    return v0
.end method

.method public static getDistance(FFFF)F
    .locals 4
    .param p0, "centerX"    # F
    .param p1, "centerY"    # F
    .param p2, "currentX"    # F
    .param p3, "currentY"    # F

    .line 95
    sub-float v0, p0, p2

    float-to-double v0, v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mRadius:F

    .line 53
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mSphereRadius:F

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mAvailableRect:Landroid/graphics/RectF;

    .line 56
    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mRadius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 60
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mAvailableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mAvailableRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 65
    iget v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mAngle:F

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 66
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 69
    return-void
.end method

.method public setAvailableArea(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 91
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mAvailableRect:Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 72
    iput p1, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mCenterX:F

    .line 73
    iput p2, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mCenterY:F

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getDistance(FFFF)F

    move-result v0

    .line 76
    .local v0, "distance":F
    invoke-static {p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getAngle(FFFF)F

    move-result v1

    iput v1, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mAngle:F

    .line 78
    iget v1, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mRadius:F

    iget v2, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mRadius:F

    iget v3, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mSphereRadius:F

    div-float v3, v0, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 79
    .local v1, "width":F
    iget v2, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mRadius:F

    .line 81
    .local v2, "height":F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->mOvalRectF:Landroid/graphics/RectF;

    sub-float v4, p3, v1

    sub-float v5, p4, v2

    add-float v6, p3, v1

    add-float v7, p4, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->invalidate()V

    .line 88
    return-void
.end method
