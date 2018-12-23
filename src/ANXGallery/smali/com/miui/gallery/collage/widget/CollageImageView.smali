.class public Lcom/miui/gallery/collage/widget/CollageImageView;
.super Landroid/view/View;
.source "CollageImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;
    }
.end annotation


# instance fields
.field private final MAX_SCALE:F

.field private final MAX_SCALE_TOUCH:F

.field private mActivating:Z

.field private mAnimTargetMatrix:Landroid/graphics/Matrix;

.field private mBackground:I

.field private mBitmapDisplayInitRect:Landroid/graphics/RectF;

.field private mBitmapDisplayRect:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mCanvasMatrix:Landroid/graphics/Matrix;

.field private mDisplayInitRect:Landroid/graphics/RectF;

.field private mDisplayRect:Landroid/graphics/RectF;

.field private mDrawBitmap:Z

.field private mMatrixListener:Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

.field private mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

.field private mMatrixValues:[F

.field private mMaxWidth:F

.field private mMaxWidthScale:F

.field private mMirror:Z

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mRotateDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;-><init>(Lcom/miui/gallery/collage/widget/CollageImageView;Lcom/miui/gallery/collage/widget/CollageImageView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixListener:Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    .line 45
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    .line 46
    iput v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 48
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->MAX_SCALE:F

    .line 49
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->MAX_SCALE_TOUCH:F

    .line 51
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->refreshBitmapDisplayRect()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/gallery/collage/widget/CollageImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixListener:Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->setMatrixUpdateListener(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackground:I

    .line 72
    return-void
.end method

.method private refreshBitmapDisplayRect()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 336
    return-void
.end method

.method private resetBitmapMatrix()V
    .locals 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetInitParams()V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 111
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    goto :goto_0
.end method

.method private resetBitmapMatrixWithAnim()V
    .locals 6

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 119
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetInitParams()V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->animMatrix([Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private resetInitParams()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidth:F

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidthScale:F

    .line 128
    return-void
.end method

.method private resetMatrixWithAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iput-boolean v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    aget v0, v1, v4

    .line 134
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->countAnimMatrixWhenZoomOut(Landroid/graphics/Matrix;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->animMatrix([Landroid/graphics/Matrix;)V

    .line 140
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->countAnimMatrixWhenZoomIn(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private resolvePadding(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingLeft()I

    move-result v4

    int-to-float v1, v4

    .line 235
    .local v1, "paddingLeft":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingRight()I

    move-result v4

    int-to-float v2, v4

    .line 236
    .local v2, "paddingRight":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingTop()I

    move-result v4

    int-to-float v3, v4

    .line 237
    .local v3, "paddingTop":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingBottom()I

    move-result v4

    int-to-float v0, v4

    .line 238
    .local v0, "paddingBottom":F
    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 239
    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 240
    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 241
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 242
    return-void
.end method


# virtual methods
.method public appendScale(FFF)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 320
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidthScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 326
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->refreshBitmapDisplayRect()V

    .line 327
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    goto :goto_0
.end method

.method protected countAnimMatrixWhenZoomIn(Landroid/graphics/Matrix;)V
    .locals 23
    .param p1, "animTargetMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    .line 177
    .local v11, "currentBitmapRect":Landroid/graphics/RectF;
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidth:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidth:F

    move/from16 v21, v0

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v20, v21, v22

    .line 179
    .local v20, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerY()F

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 183
    .end local v20    # "scale":F
    :cond_0
    const/16 v18, 0x0

    .line 184
    .local v18, "offsetX":F
    const/16 v19, 0x0

    .line 186
    .local v19, "offsetY":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 187
    .local v10, "bitmapWidth":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 188
    .local v6, "bitmapHeight":F
    iget v7, v11, Landroid/graphics/RectF;->left:F

    .line 189
    .local v7, "bitmapLeft":F
    iget v8, v11, Landroid/graphics/RectF;->right:F

    .line 190
    .local v8, "bitmapRight":F
    iget v9, v11, Landroid/graphics/RectF;->top:F

    .line 191
    .local v9, "bitmapTop":F
    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    .line 193
    .local v5, "bitmapBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v17

    .line 194
    .local v17, "displayWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v13

    .line 195
    .local v13, "displayHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/RectF;->left:F

    .line 196
    .local v14, "displayLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/RectF;->right:F

    .line 197
    .local v15, "displayRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    .line 198
    .local v16, "displayTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 200
    .local v12, "displayBottom":F
    cmpl-float v21, v7, v14

    if-lez v21, :cond_4

    .line 201
    cmpl-float v21, v10, v17

    if-lez v21, :cond_3

    .line 202
    sub-float v21, v7, v14

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v18, v0

    .line 215
    :cond_1
    :goto_0
    cmpl-float v21, v9, v16

    if-lez v21, :cond_7

    .line 216
    cmpl-float v21, v6, v13

    if-lez v21, :cond_6

    .line 217
    sub-float v21, v9, v16

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v19, v0

    .line 230
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    return-void

    .line 204
    :cond_3
    sub-float v21, v7, v14

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v18, v0

    .line 205
    sub-float v21, v17, v10

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    add-float v18, v18, v21

    goto :goto_0

    .line 207
    :cond_4
    cmpg-float v21, v8, v15

    if-gez v21, :cond_1

    .line 208
    cmpl-float v21, v10, v17

    if-lez v21, :cond_5

    .line 209
    sub-float v18, v15, v8

    goto :goto_0

    .line 211
    :cond_5
    sub-float v18, v15, v8

    .line 212
    sub-float v21, v17, v10

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    sub-float v18, v18, v21

    goto :goto_0

    .line 219
    :cond_6
    sub-float v21, v9, v16

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v19, v0

    .line 220
    sub-float v21, v13, v6

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    add-float v19, v19, v21

    goto :goto_1

    .line 222
    :cond_7
    cmpg-float v21, v5, v12

    if-gez v21, :cond_2

    .line 223
    cmpl-float v21, v6, v13

    if-lez v21, :cond_8

    .line 224
    sub-float v19, v12, v5

    goto :goto_1

    .line 226
    :cond_8
    sub-float v19, v12, v5

    .line 227
    sub-float v21, v13, v6

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    sub-float v19, v19, v21

    goto :goto_1
.end method

.method protected countAnimMatrixWhenZoomOut(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "animTargetMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 143
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    .line 147
    .local v0, "bitmapRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 149
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 150
    .local v3, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 152
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 154
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "offsetX":F
    const/4 v2, 0x0

    .line 157
    .local v2, "offsetY":F
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 158
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v5

    .line 163
    :cond_0
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 164
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v5

    .line 168
    :cond_1
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    return-void

    .line 159
    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float v1, v4, v5

    goto :goto_0

    .line 165
    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v4, v5

    goto :goto_1
.end method

.method public generateBitmapRenderData()Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .locals 5

    .prologue
    .line 339
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 340
    .local v2, "invert":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 341
    .local v1, "insideRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 342
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 343
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 344
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 345
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 346
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 348
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;-><init>()V

    .line 349
    .local v0, "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 350
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    iput v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->rotate:I

    .line 351
    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    iput-boolean v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->mirror:Z

    .line 352
    iget-object v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmapInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 353
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->transition:Z

    .line 354
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvasMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Matrix;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 359
    return-void
.end method

.method public getDisplayRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 367
    return-void
.end method

.method public getRotateDegree()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    return v0
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    return v0
.end method

.method public isMirror()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    return v0
.end method

.method public mirror()V
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    .line 261
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 262
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackground:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resolvePadding(Landroid/graphics/RectF;)V

    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 81
    return-void
.end method

.method public resetBitmapLocation()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetMatrixWithAnim()V

    .line 332
    return-void
.end method

.method public resetDrawData(Landroid/graphics/Bitmap;IZ)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotateDegree"    # I
    .param p3, "mirror"    # Z

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 266
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 267
    .local v0, "height":I
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 268
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    iput p2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 271
    iput-boolean p3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    .line 272
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    .line 273
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 274
    return-void
.end method

.method public rotate()V
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 255
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 256
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrixWithAnim()V

    .line 257
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 85
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 86
    .local v0, "height":I
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 87
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 89
    return-void
.end method

.method public setDrawBitmap(Z)V
    .locals 0
    .param p1, "drawBitmap"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    .line 250
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    .line 251
    return-void
.end method

.method public transition(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 296
    const/high16 v3, 0x3f800000    # 1.0f

    .line 297
    .local v3, "ratioX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 298
    .local v4, "ratioY":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v5, v6, v7

    .line 299
    .local v5, "width":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v2, v6, v7

    .line 300
    .local v2, "height":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 301
    .local v0, "centerX":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 302
    .local v1, "centerY":F
    cmpl-float v6, p1, v8

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 303
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v6

    div-float v3, v6, v5

    .line 307
    :cond_0
    :goto_0
    cmpl-float v6, p2, v8

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 308
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v1, v6

    div-float v4, v6, v2

    .line 312
    :cond_1
    :goto_1
    mul-float/2addr p1, v3

    .line 313
    mul-float/2addr p2, v4

    .line 314
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->refreshBitmapDisplayRect()V

    .line 316
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    .line 317
    return-void

    .line 304
    :cond_2
    cmpg-float v6, p1, v8

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    div-float v3, v6, v5

    goto :goto_0

    .line 309
    :cond_3
    cmpg-float v6, p2, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 310
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    div-float v4, v6, v2

    goto :goto_1
.end method
