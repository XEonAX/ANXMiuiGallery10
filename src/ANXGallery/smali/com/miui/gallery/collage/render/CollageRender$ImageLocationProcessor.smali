.class public Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;
.super Ljava/lang/Object;
.source "CollageRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/render/CollageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLocationProcessor"
.end annotation


# instance fields
.field private mClipArray:[F

.field private mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPathRectF:Landroid/graphics/RectF;

.field private mPathRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    .line 319
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    .line 320
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private enableMargin(F)V
    .locals 22
    .param p1, "margin"    # F

    .prologue
    .line 384
    const/16 v16, 0x0

    cmpl-float v16, p1, v16

    if-nez v16, :cond_0

    .line 451
    :goto_0
    return-void

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    .line 388
    .local v7, "pathForClip":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForChoose:Landroid/graphics/Path;

    .line 389
    .local v6, "pathForChoose":Landroid/graphics/Path;
    sget-object v16, Lcom/miui/gallery/collage/render/CollageRender$2;->$SwitchMap$com$miui$gallery$collage$ClipType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipType:Lcom/miui/gallery/collage/ClipType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/miui/gallery/collage/ClipType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 392
    new-instance v16, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    add-float v17, v17, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-float v18, v18, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    sub-float v19, v19, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    sub-float v20, v20, p1

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 393
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Region;->setEmpty()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    new-instance v17, Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Region;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 397
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    goto/16 :goto_0

    .line 400
    :pswitch_1
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 401
    .local v5, "path":Landroid/graphics/Path;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 402
    .local v10, "rectF":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Region;

    invoke-direct {v11}, Landroid/graphics/Region;-><init>()V

    .line 403
    .local v11, "region":Landroid/graphics/Region;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_2

    .line 404
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [F

    .line 405
    .local v9, "pointStart":[F
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v8, v0, [F

    .line 407
    .local v8, "pointEnd":[F
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    aget v17, v17, v4

    aput v17, v9, v16

    .line 408
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, 0x1

    aget v17, v17, v18

    aput v17, v9, v16

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    move/from16 v0, v16

    if-ne v4, v0, :cond_1

    .line 410
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    aput v17, v8, v16

    .line 411
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    aput v17, v8, v16

    .line 416
    :goto_2
    const/16 v16, 0x0

    aget v13, v9, v16

    .line 417
    .local v13, "xStart":F
    const/16 v16, 0x1

    aget v15, v9, v16

    .line 418
    .local v15, "yStart":F
    const/16 v16, 0x0

    aget v12, v8, v16

    .line 419
    .local v12, "xEnd":F
    const/16 v16, 0x1

    aget v14, v8, v16

    .line 420
    .local v14, "yEnd":F
    const/16 v16, 0x1

    aget v16, v8, v16

    const/16 v17, 0x1

    aget v17, v9, v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    aget v18, v8, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 421
    .local v2, "degree":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 422
    const-string v16, "CollageRender"

    const-string/jumbo v17, "xStart:%f yStart:%f xEnd:%f yEnd:%f degree\uff1a%f"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, v9, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x1

    aget v20, v9, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aget v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x1

    aget v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    neg-double v0, v2

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    double-to-float v0, v2

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 430
    const-string v16, "CollageRender"

    const-string/jumbo v17, "xStart:%f yStart:%f"

    const/16 v18, 0x0

    aget v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v9, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v16 .. v19}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 433
    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 434
    invoke-virtual {v5, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    const/16 v16, 0x0

    aget v16, v8, v16

    const/16 v17, 0x1

    aget v17, v8, v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 436
    const/16 v16, 0x0

    aget v16, v9, v16

    const/16 v17, 0x1

    aget v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 437
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 438
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v10, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 439
    invoke-virtual {v11}, Landroid/graphics/Region;->setEmpty()V

    .line 440
    new-instance v16, Landroid/graphics/Region;

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Region;-><init>(IIII)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    sget-object v17, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 403
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 413
    .end local v2    # "degree":D
    .end local v12    # "xEnd":F
    .end local v13    # "xStart":F
    .end local v14    # "yEnd":F
    .end local v15    # "yStart":F
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, 0x2

    aget v17, v17, v18

    aput v17, v8, v16

    .line 414
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, 0x3

    aget v17, v17, v18

    aput v17, v8, v16

    goto/16 :goto_2

    .line 443
    .end local v8    # "pointEnd":[F
    .end local v9    # "pointStart":[F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Region;->translate(II)V

    .line 444
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 445
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateClipArrayBySize(FF)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 346
    iget-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v0, v2, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipArray:[F

    .line 347
    .local v0, "clipArray":[F
    array-length v2, v0

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    aget v3, v0, v1

    mul-float/2addr v3, p1

    aput v3, v2, v1

    .line 350
    iget-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    mul-float/2addr v4, p2

    aput v4, v2, v3

    .line 348
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method private generateLayoutSizeByRect()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$002(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$102(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$202(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$302(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 343
    return-void
.end method

.method private generatePath()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 355
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v2, v5, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    .line 356
    .local v2, "pathForClip":Landroid/graphics/Path;
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, v5, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForChoose:Landroid/graphics/Path;

    .line 357
    .local v1, "pathForChoose":Landroid/graphics/Path;
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 358
    sget-object v5, Lcom/miui/gallery/collage/render/CollageRender$2;->$SwitchMap$com$miui$gallery$collage$ClipType:[I

    iget-object v6, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v6, v6, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipType:Lcom/miui/gallery/collage/ClipType;

    invoke-virtual {v6}, Lcom/miui/gallery/collage/ClipType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 365
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    aget v3, v5, v0

    .line 366
    .local v3, "x":F
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    add-int/lit8 v6, v0, 0x1

    aget v4, v5, v6

    .line 367
    .local v4, "y":F
    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 364
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 360
    .end local v0    # "i":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_0
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    aget v7, v7, v11

    iget-object v8, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 376
    :goto_2
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 377
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->setEmpty()V

    .line 378
    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    new-instance v6, Landroid/graphics/Region;

    iget-object v7, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 379
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 380
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 381
    return-void

    .line 370
    .restart local v0    # "i":I
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_0
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 373
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    goto :goto_2

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public processorImageLocation(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;FFF)V
    .locals 2
    .param p1, "imageLocation"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .param p2, "parentWidth"    # F
    .param p3, "parentHeight"    # F
    .param p4, "margin"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 323
    iput-object p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .line 324
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 325
    mul-float v0, p4, v1

    sub-float/2addr p2, v0

    .line 326
    mul-float v0, p4, v1

    sub-float/2addr p3, v0

    .line 327
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generateClipArrayBySize(FF)V

    .line 328
    invoke-direct {p0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generatePath()V

    .line 329
    invoke-direct {p0, p4}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->enableMargin(F)V

    .line 334
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generateLayoutSizeByRect()V

    .line 335
    return-void

    .line 331
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generateClipArrayBySize(FF)V

    .line 332
    invoke-direct {p0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generatePath()V

    goto :goto_0
.end method
