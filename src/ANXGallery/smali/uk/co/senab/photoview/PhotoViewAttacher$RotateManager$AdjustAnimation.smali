.class Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustAnimation"
.end annotation


# instance fields
.field private isRunning:Z

.field private mAlphaScroller:Landroid/widget/Scroller;

.field private mRotateFocusX:F

.field private mRotateFocusY:F

.field private mRotateScroller:Landroid/widget/Scroller;

.field private mScaleScroller:Landroid/widget/Scroller;

.field private mTranslateScroller:Landroid/widget/Scroller;

.field private mTranslateX:I

.field private mTraslateY:I

.field final synthetic this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$1"    # Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2626
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2627
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 2628
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateScroller:Landroid/widget/Scroller;

    .line 2629
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mScaleScroller:Landroid/widget/Scroller;

    .line 2630
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    .line 2631
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mAlphaScroller:Landroid/widget/Scroller;

    .line 2632
    return-void
.end method

.method private checkBounds()V
    .locals 15

    .prologue
    .line 2784
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 2785
    .local v7, "imageView":Landroid/widget/ImageView;
    if-nez v7, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v12, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v12, v12, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v12}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-static {v11, v12}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 2789
    .local v4, "displayRect":Landroid/graphics/RectF;
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v2

    .line 2790
    .local v2, "degrees":F
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v11, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1300(Luk/co/senab/photoview/PhotoViewAttacher;F)I

    move-result v5

    .line 2791
    .local v5, "finalDegrees":I
    int-to-float v11, v5

    invoke-static {v2, v11}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2792
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    int-to-float v12, v5

    sub-float v12, v2, v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-static {v11, v12, v13, v14}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1100(Luk/co/senab/photoview/PhotoViewAttacher;FFF)V

    .line 2798
    :cond_2
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 2799
    .local v8, "rotatedMatrix":Landroid/graphics/Matrix;
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-static {v11, v8}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->access$2300(Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;Landroid/graphics/Matrix;)[F

    move-result-object v3

    .line 2800
    .local v3, "deltas":[F
    if-eqz v3, :cond_3

    .line 2801
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/4 v12, 0x0

    aget v12, v3, v12

    const/4 v13, 0x1

    aget v13, v3, v13

    invoke-static {v11, v12, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->access$300(Luk/co/senab/photoview/PhotoViewAttacher;FF)V

    .line 2807
    :cond_3
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2808
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v11

    float-to-int v9, v11

    .line 2810
    .local v9, "rotation":I
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v11, v1, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1600(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 2811
    .local v0, "baseDisplay":Landroid/graphics/RectF;
    if-nez v0, :cond_4

    .line 2812
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    const-string v13, "calculate base display null"

    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2815
    :cond_4
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v12, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v12, v12, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v12}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-static {v11, v12}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 2816
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2817
    .local v10, "wscale":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2818
    .local v6, "hscale":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 2819
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v10, v11, v12

    .line 2821
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v11, v10

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float v6, v11, v12

    .line 2822
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v6, v11}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2823
    :cond_6
    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-static {v11, v10, v6, v12, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->access$900(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    goto/16 :goto_0
.end method

.method private precise(F)I
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 2639
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private unPrecise(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2643
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private updateMatrix()V
    .locals 12

    .prologue
    .line 2756
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2757
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v4

    .line 2758
    .local v4, "rotation":F
    new-instance v2, Landroid/graphics/RectF;

    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v8, v8, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v8}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-static {v7, v8}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2759
    .local v2, "display":Landroid/graphics/RectF;
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2760
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v8, v8, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1300(Luk/co/senab/photoview/PhotoViewAttacher;F)I

    move-result v8

    invoke-static {v7, v1, v8}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1900(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)V

    .line 2761
    new-instance v0, Landroid/graphics/RectF;

    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v8, v8, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8}, Luk/co/senab/photoview/PhotoViewAttacher;->access$2000(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-static {v7, v8}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2763
    .local v0, "baseDisplay":Landroid/graphics/RectF;
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2764
    .local v6, "wScaleFactor":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2765
    .local v3, "hScaleFactor":F
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1400(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2766
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-static {v7, v2, v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->access$2100(Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2767
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v6, v7, v8

    .line 2768
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v3, v7, v8

    .line 2769
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2770
    .local v5, "suppMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2771
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2772
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1400(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2775
    .end local v5    # "suppMatrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v7, v7, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v11, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v11, v11, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Luk/co/senab/photoview/PhotoViewAttacher;->access$2200(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 2781
    .end local v0    # "baseDisplay":Landroid/graphics/RectF;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "display":Landroid/graphics/RectF;
    .end local v3    # "hScaleFactor":F
    .end local v4    # "rotation":F
    .end local v6    # "wScaleFactor":F
    :cond_1
    return-void
.end method


# virtual methods
.method public alpha(FFI)V
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 2666
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mAlphaScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2667
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mAlphaScroller:Landroid/widget/Scroller;

    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v1

    sub-float v3, p2, p1

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2668
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 2635
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning:Z

    return v0
.end method

.method public rotate(FFFFI)V
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 2647
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2648
    iput p3, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusX:F

    .line 2649
    iput p4, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusY:F

    .line 2650
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateScroller:Landroid/widget/Scroller;

    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v1

    sub-float v3, p2, p1

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v3

    move v4, v2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2651
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2690
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2691
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->stop()V

    .line 2749
    :cond_0
    :goto_0
    return-void

    .line 2694
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v14}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v8

    .line 2695
    .local v8, "imageView":Landroid/widget/ImageView;
    if-eqz v8, :cond_0

    .line 2696
    const/4 v9, 0x0

    .line 2697
    .local v9, "more":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2698
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrX()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->unPrecise(I)F

    move-result v4

    .line 2699
    .local v4, "degrees":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v14}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v2

    .line 2700
    .local v2, "curDegrees":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    sub-float v15, v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusY:F

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1100(Luk/co/senab/photoview/PhotoViewAttacher;FFF)V

    .line 2701
    const/4 v9, 0x1

    .line 2703
    .end local v2    # "curDegrees":F
    .end local v4    # "degrees":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2704
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrX()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->unPrecise(I)F

    move-result v12

    .line 2705
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v14}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1400(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/gallery/util/MatrixUtil;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 2706
    .local v3, "curScale":F
    div-float v13, v12, v3

    .line 2707
    .local v13, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v15, v15, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v15}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    invoke-static {v14, v15}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    .line 2708
    .local v7, "display":Landroid/graphics/RectF;
    if-eqz v7, :cond_3

    .line 2709
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    move/from16 v0, v16

    invoke-static {v14, v13, v13, v15, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->access$900(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 2711
    :cond_3
    const/4 v9, 0x1

    .line 2713
    .end local v3    # "curScale":F
    .end local v7    # "display":Landroid/graphics/RectF;
    .end local v12    # "scale":F
    .end local v13    # "scaleFactor":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2714
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    .line 2715
    .local v10, "newX":I
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrY()I

    move-result v11

    .line 2718
    .local v11, "newY":I
    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateX:I

    sub-int v14, v10, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->unPrecise(I)F

    move-result v5

    .line 2719
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTraslateY:I

    sub-int v14, v11, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->unPrecise(I)F

    move-result v6

    .line 2720
    .local v6, "deltaY":F
    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusX:F

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusX:F

    .line 2721
    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusY:F

    add-float/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateFocusY:F

    .line 2722
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v14, v5, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->access$300(Luk/co/senab/photoview/PhotoViewAttacher;FF)V

    .line 2723
    move-object/from16 v0, p0

    iput v10, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateX:I

    .line 2724
    move-object/from16 v0, p0

    iput v11, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTraslateY:I

    .line 2725
    const/4 v9, 0x1

    .line 2727
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v10    # "newX":I
    .end local v11    # "newY":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mAlphaScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2728
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mAlphaScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getCurrX()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->unPrecise(I)F

    move-result v1

    .line 2729
    .local v1, "alpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v14, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$800(Luk/co/senab/photoview/PhotoViewAttacher;F)V

    .line 2731
    .end local v1    # "alpha":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v15, v15, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v15}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    invoke-static {v14, v15}, Luk/co/senab/photoview/PhotoViewAttacher;->access$400(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 2732
    if-eqz v9, :cond_7

    .line 2733
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Luk/co/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2735
    :cond_7
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->checkBounds()V

    .line 2736
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->updateMatrix()V

    .line 2737
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Luk/co/senab/photoview/PhotoViewAttacher;->access$800(Luk/co/senab/photoview/PhotoViewAttacher;F)V

    .line 2738
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning:Z

    .line 2739
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v15, v15, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v15}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    invoke-static {v14, v15}, Luk/co/senab/photoview/PhotoViewAttacher;->access$400(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/16 v15, 0x8

    invoke-static {v14, v15}, Luk/co/senab/photoview/PhotoViewAttacher;->access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v14}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 2745
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v14, v14, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v14}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v15, v15, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v15}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v15

    invoke-interface {v14, v15}, Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;->onRotateEnd(F)V

    goto/16 :goto_0
.end method

.method public scale(FFI)V
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 2654
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mScaleScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2655
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mScaleScroller:Landroid/widget/Scroller;

    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v1

    sub-float v3, p2, p1

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2656
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2671
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v1, v1, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2672
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2673
    const/4 v1, 0x1

    iput-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning:Z

    .line 2674
    invoke-static {v0, p0}, Luk/co/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2676
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2679
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2680
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2681
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2682
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning:Z

    if-eqz v0, :cond_0

    .line 2683
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning:Z

    .line 2684
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    .line 2686
    :cond_0
    return-void
.end method

.method public translate(FFFFI)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F
    .param p5, "duration"    # I

    .prologue
    .line 2659
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2660
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateX:I

    .line 2661
    invoke-direct {p0, p2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTraslateY:I

    .line 2662
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->mTranslateScroller:Landroid/widget/Scroller;

    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v1

    invoke-direct {p0, p2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v2

    invoke-direct {p0, p3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v3

    invoke-direct {p0, p4}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->precise(F)I

    move-result v4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2663
    return-void
.end method
