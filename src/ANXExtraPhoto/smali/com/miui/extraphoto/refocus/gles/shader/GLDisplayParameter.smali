.class public Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;
.super Ljava/lang/Object;
.source "GLDisplayParameter.java"


# static fields
.field private static final RELIGHTING_ADJUST_RATIO:F = 0.7f


# instance fields
.field private mGLPosition:[F

.field private mImageDisplayOriginRect:Landroid/graphics/RectF;

.field private mImageDisplayRect:Landroid/graphics/RectF;

.field private final mImageHeight:I

.field private mImageMatrix:Landroid/graphics/Matrix;

.field private mImageMirrorMatrix:Landroid/graphics/Matrix;

.field private mImageMirrorMatrixInvert:Landroid/graphics/Matrix;

.field private mImageRect:Landroid/graphics/RectF;

.field private mImageToViewMatrix:Landroid/graphics/Matrix;

.field private final mImageWidth:I

.field private final mMirror:Z

.field private final mOrientation:I

.field private mRotationMatrix:Landroid/graphics/Matrix;

.field private mRotationMatrixInvert:Landroid/graphics/Matrix;

.field private mTextureCood:[F

.field private final mViewHeight:I

.field private mViewRect:Landroid/graphics/RectF;

.field private mViewToImageMatrix:Landroid/graphics/Matrix;

.field private mViewToImageMatrixInvert:Landroid/graphics/Matrix;

.field private final mViewWidth:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 2
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "orientation"    # I
    .param p6, "mirror"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayOriginRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageToViewMatrix:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrix:Landroid/graphics/Matrix;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrixInvert:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrixInvert:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrixInvert:Landroid/graphics/Matrix;

    .line 40
    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mGLPosition:[F

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mTextureCood:[F

    .line 44
    iput p1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageWidth:I

    .line 45
    iput p2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageHeight:I

    .line 46
    iput p3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewWidth:I

    .line 47
    iput p4, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewHeight:I

    .line 48
    iput p5, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mOrientation:I

    .line 49
    iput-boolean p6, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mMirror:Z

    .line 50
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->refreshPosition()V

    .line 51
    return-void
.end method

.method public static configGLPositionByRect([FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0, "glPosition"    # [F
    .param p1, "display"    # Landroid/graphics/RectF;
    .param p2, "viewPort"    # Landroid/graphics/RectF;

    .line 130
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 131
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x1

    aput v0, p0, v1

    .line 133
    iget v0, p1, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x2

    aput v0, p0, v1

    .line 134
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x3

    aput v0, p0, v1

    .line 136
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 137
    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x5

    aput v0, p0, v1

    .line 139
    iget v0, p1, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x6

    aput v0, p0, v1

    .line 140
    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x7

    aput v0, p0, v1

    .line 142
    invoke-static {p0, p2}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->convertPoint([FLandroid/graphics/RectF;)V

    .line 143
    return-void
.end method

.method public static configImageMatrixByOrientation(Landroid/graphics/RectF;Landroid/graphics/Matrix;I)V
    .locals 3
    .param p0, "imageRect"    # Landroid/graphics/RectF;
    .param p1, "dst"    # Landroid/graphics/Matrix;
    .param p2, "orientation"    # I

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 172
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 183
    goto :goto_0

    .line 179
    :cond_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 180
    goto :goto_0

    .line 176
    :cond_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 177
    goto :goto_0

    .line 174
    :cond_3
    nop

    .line 187
    :goto_0
    return-void
.end method

.method private static convertPoint([FLandroid/graphics/RectF;)V
    .locals 3
    .param p0, "points"    # [F
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 155
    aget v1, p0, v0

    invoke-static {v1, p1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->convertX(FLandroid/graphics/RectF;)F

    move-result v1

    aput v1, p0, v0

    .line 156
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    invoke-static {v2, p1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->convertY(FLandroid/graphics/RectF;)F

    move-result v2

    aput v2, p0, v1

    .line 154
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static convertX(FLandroid/graphics/RectF;)F
    .locals 3
    .param p0, "x"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 161
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v0, p0, v0

    .line 162
    .local v0, "progress":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method private static convertY(FLandroid/graphics/RectF;)F
    .locals 3
    .param p0, "y"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 166
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, p0, v0

    .line 167
    .local v0, "progress":F
    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method public static isVerticalMirror(I)Z
    .locals 1
    .param p0, "orientation"    # I

    .line 202
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 210
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x1

    .line 206
    .local v0, "isVertical":Z
    nop

    .line 210
    :goto_0
    nop

    .line 213
    return v0
.end method

.method private refreshPosition()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 57
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 58
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mOrientation:I

    invoke-static {v0, v1, v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->configImageMatrixByOrientation(Landroid/graphics/RectF;Landroid/graphics/Matrix;I)V

    .line 59
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 60
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayOriginRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 62
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageToViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 63
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageToViewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 64
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageToViewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 66
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayOriginRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 69
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mMirror:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayOriginRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayOriginRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 73
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 74
    .local v0, "rectForRotation":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v1, "matrixForRotation":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 76
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mOrientation:I

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusManager;->getDegreeByOrientation(I)I

    move-result v3

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 77
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayOriginRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 78
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 82
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mGLPosition:[F

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewRect:Landroid/graphics/RectF;

    invoke-static {v2, v3, v4}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->configGLPositionByRect([FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 84
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 85
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 86
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 87
    return-void
.end method

.method public static textureCoodMirror([FI)V
    .locals 5
    .param p0, "textureCood"    # [F
    .param p1, "orientation"    # I

    .line 190
    invoke-static {p1}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->isVerticalMirror(I)Z

    move-result v0

    .line 191
    .local v0, "isVertical":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 192
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 193
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v4, p0, v4

    sub-float/2addr v2, v4

    aput v2, p0, v3

    goto :goto_1

    .line 195
    :cond_0
    aget v3, p0, v1

    sub-float/2addr v2, v3

    aput v2, p0, v1

    .line 191
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getGLPosition()[F
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mGLPosition:[F

    return-object v0
.end method

.method public getImageDisplayRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .line 146
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 147
    return-void
.end method

.method public getPointOnBitmap([F)V
    .locals 1
    .param p1, "point"    # [F

    .line 90
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 91
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 92
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 93
    return-void
.end method

.method public getPointOnView([F)V
    .locals 1
    .param p1, "point"    # [F

    .line 96
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mRotationMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 97
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageMirrorMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 98
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mViewToImageMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 99
    return-void
.end method

.method public getRelightingRadius()F
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mImageDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRotation()[F
    .locals 4

    .line 107
    iget v0, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 119
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_270_ROTATION:[F

    .line 116
    .local v0, "standardCood":[F
    goto :goto_0

    .line 112
    .end local v0    # "standardCood":[F
    :cond_1
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_90_ROTATION:[F

    .line 113
    .restart local v0    # "standardCood":[F
    goto :goto_0

    .line 109
    .end local v0    # "standardCood":[F
    :cond_2
    sget-object v0, Lcom/miui/extraphoto/refocus/gles/shader/GLTextureShader;->TEXTURE_180_ROTATION:[F

    .line 110
    .restart local v0    # "standardCood":[F
    nop

    .line 119
    :goto_0
    nop

    .line 122
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mTextureCood:[F

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mTextureCood:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-boolean v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mMirror:Z

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mTextureCood:[F

    iget v2, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mOrientation:I

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->textureCoodMirror([FI)V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/gles/shader/GLDisplayParameter;->mTextureCood:[F

    return-object v1
.end method
