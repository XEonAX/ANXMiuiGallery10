.class public Lcom/miui/gallery/collage/render/CollageRender;
.super Ljava/lang/Object;
.source "CollageRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;,
        Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;,
        Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;,
        Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;,
        Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    }
.end annotation


# direct methods
.method public static doRender(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V
    .locals 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 160
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 162
    .local v3, "height":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 165
    .local v2, "collageRect":Landroid/graphics/RectF;
    iget-object v6, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/PosterModel;

    if-eqz v6, :cond_1

    .line 166
    iget-object v6, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/PosterModel;

    iget-object v6, v6, Lcom/miui/gallery/collage/PosterModel;->collagePositions:[Lcom/miui/gallery/collage/CollagePositionModel;

    iget-object v7, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->bitmapRenders:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/miui/gallery/collage/CollagePositionModel;->getCollagePositionModelByImageSize([Lcom/miui/gallery/collage/CollagePositionModel;I)Lcom/miui/gallery/collage/CollagePositionModel;

    move-result-object v1

    .line 167
    .local v1, "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    iget-object v0, v1, Lcom/miui/gallery/collage/CollagePositionModel;->position:[F

    .line 171
    .end local v1    # "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    .local v0, "collagePosition":[F
    :goto_0
    int-to-float v6, v5

    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    int-to-float v7, v3

    const/4 v8, 0x1

    aget v8, v0, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    int-to-float v8, v5

    const/4 v9, 0x2

    aget v9, v0, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    int-to-float v9, v3

    const/4 v10, 0x3

    aget v10, v0, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 173
    invoke-static {p0, p1, v2}, Lcom/miui/gallery/collage/render/CollageRender;->drawBitmap(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Landroid/graphics/RectF;)V

    .line 175
    iget-object v4, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    .line 176
    .local v4, "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v4, p0}, Lcom/miui/gallery/collage/render/PosterElementRender;->draw(Landroid/graphics/Canvas;)V

    .line 179
    :cond_0
    return-void

    .line 169
    .end local v0    # "collagePosition":[F
    .end local v4    # "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    :cond_1
    sget-object v0, Lcom/miui/gallery/collage/widget/PosterLayout;->DEFAULT_LAYOUT_PARAMS:[F

    .restart local v0    # "collagePosition":[F
    goto :goto_0
.end method

.method private static drawBitmap(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Landroid/graphics/RectF;)V
    .locals 27
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .param p2, "collageRect"    # Landroid/graphics/RectF;

    .prologue
    .line 182
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->layoutModel:Lcom/miui/gallery/collage/LayoutModel;

    move-object/from16 v19, v0

    .line 183
    .local v19, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    move/from16 v23, v0

    .line 184
    .local v23, "width":I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    .line 185
    .local v14, "height":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->margin:I

    int-to-float v0, v6

    move/from16 v20, v0

    .line 186
    .local v20, "margin":F
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->bitmapRenders:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 188
    .local v12, "bitmapRenderDataArray":[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    new-instance v17, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    invoke-direct/range {v17 .. v17}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;-><init>()V

    .line 189
    .local v17, "imageLocationProcessor":Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;
    new-instance v21, Landroid/graphics/Paint;

    const/4 v6, 0x3

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    .local v21, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    .local v4, "bitmapMatrix":Landroid/graphics/Matrix;
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    .local v13, "collageMatrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v6, v7, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, p2

    invoke-virtual {v13, v6, v0, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 194
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 195
    .local v5, "canvasBound":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 196
    .local v3, "bitmapBound":Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 197
    .local v8, "bitmapInitBound":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 198
    .local v10, "bitmapInsideBound":Landroid/graphics/RectF;
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 199
    .local v22, "userMatrix":Landroid/graphics/Matrix;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/miui/gallery/collage/LayoutModel;->items:[Lcom/miui/gallery/collage/LayoutItemModel;

    array-length v6, v6

    if-ge v15, v6, :cond_3

    .line 200
    array-length v6, v12

    if-lt v15, v6, :cond_0

    .line 199
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 203
    :cond_0
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/miui/gallery/collage/LayoutModel;->items:[Lcom/miui/gallery/collage/LayoutItemModel;

    aget-object v18, v6, v15

    .line 204
    .local v18, "layoutItemModel":Lcom/miui/gallery/collage/LayoutItemModel;
    new-instance v16, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/miui/gallery/collage/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/miui/gallery/collage/LayoutItemModel;->data:[F

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    .line 205
    .local v16, "imageLocation":Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    move/from16 v24, v0

    mul-float v24, v24, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->processorImageLocation(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;FFF)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 207
    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 209
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$000(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$100(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$200(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$300(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    aget-object v11, v12, v15

    .line 211
    .local v11, "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    if-eqz v11, :cond_1

    iget-object v6, v11, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 212
    iget-object v9, v11, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 213
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 214
    iget-boolean v6, v11, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->transition:Z

    if-eqz v6, :cond_2

    .line 215
    iget-boolean v6, v11, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->mirror:Z

    iget v7, v11, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->rotate:I

    invoke-static/range {v3 .. v8}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 217
    iget-object v6, v11, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmapInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    iget v6, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iput v6, v10, Landroid/graphics/RectF;->left:F

    .line 219
    iget v6, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iput v6, v10, Landroid/graphics/RectF;->right:F

    .line 220
    iget v6, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v10, Landroid/graphics/RectF;->top:F

    .line 221
    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v10, Landroid/graphics/RectF;->bottom:F

    .line 223
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Matrix;->reset()V

    .line 224
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v8, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 235
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 231
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v3, v4, v5, v8}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 237
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .end local v16    # "imageLocation":Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .end local v18    # "layoutItemModel":Lcom/miui/gallery/collage/LayoutItemModel;
    :cond_3
    return-void
.end method

.method private static generatePosterElementRender(Landroid/content/Context;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .param p2, "generateRenderDataListener"    # Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/collage/render/CollageRender;->generatePosterElementRender(Landroid/content/Context;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;Z)V

    .line 112
    return-void
.end method

.method private static generatePosterElementRender(Landroid/content/Context;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .param p2, "generateRenderDataListener"    # Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;
    .param p3, "async"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    iget-object v2, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/PosterModel;

    if-eqz v2, :cond_2

    .line 116
    new-instance v1, Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-direct {v1}, Lcom/miui/gallery/collage/render/PosterElementRender;-><init>()V

    .line 117
    .local v1, "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    new-instance v0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;

    iget v2, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    iget v3, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    iget v4, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;-><init>(Lcom/miui/gallery/collage/render/PosterElementRender;IIFLandroid/content/Context;)V

    .line 118
    .local v0, "readPosterDataTask":Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    new-instance v2, Lcom/miui/gallery/collage/render/CollageRender$1;

    invoke-direct {v2, p1, v1, p2}, Lcom/miui/gallery/collage/render/CollageRender$1;-><init>(Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/PosterElementRender;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;)V

    invoke-virtual {v0, v2}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->setLoadDataListener(Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;)V

    .line 127
    if-eqz p3, :cond_1

    .line 128
    new-array v2, v7, [Lcom/miui/gallery/collage/PosterModel;

    iget-object v3, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/PosterModel;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    .end local v0    # "readPosterDataTask":Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    .end local v1    # "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v0    # "readPosterDataTask":Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    .restart local v1    # "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    :cond_1
    new-array v2, v7, [Lcom/miui/gallery/collage/PosterModel;

    iget-object v3, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/PosterModel;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->performDoInBackground([Lcom/miui/gallery/collage/PosterModel;)V

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->performOnPostExecute(Ljava/lang/Void;)V

    .line 132
    iput-object v1, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    goto :goto_0

    .line 135
    .end local v0    # "readPosterDataTask":Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    .end local v1    # "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    :cond_2
    if-eqz p2, :cond_0

    .line 136
    invoke-interface {p2, p1}, Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;->onFinish(Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V

    goto :goto_0
.end method

.method private static generateRenderData(Landroid/content/res/Resources;Lcom/miui/gallery/collage/PosterModel;Lcom/miui/gallery/collage/LayoutModel;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .param p2, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;
    .param p3, "bitmapRenderDataArray"    # [Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .prologue
    .line 142
    new-instance v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    invoke-direct {v2}, Lcom/miui/gallery/collage/render/CollageRender$RenderData;-><init>()V

    .line 143
    .local v2, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 144
    .local v1, "ratioValue":Landroid/util/TypedValue;
    const v3, 0x7f0b023d

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 145
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 146
    .local v0, "ratio":F
    const/16 v3, 0x438

    iput v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    .line 147
    iget v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    .line 148
    iput-object p1, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/PosterModel;

    .line 149
    iput-object p2, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->layoutModel:Lcom/miui/gallery/collage/LayoutModel;

    .line 150
    iput-object p3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->bitmapRenders:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 151
    return-object v2
.end method

.method public static generateRenderData(Landroid/content/Context;Lcom/miui/gallery/collage/PosterModel;Lcom/miui/gallery/collage/LayoutModel;Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .param p2, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;
    .param p3, "collageLayout"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p4, "posterLayout"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p5, "generateRenderDataListener"    # Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;

    .prologue
    .line 97
    invoke-virtual {p3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v1

    .line 98
    .local v1, "childCount":I
    new-array v0, v1, [Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 99
    .local v0, "bitmapRenderDataArray":[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 100
    invoke-virtual {p3, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 101
    .local v2, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v2}, Lcom/miui/gallery/collage/widget/CollageImageView;->generateBitmapRenderData()Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    move-result-object v5

    aput-object v5, v0, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p2, v0}, Lcom/miui/gallery/collage/render/CollageRender;->generateRenderData(Landroid/content/res/Resources;Lcom/miui/gallery/collage/PosterModel;Lcom/miui/gallery/collage/LayoutModel;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    move-result-object v4

    .line 104
    .local v4, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    iget v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    int-to-float v5, v5

    invoke-virtual {p4}, Lcom/miui/gallery/collage/widget/PosterLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    .line 105
    invoke-virtual {p3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getMargin()I

    move-result v5

    iput v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->margin:I

    .line 107
    invoke-static {p0, v4, p5}, Lcom/miui/gallery/collage/render/CollageRender;->generatePosterElementRender(Landroid/content/Context;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;)V

    .line 108
    return-void
.end method

.method public static initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "bitmapRect"    # Landroid/graphics/RectF;
    .param p1, "bitmapMatrix"    # Landroid/graphics/Matrix;
    .param p2, "displayRect"    # Landroid/graphics/RectF;
    .param p3, "rectBuffer"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 241
    return-void
.end method

.method public static initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V
    .locals 7
    .param p0, "bitmapRect"    # Landroid/graphics/RectF;
    .param p1, "bitmapMatrix"    # Landroid/graphics/Matrix;
    .param p2, "displayRect"    # Landroid/graphics/RectF;
    .param p3, "mirror"    # Z
    .param p4, "rotateDegree"    # I
    .param p5, "bitmapDisplayInitRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 249
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p0, p2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 251
    invoke-virtual {p5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 252
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 254
    if-eqz p3, :cond_0

    .line 255
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 257
    :cond_0
    int-to-float v3, p4

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 259
    invoke-virtual {p5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 260
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 262
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v2, v3, v4

    .line 263
    .local v2, "scaleVertical":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v1, v3, v4

    .line 264
    .local v1, "scaleHorizontal":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 265
    .local v0, "scale":F
    cmpl-float v3, v0, v6

    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 267
    invoke-virtual {p5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 268
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 270
    :cond_1
    return-void
.end method
