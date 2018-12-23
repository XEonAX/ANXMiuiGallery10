.class public Lcom/miui/gallery/collage/ElementPositionModel;
.super Ljava/lang/Object;
.source "ElementPositionModel.java"


# instance fields
.field public final locationType:I

.field public final width:F

.field public final x:F

.field public final y:F


# direct methods
.method public static getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/ElementPositionModel;FFIIZ)V
    .locals 5
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "positionModel"    # Lcom/miui/gallery/collage/ElementPositionModel;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "parentWidth"    # I
    .param p5, "parentHeight"    # I
    .param p6, "isRTL"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 32
    iget v2, p1, Lcom/miui/gallery/collage/ElementPositionModel;->x:F

    int-to-float v3, p4

    mul-float v0, v2, v3

    .line 33
    .local v0, "x":F
    iget v2, p1, Lcom/miui/gallery/collage/ElementPositionModel;->y:F

    int-to-float v3, p5

    mul-float v1, v2, v3

    .line 34
    .local v1, "y":F
    iget v2, p1, Lcom/miui/gallery/collage/ElementPositionModel;->locationType:I

    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_0
    if-eqz p6, :cond_0

    .line 73
    int-to-float v2, p4

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 75
    :cond_0
    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 76
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 77
    return-void

    .line 36
    :pswitch_0
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 37
    iput v1, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 40
    :pswitch_1
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 41
    div-float v2, p3, v4

    sub-float v2, v1, v2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 44
    :pswitch_2
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 45
    sub-float v2, v1, p3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 48
    :pswitch_3
    div-float v2, p2, v4

    sub-float v2, v0, v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 49
    iput v1, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 52
    :pswitch_4
    div-float v2, p2, v4

    sub-float v2, v0, v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 53
    div-float v2, p3, v4

    sub-float v2, v1, v2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 56
    :pswitch_5
    div-float v2, p2, v4

    sub-float v2, v0, v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 57
    sub-float v2, v1, p3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 60
    :pswitch_6
    sub-float v2, v0, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 61
    iput v1, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 64
    :pswitch_7
    sub-float v2, v0, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 65
    div-float v2, p3, v4

    sub-float v2, v1, v2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 68
    :pswitch_8
    sub-float v2, v0, p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 69
    sub-float v2, v1, p3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
