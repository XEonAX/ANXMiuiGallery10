.class Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayoutPreviewDrawable.java"


# instance fields
.field private mBackgroundColor:I

.field private mLayoutModel:Lcom/miui/gallery/collage/LayoutModel;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    .line 25
    iget-object v0, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    const v0, 0x7f110047

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mBackgroundColor:I

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    iget v9, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mBackgroundColor:I

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    iget-object v9, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mLayoutModel:Lcom/miui/gallery/collage/LayoutModel;

    if-nez v9, :cond_1

    .line 56
    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 38
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v6, v9

    .line 39
    .local v6, "width":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 40
    .local v2, "height":F
    iget-object v9, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mLayoutModel:Lcom/miui/gallery/collage/LayoutModel;

    iget-object v5, v9, Lcom/miui/gallery/collage/LayoutModel;->items:[Lcom/miui/gallery/collage/LayoutItemModel;

    .line 41
    .local v5, "views":[Lcom/miui/gallery/collage/LayoutItemModel;
    array-length v10, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v4, v5, v9

    .line 42
    .local v4, "layoutItemModel":Lcom/miui/gallery/collage/LayoutItemModel;
    iget-object v1, v4, Lcom/miui/gallery/collage/LayoutItemModel;->data:[F

    .line 43
    .local v1, "data":[F
    iget-object v11, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 44
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v1

    if-ge v3, v11, :cond_3

    .line 45
    aget v11, v1, v3

    mul-float v7, v11, v6

    .line 46
    .local v7, "x":F
    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    mul-float v8, v11, v2

    .line 47
    .local v8, "y":F
    iget-object v11, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 48
    iget-object v11, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 50
    :cond_2
    iget-object v11, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 53
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    iget-object v11, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 54
    iget-object v11, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 41
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    return-void
.end method

.method public setLayoutModel(Lcom/miui/gallery/collage/LayoutModel;)V
    .locals 0
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->mLayoutModel:Lcom/miui/gallery/collage/LayoutModel;

    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/collage/adapter/LayoutPreviewDrawable;->invalidateSelf()V

    .line 76
    return-void
.end method
