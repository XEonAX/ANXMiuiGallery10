.class Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextAppendConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDrawable"
.end annotation


# instance fields
.field private rectTemp:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V
    .locals 1

    .prologue
    .line 478
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->rectTemp:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$1;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    return-void
.end method

.method private canvasTranslate(Landroid/graphics/Canvas;ZZ)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # Z
    .param p3, "rotate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 552
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F

    move-result v3

    add-float v0, v2, v3

    .line 553
    .local v0, "dx":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F

    move-result v3

    add-float v1, v2, v3

    .line 554
    .local v1, "dy":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    if-eqz p2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getScaleMultiple()F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getScaleMultiple()F

    move-result v3

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 558
    :cond_0
    if-eqz p3, :cond_1

    .line 559
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 561
    :cond_1
    return-void
.end method

.method private drawDialog(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 517
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->rectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->rectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 525
    invoke-direct {p0, p1, v2, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->canvasTranslate(Landroid/graphics/Canvas;ZZ)V

    .line 526
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    .line 537
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 539
    invoke-direct {p0, p1, v1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->canvasTranslate(Landroid/graphics/Canvas;ZZ)V

    .line 540
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 547
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private initCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$102(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;F)F

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->access$202(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;F)F

    .line 514
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->initCanvas(Landroid/graphics/Canvas;)V

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->drawText(Landroid/graphics/Canvas;)V

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->drawDialog(Landroid/graphics/Canvas;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig$TextDrawable;->drawText(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 504
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 495
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 500
    return-void
.end method
