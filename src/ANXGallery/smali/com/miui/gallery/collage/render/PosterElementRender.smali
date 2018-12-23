.class public Lcom/miui/gallery/collage/render/PosterElementRender;
.super Ljava/lang/Object;
.source "PosterElementRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;,
        Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    }
.end annotation


# instance fields
.field private mBackground:I

.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/ImageElementModel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateImageDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/SpecifyDrawableModel;II)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/SpecifyDrawableModel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateSpecifyDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/SpecifyDrawableModel;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;[Lcom/miui/gallery/collage/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/TextElementModel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateTextHolders(Landroid/content/Context;[Lcom/miui/gallery/collage/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/collage/render/PosterElementRender;->drawText(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/TextElementModel;Landroid/content/res/Resources;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "x1"    # Lcom/miui/gallery/collage/TextElementModel;
    .param p2, "x2"    # Landroid/content/res/Resources;

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/collage/render/PosterElementRender;->configTextPaint(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/TextElementModel;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/TextElementModel;Landroid/graphics/RectF;IIFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "x1"    # Lcom/miui/gallery/collage/TextElementModel;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # F
    .param p6, "x6"    # Z

    .prologue
    .line 28
    invoke-static/range {p0 .. p6}, Lcom/miui/gallery/collage/render/PosterElementRender;->countText(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/TextElementModel;Landroid/graphics/RectF;IIFZ)V

    return-void
.end method

.method static synthetic access$600(IIF)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/collage/render/PosterElementRender;->getColorToColorProgress(IIF)I

    move-result v0

    return v0
.end method

.method private static configTextPaint(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/TextElementModel;Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "autoLineLayout"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "textElementModel"    # Lcom/miui/gallery/collage/TextElementModel;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 284
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 285
    .local v0, "density":F
    iget v2, p1, Lcom/miui/gallery/collage/TextElementModel;->textSize:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 286
    iget-object v2, p1, Lcom/miui/gallery/collage/TextElementModel;->textColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    iget v2, p1, Lcom/miui/gallery/collage/TextElementModel;->letterSpace:F

    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLetterSpace(F)V

    goto :goto_0
.end method

.method private static countText(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/TextElementModel;Landroid/graphics/RectF;IIFZ)V
    .locals 7
    .param p0, "autoLineLayout"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "textElementModel"    # Lcom/miui/gallery/collage/TextElementModel;
    .param p2, "textRectF"    # Landroid/graphics/RectF;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I
    .param p5, "scaleOffset"    # F
    .param p6, "isRTL"    # Z

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText()V

    .line 292
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 293
    iget v0, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 294
    iget v0, p2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 295
    iget v0, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 296
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 297
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/ElementPositionModel;->getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/ElementPositionModel;FFIIZ)V

    .line 298
    return-void
.end method

.method private static drawText(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "autoLineLayout"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p2, "textRectF"    # Landroid/graphics/RectF;
    .param p3, "scaleOffset"    # F

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 302
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    invoke-virtual {p0, p3, p3, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 304
    invoke-virtual {p1, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 305
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 306
    return-void
.end method

.method private static generateImageDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "imageElementModels"    # [Lcom/miui/gallery/collage/ImageElementModel;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I

    .prologue
    .line 337
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 338
    :cond_0
    const/4 v8, 0x0

    .line 356
    :cond_1
    return-object v8

    .line 340
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 341
    .local v0, "rectFTemp":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 342
    .local v11, "rectTemp":Landroid/graphics/Rect;
    array-length v4, p1

    new-array v8, v4, [Landroid/graphics/drawable/Drawable;

    .line 343
    .local v8, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v4, v8

    if-ge v9, v4, :cond_1

    .line 344
    aget-object v1, p1, v9

    .line 345
    .local v1, "imageElementModel":Lcom/miui/gallery/collage/ImageElementModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/miui/gallery/collage/ImageElementModel;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/collage/ImageElementModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/miui/gallery/collage/CollageUtils;->getDrawableByAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 346
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 347
    .local v2, "drawableWidth":F
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v3, v4

    .line 348
    .local v3, "drawableHeight":F
    div-float v10, v3, v2

    .line 349
    .local v10, "radio":F
    int-to-float v4, p2

    iget v5, v1, Lcom/miui/gallery/collage/ImageElementModel;->width:F

    mul-float v2, v4, v5

    .line 350
    mul-float v3, v2, v10

    .line 351
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/ElementPositionModel;->getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/ElementPositionModel;FFIIZ)V

    .line 352
    invoke-virtual {v0, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 354
    aput-object v7, v8, v9

    .line 343
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 351
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static generateSpecifyDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/SpecifyDrawableModel;II)[Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "specifyDrawableModels"    # [Lcom/miui/gallery/collage/SpecifyDrawableModel;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I

    .prologue
    .line 317
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 318
    :cond_0
    const/4 v10, 0x0

    .line 333
    :cond_1
    return-object v10

    .line 320
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 321
    .local v0, "rectFTemp":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 322
    .local v12, "rectTemp":Landroid/graphics/Rect;
    array-length v2, p1

    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    .line 323
    .local v10, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v2, v10

    if-ge v11, v2, :cond_1

    .line 324
    aget-object v1, p1, v11

    .line 325
    .local v1, "specifyDrawableModel":Lcom/miui/gallery/collage/SpecifyDrawableModel;
    iget-object v2, v1, Lcom/miui/gallery/collage/SpecifyDrawableModel;->specifyDrawableType:Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;

    invoke-virtual {v2, p0, v1}, Lcom/miui/gallery/collage/SpecifyDrawableModel$SpecifyDrawableType;->getDrawable(Landroid/content/res/Resources;Lcom/miui/gallery/collage/SpecifyDrawableModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 326
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 327
    .local v9, "drawableWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 328
    .local v8, "drawableHeight":I
    int-to-float v2, v9

    int-to-float v3, v8

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/ElementPositionModel;->getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/ElementPositionModel;FFIIZ)V

    .line 329
    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 330
    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 331
    aput-object v7, v10, v11

    .line 323
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 328
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static generateTextHolders(Landroid/content/Context;[Lcom/miui/gallery/collage/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textElementModels"    # [Lcom/miui/gallery/collage/TextElementModel;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I
    .param p4, "scale"    # F

    .prologue
    .line 309
    array-length v0, p1

    new-array v7, v0, [Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 310
    .local v7, "textEditorHolders":[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 311
    new-instance v0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    aget-object v2, p1, v6

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/TextElementModel;IIF)V

    aput-object v0, v7, v6

    .line 310
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-object v7
.end method

.method private static getColorToColorProgress(IIF)I
    .locals 9
    .param p0, "colorA"    # I
    .param p1, "colorB"    # I
    .param p2, "progress"    # F

    .prologue
    .line 360
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 361
    .local v0, "alphaA":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 362
    .local v6, "redA":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 363
    .local v4, "greenA":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 365
    .local v2, "blueA":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 366
    .local v1, "alphaB":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 367
    .local v7, "redB":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 368
    .local v5, "greenB":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 370
    .local v3, "blueB":I
    sub-int v8, v1, v0

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v1, v0, v8

    .line 371
    sub-int v8, v7, v6

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v7, v6, v8

    .line 372
    sub-int v8, v5, v4

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v5, v4, v8

    .line 373
    sub-int v8, v3, v2

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v3, v2, v8

    .line 374
    invoke-static {v1, v7, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    .line 77
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 36
    iget-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 37
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 41
    iget-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 42
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 46
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 47
    .local v1, "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->draw(Landroid/graphics/Canvas;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 50
    .end local v1    # "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    :cond_2
    return-void
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    return v0
.end method

.method public getTextEditorHolders()[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    return-object v0
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "background"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    .line 70
    return-void
.end method

.method public setImageDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageDrawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method

.method public setSpecifyDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "specifyDrawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public setTextEditorHolders([Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;)V
    .locals 0
    .param p1, "textEditorHolders"    # [Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 62
    return-void
.end method
