.class public final enum Lcom/edmodo/cropper/cropwindow/edge/Edge;
.super Ljava/lang/Enum;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/edmodo/cropper/cropwindow/edge/Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;


# instance fields
.field private mCoordinate:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 27
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 28
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 29
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method private static adjustBottom(FLandroid/graphics/RectF;FF)F
    .locals 5
    .param p0, "y"    # F
    .param p1, "imageRect"    # Landroid/graphics/RectF;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 478
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p0

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 480
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 498
    .local v0, "resultY":F
    :goto_0
    return v0

    .line 485
    .end local v0    # "resultY":F
    :cond_0
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 486
    .local v2, "resultYVert":F
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 489
    .local v1, "resultYHoriz":F
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float/2addr v3, v4

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_1

    .line 490
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float v2, v3, v4

    .line 493
    :cond_1
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v3, p0, v3

    mul-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 494
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    div-float/2addr v4, p3

    add-float v1, v3, v4

    .line 496
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .restart local v0    # "resultY":F
    goto :goto_0
.end method

.method private static adjustLeft(FLandroid/graphics/RectF;FF)F
    .locals 5
    .param p0, "x"    # F
    .param p1, "imageRect"    # Landroid/graphics/RectF;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 366
    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float v3, p0, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 368
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 386
    .local v0, "resultX":F
    :goto_0
    return v0

    .line 373
    .end local v0    # "resultX":F
    :cond_0
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 374
    .local v1, "resultXHoriz":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 377
    .local v2, "resultXVert":F
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, v4

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    .line 378
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v1, v3, v4

    .line 381
    :cond_1
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, p0

    div-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 382
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    mul-float/2addr v4, p3

    sub-float v2, v3, v4

    .line 384
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .restart local v0    # "resultX":F
    goto :goto_0
.end method

.method private static adjustRight(FLandroid/graphics/RectF;FF)F
    .locals 5
    .param p0, "x"    # F
    .param p1, "imageRect"    # Landroid/graphics/RectF;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 404
    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p0

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 406
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 424
    .local v0, "resultX":F
    :goto_0
    return v0

    .line 411
    .end local v0    # "resultX":F
    :cond_0
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 412
    .local v1, "resultXHoriz":F
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 415
    .local v2, "resultXVert":F
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float/2addr v3, v4

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_1

    .line 416
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    add-float v1, v3, v4

    .line 419
    :cond_1
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v3, p0, v3

    div-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 420
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    mul-float/2addr v4, p3

    add-float v2, v3, v4

    .line 422
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .restart local v0    # "resultX":F
    goto :goto_0
.end method

.method private static adjustTop(FLandroid/graphics/RectF;FF)F
    .locals 5
    .param p0, "y"    # F
    .param p1, "imageRect"    # Landroid/graphics/RectF;
    .param p2, "imageSnapRadius"    # F
    .param p3, "aspectRatio"    # F

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 441
    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v3, p0, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 443
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 461
    .local v0, "resultY":F
    :goto_0
    return v0

    .line 448
    .end local v0    # "resultY":F
    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 449
    .local v2, "resultYVert":F
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 452
    .local v1, "resultYHoriz":F
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, v4

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    .line 453
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float v1, v3, v4

    .line 456
    :cond_1
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sub-float/2addr v3, p0

    mul-float/2addr v3, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 457
    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    div-float/2addr v4, p3

    sub-float v2, v3, v4

    .line 459
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .restart local v0    # "resultY":F
    goto :goto_0
.end method

.method public static getHeight()F
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getWidth()F
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isOutOfBounds(FFFFLandroid/graphics/RectF;)Z
    .locals 1
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .param p5, "imageRect"    # Landroid/graphics/RectF;

    .prologue
    .line 246
    iget v0, p5, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p5, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    iget v0, p5, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-object v0
.end method

.method public static values()[Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, [Lcom/edmodo/cropper/cropwindow/edge/Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/edmodo/cropper/cropwindow/edge/Edge;

    return-object v0
.end method


# virtual methods
.method public adjustCoordinate(F)V
    .locals 6
    .param p1, "aspectRatio"    # F

    .prologue
    .line 109
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 110
    .local v1, "left":F
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 111
    .local v3, "top":F
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 112
    .local v2, "right":F
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 114
    .local v0, "bottom":F
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-static {v3, v2, v0, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v4

    iput v4, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-static {v1, v2, v0, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v4

    iput v4, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-static {v1, v3, v0, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v4

    iput v4, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-static {v1, v3, v2, p1}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v4

    iput v4, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public adjustCoordinate(FFLandroid/graphics/RectF;FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/RectF;
    .param p4, "imageSnapRadius"    # F
    .param p5, "aspectRatio"    # F

    .prologue
    .line 85
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-static {p1, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustLeft(FLandroid/graphics/RectF;FF)F

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustTop(FLandroid/graphics/RectF;FF)F

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-static {p1, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustRight(FLandroid/graphics/RectF;FF)F

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-static {p2, p3, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustBottom(FLandroid/graphics/RectF;FF)F

    move-result v0

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCoordinate()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return v0
.end method

.method public isNewRectangleOutOfBounds(Lcom/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/RectF;F)Z
    .locals 7
    .param p1, "edge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "aspectRatio"    # F

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapOffset(Landroid/graphics/RectF;)F

    move-result v6

    .line 144
    .local v6, "offset":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 235
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 148
    :pswitch_0
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 151
    .local v1, "top":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v3, v0, v6

    .line 152
    .local v3, "bottom":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 153
    .local v4, "right":F
    invoke-static {v1, v4, v3, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v2

    .local v2, "left":F
    move-object v0, p0

    move-object v5, p2

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto :goto_0

    .line 157
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_1
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    .line 160
    .restart local v3    # "bottom":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v1, v0, v6

    .line 161
    .restart local v1    # "top":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 162
    .restart local v4    # "right":F
    invoke-static {v1, v4, v3, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v2

    .restart local v2    # "left":F
    move-object v0, p0

    move-object v5, p2

    .line 164
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto :goto_0

    .line 170
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :pswitch_1
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 173
    .restart local v2    # "left":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v4, v0, v6

    .line 174
    .restart local v4    # "right":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 175
    .restart local v3    # "bottom":F
    invoke-static {v2, v4, v3, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v1

    .restart local v1    # "top":F
    move-object v0, p0

    move-object v5, p2

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto :goto_0

    .line 179
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_2
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget v4, p2, Landroid/graphics/RectF;->right:F

    .line 182
    .restart local v4    # "right":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v2, v0, v6

    .line 183
    .restart local v2    # "left":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 184
    .restart local v3    # "bottom":F
    invoke-static {v2, v4, v3, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v1

    .restart local v1    # "top":F
    move-object v0, p0

    move-object v5, p2

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto/16 :goto_0

    .line 192
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :pswitch_2
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 195
    .restart local v1    # "top":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v3, v0, v6

    .line 196
    .restart local v3    # "bottom":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 197
    .restart local v2    # "left":F
    invoke-static {v2, v1, v3, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v4

    .restart local v4    # "right":F
    move-object v0, p0

    move-object v5, p2

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto/16 :goto_0

    .line 201
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_3
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    .line 204
    .restart local v3    # "bottom":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v1, v0, v6

    .line 205
    .restart local v1    # "top":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 206
    .restart local v2    # "left":F
    invoke-static {v2, v1, v3, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v4

    .restart local v4    # "right":F
    move-object v0, p0

    move-object v5, p2

    .line 208
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto/16 :goto_0

    .line 214
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :pswitch_3
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 217
    .restart local v2    # "left":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v4, v0, v6

    .line 218
    .restart local v4    # "right":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 219
    .restart local v1    # "top":F
    invoke-static {v2, v1, v4, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v3

    .restart local v3    # "bottom":F
    move-object v0, p0

    move-object v5, p2

    .line 221
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto/16 :goto_0

    .line 223
    .end local v1    # "top":F
    .end local v2    # "left":F
    .end local v3    # "bottom":F
    .end local v4    # "right":F
    :cond_4
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget v4, p2, Landroid/graphics/RectF;->right:F

    .line 226
    .restart local v4    # "right":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sub-float v2, v0, v6

    .line 227
    .restart local v2    # "left":F
    sget-object v0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 228
    .restart local v1    # "top":F
    invoke-static {v2, v1, v4, p3}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v3

    .restart local v3    # "bottom":F
    move-object v0, p0

    move-object v5, p2

    .line 230
    invoke-direct/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/RectF;)Z

    move-result v0

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isOutsideMargin(Landroid/graphics/RectF;F)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "margin"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 344
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gez v2, :cond_3

    .line 347
    .local v0, "result":Z
    :goto_0
    return v0

    .line 335
    .end local v0    # "result":Z
    :pswitch_0
    iget v2, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    .line 336
    .restart local v0    # "result":Z
    :goto_1
    goto :goto_0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 335
    goto :goto_1

    .line 338
    :pswitch_1
    iget v2, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gez v2, :cond_1

    .line 339
    .restart local v0    # "result":Z
    :goto_2
    goto :goto_0

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 338
    goto :goto_2

    .line 341
    :pswitch_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    .line 342
    .restart local v0    # "result":Z
    :goto_3
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    move v0, v1

    .line 341
    goto :goto_3

    :cond_3
    move v0, v1

    .line 344
    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public offset(F)V
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 61
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 62
    return-void
.end method

.method public setCoordinate(F)V
    .locals 0
    .param p1, "coordinate"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 53
    return-void
.end method

.method public snapOffset(Landroid/graphics/RectF;)F
    .locals 4
    .param p1, "imageRect"    # Landroid/graphics/RectF;

    .prologue
    .line 289
    iget v1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 292
    .local v1, "oldCoordinate":F
    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 303
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 307
    .local v0, "newCoordinate":F
    :goto_0
    sub-float v2, v0, v1

    return v2

    .line 294
    .end local v0    # "newCoordinate":F
    :pswitch_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 295
    .restart local v0    # "newCoordinate":F
    goto :goto_0

    .line 297
    .end local v0    # "newCoordinate":F
    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 298
    .restart local v0    # "newCoordinate":F
    goto :goto_0

    .line 300
    .end local v0    # "newCoordinate":F
    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 301
    .restart local v0    # "newCoordinate":F
    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public snapToRect(Landroid/graphics/RectF;)F
    .locals 3
    .param p1, "imageRect"    # Landroid/graphics/RectF;

    .prologue
    .line 259
    iget v0, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 261
    .local v0, "oldCoordinate":F
    sget-object v1, Lcom/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 276
    :goto_0
    iget v1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v1, v0

    return v1

    .line 263
    :pswitch_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 266
    :pswitch_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 269
    :pswitch_2
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 272
    :pswitch_3
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Lcom/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
