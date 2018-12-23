.class public Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;
.super Ljava/lang/Object;
.source "RefocusWaterMarkPainter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RefocusWaterMarkPainter"

.field private static final TEXT_WATER_MARK_RATIO:F = 0.87f


# instance fields
.field private mDualCameraWaterMarkPaddingXRatio:F

.field private mDualCameraWaterMarkPaddingYRatio:F

.field private mDualCameraWaterMarkSizeRatio:F

.field private mHeight:I

.field private mOrientation:I

.field private mOriginHeight:I

.field private mOriginWidth:I

.field private mWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private final mWaterMarkPositions:[F

.field private final mWaterMarkRect:Landroid/graphics/RectF;

.field private mWaterMarkTextureId:I

.field private mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

.field private final mWaterMarkTimePositions:[F

.field private final mWaterMarkTimeRect:Landroid/graphics/RectF;

.field private mWaterMarkTimeTextureId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "waterMarkBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "waterMarkTimeBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "originWidth"    # I
    .param p7, "originHeight"    # I
    .param p8, "orientation"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTextureId:I

    .line 41
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeTextureId:I

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkRect:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeRect:Landroid/graphics/RectF;

    .line 46
    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkPositions:[F

    .line 47
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimePositions:[F

    .line 50
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 51
    iput-object p3, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    .line 52
    iput p4, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWidth:I

    .line 53
    iput p5, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mHeight:I

    .line 54
    iput p6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOriginWidth:I

    .line 55
    iput p7, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOriginHeight:I

    .line 56
    iput p8, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOrientation:I

    .line 58
    const/4 v0, 0x0

    const v1, 0x7f05001e

    invoke-static {p1, v1, v0}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getResourceFloat(Landroid/content/res/Resources;IF)F

    move-result v1

    iput v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mDualCameraWaterMarkSizeRatio:F

    .line 59
    const v1, 0x7f05001f

    invoke-static {p1, v1, v0}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getResourceFloat(Landroid/content/res/Resources;IF)F

    move-result v1

    iput v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mDualCameraWaterMarkPaddingXRatio:F

    .line 60
    const v1, 0x7f050020

    invoke-static {p1, v1, v0}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getResourceFloat(Landroid/content/res/Resources;IF)F

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mDualCameraWaterMarkPaddingYRatio:F

    .line 62
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->generatePositions()V

    .line 63
    return-void
.end method

.method private generatePositions()V
    .locals 20

    .line 75
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWidth:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .local v1, "targetRect":Landroid/graphics/RectF;
    iget v2, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mHeight:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOriginHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 81
    .local v2, "customScale":F
    iget v3, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWidth:I

    iget v4, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 82
    .local v3, "shotL":I
    int-to-float v4, v3

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    .line 83
    .local v4, "ratio":F
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 84
    iget v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mDualCameraWaterMarkSizeRatio:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    and-int/lit8 v13, v5, -0x2

    .line 85
    .local v13, "waterMarkHeight":I
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v13

    iget-object v6, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    and-int/lit8 v14, v5, -0x2

    .line 86
    .local v14, "waterMarkWidth":I
    iget v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mDualCameraWaterMarkPaddingXRatio:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    and-int/lit8 v15, v5, -0x2

    .line 87
    .local v15, "paddingX":I
    iget v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mDualCameraWaterMarkPaddingYRatio:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    and-int/lit8 v12, v5, -0x2

    .line 89
    .local v12, "paddingY":I
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkRect:Landroid/graphics/RectF;

    int-to-float v7, v14

    int-to-float v8, v13

    int-to-float v9, v15

    int-to-float v10, v12

    iget v11, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOrientation:I

    const/16 v16, 0x1

    move-object v6, v1

    move/from16 v17, v12

    move/from16 v12, v16

    .end local v12    # "paddingY":I
    .local v17, "paddingY":I
    invoke-static/range {v5 .. v12}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getWaterMarkRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFIZ)V

    .line 90
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkPositions:[F

    iget-object v6, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkRect:Landroid/graphics/RectF;

    invoke-static {v5, v6, v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->configGLPositionByRect([FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 92
    .end local v13    # "waterMarkHeight":I
    .end local v14    # "waterMarkWidth":I
    .end local v15    # "paddingX":I
    .end local v17    # "paddingY":I
    :cond_0
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 93
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 94
    .local v13, "waterMarkWidth":I
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 95
    .local v14, "waterMarkHeight":I
    const-wide v5, 0x4045d7efb3f3733bL    # 43.687002653

    float-to-double v7, v4

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v15, v5

    .line 96
    .local v15, "padding":I
    int-to-float v5, v14

    const v6, 0x3e051eb8    # 0.13f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v12, v5

    .line 97
    .local v12, "charMargin":I
    and-int/lit8 v11, v15, -0x2

    .line 98
    .local v11, "paddingX":I
    sub-int v5, v15, v12

    and-int/lit8 v10, v5, -0x2

    .line 100
    .local v10, "paddingY":I
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeRect:Landroid/graphics/RectF;

    int-to-float v7, v13

    int-to-float v8, v14

    int-to-float v9, v11

    int-to-float v6, v10

    move/from16 v18, v2

    iget v2, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOrientation:I

    .end local v2    # "customScale":F
    .local v18, "customScale":F
    const/16 v16, 0x0

    move/from16 v17, v6

    move-object v6, v1

    move/from16 v19, v10

    move/from16 v10, v17

    .end local v10    # "paddingY":I
    .local v19, "paddingY":I
    move/from16 v17, v11

    move v11, v2

    .end local v11    # "paddingX":I
    .local v17, "paddingX":I
    move v2, v12

    move/from16 v12, v16

    .end local v12    # "charMargin":I
    .local v2, "charMargin":I
    invoke-static/range {v5 .. v12}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getWaterMarkRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFIZ)V

    .line 101
    iget-object v5, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimePositions:[F

    iget-object v6, v0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeRect:Landroid/graphics/RectF;

    invoke-static {v5, v6, v1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->configGLPositionByRect([FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .end local v2    # "charMargin":I
    .end local v13    # "waterMarkWidth":I
    .end local v14    # "waterMarkHeight":I
    .end local v15    # "padding":I
    .end local v17    # "paddingX":I
    .end local v19    # "paddingY":I
    goto :goto_0

    .line 103
    .end local v18    # "customScale":F
    .local v2, "customScale":F
    :cond_1
    move/from16 v18, v2

    .end local v2    # "customScale":F
    .restart local v18    # "customScale":F
    :goto_0
    return-void
.end method

.method private static getResourceFloat(Landroid/content/res/Resources;IF)F
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "defaultValue"    # F

    .line 195
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 197
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 198
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RefocusWaterMarkPainter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return p2
.end method

.method private static getWaterMarkCood(I)[F
    .locals 1
    .param p0, "orientation"    # I

    .line 177
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 188
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_90_ROTATION:[F

    .line 186
    .local v0, "cood":[F
    goto :goto_0

    .line 182
    .end local v0    # "cood":[F
    :cond_1
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_270_ROTATION:[F

    .line 183
    .restart local v0    # "cood":[F
    goto :goto_0

    .line 179
    .end local v0    # "cood":[F
    :cond_2
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_180_ROTATION:[F

    .line 180
    .restart local v0    # "cood":[F
    nop

    .line 188
    :goto_0
    nop

    .line 191
    return-object v0
.end method

.method private static getWaterMarkRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFIZ)V
    .locals 5
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "viewPort"    # Landroid/graphics/RectF;
    .param p2, "waterMarkWidth"    # F
    .param p3, "waterMarkHeight"    # F
    .param p4, "paddingX"    # F
    .param p5, "paddingY"    # F
    .param p6, "orientation"    # I
    .param p7, "left"    # Z

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 152
    .local v0, "newViewPort":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    .local v2, "matrixInvert":Landroid/graphics/Matrix;
    invoke-static {p1, v1, p6}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->configImageMatrixByOrientation(Landroid/graphics/RectF;Landroid/graphics/Matrix;I)V

    .line 155
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 156
    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 157
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 159
    if-eqz p7, :cond_0

    .line 160
    iput p4, p0, Landroid/graphics/RectF;->left:F

    .line 161
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p5

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 162
    iget v3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 163
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 165
    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p4

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 166
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p5

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 167
    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 168
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 171
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 172
    invoke-virtual {v2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public canvasDrawWaterMark(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 118
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 121
    .local v2, "matrixRotation":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    .local v3, "matrixTranslate":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    .local v4, "matrix":Landroid/graphics/Matrix;
    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOrientation:I

    invoke-static {v5}, Lcom/miui/extraphoto/refocus/RefocusManager;->getDegreeByOrientation(I)I

    move-result v5

    rsub-int v5, v5, 0x168

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 124
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 125
    .local v5, "waterMarkRect":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 126
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v7, v7, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 128
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v5, v6, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 129
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 130
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 131
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 133
    :cond_0
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 134
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v7, v7, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 136
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 137
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 138
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 139
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 140
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 141
    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 143
    :cond_1
    return-void
.end method

.method public generateWaterMarkTexture()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2, v1}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTextureId:I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2, v1}, Lcom/miui/extraphoto/refocus/gles/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeTextureId:I

    .line 72
    :cond_1
    return-void
.end method

.method public glDrawWaterMark(Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;)V
    .locals 5
    .param p1, "glTextureShader"    # Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;

    .line 106
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 107
    const/4 v1, 0x1

    const/16 v2, 0x303

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v1}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 108
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTextureId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTextureId:I

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkPositions:[F

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOrientation:I

    invoke-static {v4}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getWaterMarkCood(I)[F

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->draw(I[F[F)V

    .line 111
    :cond_0
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeTextureId:I

    if-eq v1, v2, :cond_1

    .line 112
    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeTextureId:I

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimePositions:[F

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mOrientation:I

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->getWaterMarkCood(I)[F

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->draw(I[F[F)V

    .line 114
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 115
    return-void
.end method

.method public release()V
    .locals 5

    .line 146
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusWaterMarkPainter;->mWaterMarkTimeTextureId:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 147
    return-void
.end method
