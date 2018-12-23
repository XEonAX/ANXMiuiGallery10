.class public Lcom/edmodo/cropper/CropImageView;
.super Landroid/widget/ImageView;
.source "CropImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderThickness:F

.field private mCornerLength:F

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mCornerThickness:F

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelinesMode:I

.field private mHandleRadius:F

.field private mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field private mSnapRadius:F

.field private mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

.field private mTouchOffset:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/edmodo/cropper/CropImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    .line 106
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 107
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 110
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    .line 106
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 107
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 110
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    .line 106
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 107
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 110
    iput v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/edmodo/cropper/CropImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 463
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 464
    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 465
    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 466
    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 463
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 468
    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 472
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 473
    .local v8, "left":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v11

    .line 474
    .local v11, "top":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 475
    .local v9, "right":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 478
    .local v6, "bottom":F
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerThickness:F

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mBorderThickness:F

    sub-float/2addr v0, v1

    div-float v7, v0, v2

    .line 480
    .local v7, "lateralOffset":F
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerThickness:F

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mBorderThickness:F

    div-float/2addr v1, v2

    sub-float v10, v0, v1

    .line 483
    .local v10, "startOffset":F
    sub-float v1, v8, v7

    sub-float v2, v11, v10

    sub-float v3, v8, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    add-float v4, v11, v0

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 485
    sub-float v1, v8, v10

    sub-float v2, v11, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    add-float v3, v8, v0

    sub-float v4, v11, v7

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 488
    add-float v1, v9, v7

    sub-float v2, v11, v10

    add-float v3, v9, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    add-float v4, v11, v0

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 490
    add-float v1, v9, v10

    sub-float v2, v11, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    sub-float v3, v9, v0

    sub-float v4, v11, v7

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 493
    sub-float v1, v8, v7

    add-float v2, v6, v10

    sub-float v3, v8, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    sub-float v4, v6, v0

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 495
    sub-float v1, v8, v10

    add-float v2, v6, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    add-float v3, v8, v0

    add-float v4, v6, v7

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 498
    add-float v1, v9, v7

    add-float v2, v6, v10

    add-float v3, v9, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    sub-float v4, v6, v0

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 500
    add-float v1, v9, v10

    add-float v2, v6, v7

    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    sub-float v3, v9, v0

    add-float v4, v6, v7

    iget-object v5, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 501
    return-void
.end method

.method private drawDarkenedSurroundingArea(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    .line 407
    .local v19, "bitmapRect":Landroid/graphics/RectF;
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v12

    .line 408
    .local v12, "left":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 409
    .local v5, "top":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v20

    .line 410
    .local v20, "right":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 427
    .local v8, "bottom":F
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/edmodo/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 428
    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/edmodo/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 429
    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/edmodo/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v5

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 430
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    move/from16 v14, v20

    move v15, v5

    move/from16 v17, v8

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 431
    return-void
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->shouldGuidelinesBeShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 439
    :cond_0
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v17

    .line 440
    .local v17, "left":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 441
    .local v3, "top":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v14

    .line 442
    .local v14, "right":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 445
    .local v5, "bottom":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float v19, v1, v4

    .line 447
    .local v19, "oneThirdCropWidth":F
    add-float v2, v17, v19

    .line 448
    .local v2, "x1":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/edmodo/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 449
    sub-float v7, v14, v19

    .line 450
    .local v7, "x2":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/edmodo/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v8, v3

    move v9, v7

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 453
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float v18, v1, v4

    .line 455
    .local v18, "oneThirdCropHeight":F
    add-float v10, v3, v18

    .line 456
    .local v10, "y1":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/edmodo/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v9, v17

    move v11, v14

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 457
    sub-float v13, v5, v18

    .line 458
    .local v13, "y2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/edmodo/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move/from16 v12, v17

    move v15, v13

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBitmapRect()Landroid/graphics/RectF;
    .locals 16

    .prologue
    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 321
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 322
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 349
    :goto_0
    return-object v14

    .line 326
    :cond_0
    const/16 v14, 0x9

    new-array v7, v14, [F

    .line 327
    .local v7, "matrixValues":[F
    invoke-virtual/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 330
    const/4 v14, 0x0

    aget v9, v7, v14

    .line 331
    .local v9, "scaleX":F
    const/4 v14, 0x4

    aget v10, v7, v14

    .line 332
    .local v10, "scaleY":F
    const/4 v14, 0x2

    aget v12, v7, v14

    .line 333
    .local v12, "transX":F
    const/4 v14, 0x5

    aget v13, v7, v14

    .line 336
    .local v13, "transY":F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 337
    .local v5, "drawableIntrinsicWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 340
    .local v4, "drawableIntrinsicHeight":I
    int-to-float v14, v5

    mul-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 341
    .local v3, "drawableDisplayWidth":I
    int-to-float v14, v4

    mul-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 344
    .local v2, "drawableDisplayHeight":I
    const/4 v14, 0x0

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 345
    .local v6, "left":F
    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 346
    .local v11, "top":F
    int-to-float v14, v3

    add-float/2addr v14, v6

    invoke-virtual/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 347
    .local v8, "right":F
    int-to-float v14, v2

    add-float/2addr v14, v11

    invoke-virtual/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 349
    .local v0, "bottom":F
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v6, v11, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method private getTargetAspectRatio()F
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    sget-object v2, Lcom/edmodo/cropper/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 132
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    .line 133
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 134
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 135
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/edmodo/cropper/util/PaintUtil;->newBorderPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 141
    invoke-static {v0}, Lcom/edmodo/cropper/util/PaintUtil;->newGuidelinePaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 142
    invoke-static {v0}, Lcom/edmodo/cropper/util/PaintUtil;->newSurroundingAreaOverlayPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mSurroundingAreaOverlayPaint:Landroid/graphics/Paint;

    .line 143
    invoke-static {v0}, Lcom/edmodo/cropper/util/PaintUtil;->newCornerPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/edmodo/cropper/CropImageView;->mCornerPaint:Landroid/graphics/Paint;

    .line 145
    const v2, 0x7f0b02d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mHandleRadius:F

    .line 146
    const v2, 0x7f0b02b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mSnapRadius:F

    .line 147
    const v2, 0x7f0b00c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mBorderThickness:F

    .line 148
    const v2, 0x7f0b0121

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mCornerThickness:F

    .line 149
    const v2, 0x7f0b0120

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/edmodo/cropper/CropImageView;->mCornerLength:F

    .line 150
    return-void
.end method

.method private initCropWindow(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 361
    iget-boolean v2, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    if-eqz v2, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->initCropWindowWithFixedAspectRatio(Landroid/graphics/RectF;)V

    .line 377
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v0, v3, v2

    .line 370
    .local v0, "horizontalPadding":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v3, v2

    .line 372
    .local v1, "verticalPadding":F
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 373
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 374
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 375
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0
.end method

.method private initCropWindowWithFixedAspectRatio(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 383
    invoke-static {p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateAspectRatio(Landroid/graphics/RectF;)F

    move-result v2

    invoke-direct {p0}, Lcom/edmodo/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {p0}, Lcom/edmodo/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v3

    invoke-static {v2, v3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateWidth(FF)F

    move-result v1

    .line 387
    .local v1, "cropWidth":F
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 388
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 389
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float v4, v1, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 390
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 401
    .end local v1    # "cropWidth":F
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-direct {p0}, Lcom/edmodo/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v3

    invoke-static {v2, v3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateHeight(FF)F

    move-result v0

    .line 396
    .local v0, "cropHeight":F
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 397
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 398
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 399
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    div-float v4, v0, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0
.end method

.method private onActionDown(FF)V
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 520
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 521
    .local v2, "left":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 522
    .local v3, "top":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 523
    .local v4, "right":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 525
    .local v5, "bottom":F
    iget v6, p0, Lcom/edmodo/cropper/CropImageView;->mHandleRadius:F

    move v0, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lcom/edmodo/cropper/util/HandleUtil;->getPressedHandle(FFFFFFF)Lcom/edmodo/cropper/cropwindow/handle/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 529
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_0

    .line 530
    iget-object v6, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    iget-object v13, p0, Lcom/edmodo/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    move v7, p1

    move/from16 v8, p2

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v13}, Lcom/edmodo/cropper/util/HandleUtil;->getOffset(Lcom/edmodo/cropper/cropwindow/handle/Handle;FFFFFFLandroid/graphics/PointF;)V

    .line 531
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->invalidate()V

    .line 533
    :cond_0
    return-void
.end method

.method private onActionMove(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 553
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    .line 560
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v0

    .line 563
    iget-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    invoke-direct {p0}, Lcom/edmodo/cropper/CropImageView;->getTargetAspectRatio()F

    move-result v3

    iget-object v4, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/edmodo/cropper/CropImageView;->mSnapRadius:F

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->updateCropWindow(FFFLandroid/graphics/RectF;F)V

    .line 568
    :goto_1
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->invalidate()V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/edmodo/cropper/CropImageView;->mSnapRadius:F

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->updateCropWindow(FFLandroid/graphics/RectF;F)V

    goto :goto_1
.end method

.method private onActionUp()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 541
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->invalidate()V

    .line 543
    :cond_0
    return-void
.end method

.method private shouldGuidelinesBeShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 504
    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/edmodo/cropper/CropImageView;->mPressedHandle:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 24

    .prologue
    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 261
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    instance-of v0, v10, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 262
    :cond_0
    const/16 v21, 0x0

    .line 309
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v21

    .line 266
    .restart local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v12, v0, [F

    .line 267
    .local v12, "matrixValues":[F
    invoke-virtual/range {p0 .. p0}, Lcom/edmodo/cropper/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 270
    const/16 v21, 0x0

    aget v14, v12, v21

    .line 271
    .local v14, "scaleX":F
    const/16 v21, 0x4

    aget v15, v12, v21

    .line 272
    .local v15, "scaleY":F
    const/16 v21, 0x2

    aget v16, v12, v21

    .line 273
    .local v16, "transX":F
    const/16 v21, 0x5

    aget v17, v12, v21

    .line 276
    .local v17, "transY":F
    move/from16 v4, v16

    .line 277
    .local v4, "bitmapLeft":F
    move/from16 v5, v17

    .line 280
    .local v5, "bitmapTop":F
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 283
    .local v13, "originalBitmap":Landroid/graphics/Bitmap;
    sget-object v21, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v21 .. v21}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v21

    sub-float v21, v21, v4

    div-float v8, v21, v14

    .line 284
    .local v8, "cropX":F
    sget-object v21, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual/range {v21 .. v21}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v21

    sub-float v21, v21, v5

    div-float v9, v21, v15

    .line 288
    .local v9, "cropY":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v21

    div-float v21, v21, v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v8

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 289
    .local v7, "cropWidth":F
    invoke-static {}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v21

    div-float v21, v21, v15

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v9

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 291
    .local v6, "cropHeight":F
    float-to-int v0, v8

    move/from16 v19, v0

    .line 292
    .local v19, "x":I
    float-to-int v0, v9

    move/from16 v20, v0

    .line 293
    .local v20, "y":I
    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v18, v0

    .line 294
    .local v18, "width":I
    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v11, v0

    .line 296
    .local v11, "height":I
    if-nez v18, :cond_2

    .line 297
    const/16 v18, 0x1

    .line 299
    :cond_2
    if-nez v11, :cond_3

    .line 300
    const/4 v11, 0x1

    .line 302
    :cond_3
    add-int v21, v19, v18

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 303
    add-int v21, v19, v18

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    sub-int v19, v19, v21

    .line 305
    :cond_4
    add-int v21, v20, v11

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 306
    add-int v21, v20, v11

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    sub-int v20, v20, v21

    .line 309
    :cond_5
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v13, v0, v1, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v21

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->drawDarkenedSurroundingArea(Landroid/graphics/Canvas;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/edmodo/cropper/CropImageView;->drawCorners(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 157
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 159
    invoke-direct {p0}, Lcom/edmodo/cropper/CropImageView;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 160
    iget-object v0, p0, Lcom/edmodo/cropper/CropImageView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/edmodo/cropper/CropImageView;->initCropWindow(Landroid/graphics/RectF;)V

    .line 161
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/edmodo/cropper/CropImageView;->onActionDown(FF)V

    move v0, v1

    .line 186
    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 191
    invoke-direct {p0}, Lcom/edmodo/cropper/CropImageView;->onActionUp()V

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/edmodo/cropper/CropImageView;->onActionMove(FF)V

    .line 196
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 197
    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .prologue
    .line 240
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iput p1, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 244
    iput p2, p0, Lcom/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 246
    iget-boolean v0, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->requestLayout()V

    .line 249
    :cond_2
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 0
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 227
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->requestLayout()V

    .line 228
    return-void
.end method

.method public setGuidelines(I)V
    .locals 0
    .param p1, "guidelinesMode"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/edmodo/cropper/CropImageView;->mGuidelinesMode:I

    .line 215
    invoke-virtual {p0}, Lcom/edmodo/cropper/CropImageView;->invalidate()V

    .line 216
    return-void
.end method
