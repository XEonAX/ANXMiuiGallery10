.class public Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorGradientDrawable.java"


# instance fields
.field private mColors:[I

.field private mHeight:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;-><init>([III)V

    .line 23
    return-void
.end method

.method public constructor <init>([III)V
    .locals 1
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mRect:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 26
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mColors:[I

    .line 27
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mWidth:I

    .line 28
    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mHeight:I

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mColors:[I

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 51
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mColors:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/ColorGradientDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 42
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 46
    return-void
.end method
