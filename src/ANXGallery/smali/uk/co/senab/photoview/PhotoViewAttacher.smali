.class public Luk/co/senab/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Luk/co/senab/photoview/IPhotoView;
.implements Luk/co/senab/photoview/gestures/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$Transition;,
        Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;,
        Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final EXIT_SCALE_RATIO:F

.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private mAlpha:F

.field private mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

.field private mAlphaDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnim:I

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private mDownScale:F

.field private mDragDownOutThreshold:F

.field private mDragDownOutY:F

.field private mDragHandled:Z

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

.field private mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

.field private mExitScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHScrollEdge:I

.field private mHasScale:Z

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragDownOut:Z

.field private mIsRegionDecodeEnable:Z

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLastScaleFocusX:F

.field private mLastScaleFocusY:F

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMatrixValues:[F

.field private mMaxDoubleTapScale:F

.field private mMaxPointsScale:F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOriginHeight:I

.field private mOriginWidth:I

.field private mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

.field private mRotateEnabled:Z

.field private mRotateListener:Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

.field private mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

.field private mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mSupportHd:Z

.field private mTileView:Lcom/miui/gallery/util/photoview/TileView;

.field private mTouchDownY:F

.field private mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

.field private mTransitionListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

.field private mVScrollEdge:I

.field private mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mWantEnterTime:J

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Luk/co/senab/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "zoomable"    # Z

    .prologue
    const/4 v5, 0x4

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v1, 0xc8

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 95
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->EXIT_SCALE_RATIO:F

    .line 96
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitScale:F

    .line 100
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDownScale:F

    .line 102
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 103
    const/high16 v1, 0x3fe00000    # 1.75f

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 104
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 119
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 183
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 184
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 185
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 186
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 187
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    .line 203
    iput v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    .line 205
    iput v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    .line 210
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    .line 211
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 222
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    .line 233
    const/4 v1, 0x0

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    .line 2022
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    .line 283
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 287
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 290
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 293
    :cond_0
    invoke-static {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 295
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 302
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutThreshold:F

    goto :goto_0
.end method

.method static synthetic access$000(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->clearAnim(I)V

    return-void
.end method

.method static synthetic access$1000(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method

.method static synthetic access$1100(Luk/co/senab/photoview/PhotoViewAttacher;FFF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->postRotate(FFF)V

    return-void
.end method

.method static synthetic access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateListener:Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    return-object v0
.end method

.method static synthetic access$1300(Luk/co/senab/photoview/PhotoViewAttacher;F)I
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->trimRotation(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1500(Luk/co/senab/photoview/PhotoViewAttacher;)Z
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateBaseRect(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$200(Luk/co/senab/photoview/PhotoViewAttacher;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->appendAnim(I)V

    return-void
.end method

.method static synthetic access$2000(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2200(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->dispatchScaleChanged(FFFF)V

    return-void
.end method

.method static synthetic access$300(Luk/co/senab/photoview/PhotoViewAttacher;FF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    return-void
.end method

.method static synthetic access$400(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 70
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    return v0
.end method

.method static synthetic access$800(Luk/co/senab/photoview/PhotoViewAttacher;F)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    return-void
.end method

.method static synthetic access$900(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    return-void
.end method

.method private appendAnim(I)V
    .locals 1
    .param p1, "anim"    # I

    .prologue
    .line 267
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    or-int/2addr v0, p1

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    .line 268
    return-void
.end method

.method private calculateBaseRect(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;
    .locals 18
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rotation"    # I

    .prologue
    .line 1350
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 1351
    .local v7, "imageView":Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    .line 1352
    :cond_0
    const/4 v3, 0x0

    .line 1415
    :goto_0
    return-object v3

    .line 1355
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v14

    int-to-float v12, v14

    .line 1356
    .local v12, "viewWidth":F
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v14

    int-to-float v11, v14

    .line 1357
    .local v11, "viewHeight":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawableWidth(I)I

    move-result v5

    .line 1358
    .local v5, "drawableWidth":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawbleHeight(I)I

    move-result v4

    .line 1359
    .local v4, "drawableHeight":I
    const/4 v14, 0x0

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    cmpl-float v14, v11, v14

    if-eqz v14, :cond_2

    if-eqz v5, :cond_2

    if-nez v4, :cond_3

    .line 1360
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1363
    :cond_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1365
    .local v2, "baseMatrix":Landroid/graphics/Matrix;
    int-to-float v14, v5

    div-float v13, v12, v14

    .line 1366
    .local v13, "widthScale":F
    int-to-float v14, v4

    div-float v6, v11, v14

    .line 1368
    .local v6, "heightScale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_4

    .line 1369
    int-to-float v14, v5

    sub-float v14, v12, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v4

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1411
    :goto_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1412
    .local v3, "baseRect":Landroid/graphics/RectF;
    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v5

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1413
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    .line 1372
    .end local v3    # "baseRect":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_5

    .line 1373
    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1374
    .local v10, "scale":F
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1375
    int-to-float v14, v5

    mul-float/2addr v14, v10

    sub-float v14, v12, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v4

    mul-float/2addr v15, v10

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1378
    .end local v10    # "scale":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_6

    .line 1379
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1380
    .restart local v10    # "scale":F
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1381
    int-to-float v14, v5

    mul-float/2addr v14, v10

    sub-float v14, v12, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v4

    mul-float/2addr v15, v10

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1385
    .end local v10    # "scale":F
    :cond_6
    new-instance v9, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v5

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1386
    .local v9, "mTempSrc":Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v8, v14, v15, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1388
    .local v8, "mTempDst":Landroid/graphics/RectF;
    sget-object v14, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 1395
    :pswitch_0
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1390
    :pswitch_1
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 1391
    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1399
    :pswitch_2
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1403
    :pswitch_3
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1388
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private calculateScales()V
    .locals 18

    .prologue
    .line 1430
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v13

    int-to-float v11, v13

    .line 1434
    .local v11, "viewWidth":F
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v13

    int-to-float v10, v13

    .line 1435
    .local v10, "viewHeight":F
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v13

    float-to-int v7, v13

    .line 1436
    .local v7, "rotation":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawableWidth(I)I

    move-result v4

    .line 1437
    .local v4, "drawableWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawbleHeight(I)I

    move-result v3

    .line 1438
    .local v3, "drawableHeight":I
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1441
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    .line 1442
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    .line 1444
    move-object/from16 v0, p0

    iget-object v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1445
    .local v2, "baseRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 1446
    .local v6, "rectWidth":F
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v13

    mul-float v9, v6, v13

    .line 1447
    .local v9, "scaledWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v14

    mul-float v8, v13, v14

    .line 1448
    .local v8, "scaledHeight":F
    div-float v12, v9, v11

    .line 1449
    .local v12, "widthScale":F
    div-float v5, v8, v10

    .line 1451
    .local v5, "heightScale":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getEnlargeMode(FF)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 1483
    :cond_2
    :goto_1
    const/high16 v13, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    goto :goto_0

    .line 1453
    :pswitch_0
    cmpg-float v13, v12, v5

    if-gez v13, :cond_4

    .line 1454
    float-to-double v14, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v11, v13

    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 1455
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Luk/co/senab/photoview/PhotoViewAttacher;->getCorrectWidth(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    .line 1460
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 1461
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto :goto_1

    .line 1454
    :cond_3
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_2

    .line 1457
    :cond_4
    float-to-double v14, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v13, v10, v13

    :goto_4
    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 1458
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Luk/co/senab/photoview/PhotoViewAttacher;->getCorrectHeight(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto :goto_3

    .line 1457
    :cond_5
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_4

    .line 1465
    :pswitch_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v11, v13

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 1466
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto/16 :goto_1

    .line 1470
    :pswitch_2
    float-to-double v14, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_6

    .line 1472
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v13, v10, v13

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    .line 1477
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    goto/16 :goto_1

    .line 1474
    :cond_6
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto :goto_5

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 1101
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 1103
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 1109
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 1112
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 1115
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1121
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Luk/co/senab/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 1122
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1127
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 12

    .prologue
    .line 1130
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptCheckBounds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1131
    const/4 v8, 0x1

    .line 1196
    :goto_0
    return v8

    .line 1133
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 1134
    .local v3, "imageView":Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 1135
    const/4 v8, 0x0

    goto :goto_0

    .line 1138
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-direct {p0, v8}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 1139
    .local v4, "rect":Landroid/graphics/RectF;
    if-nez v4, :cond_2

    .line 1140
    const/4 v8, 0x0

    goto :goto_0

    .line 1143
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 1144
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 1146
    .local v1, "deltaY":F
    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 1147
    .local v5, "viewHeight":I
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    .line 1148
    sget-object v8, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1156
    int-to-float v8, v5

    sub-float/2addr v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 1159
    :goto_1
    const/4 v8, 0x5

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    .line 1170
    :goto_2
    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 1171
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_6

    .line 1172
    sget-object v8, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 1180
    int-to-float v8, v6

    sub-float/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 1183
    :goto_3
    const/4 v8, 0x4

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    .line 1195
    :goto_4
    invoke-direct {p0, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    .line 1196
    const/4 v8, 0x1

    goto :goto_0

    .line 1150
    .end local v6    # "viewWidth":I
    :pswitch_0
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 1151
    goto :goto_1

    .line 1153
    :pswitch_1
    int-to-float v8, v5

    sub-float/2addr v8, v2

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 1154
    goto :goto_1

    .line 1160
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    .line 1161
    const/4 v8, 0x2

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    .line 1162
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_2

    .line 1163
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_5

    .line 1164
    int-to-float v8, v5

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    .line 1165
    const/4 v8, 0x3

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    goto :goto_2

    .line 1167
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    goto :goto_2

    .line 1174
    .restart local v6    # "viewWidth":I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 1175
    goto :goto_3

    .line 1177
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 1178
    goto :goto_3

    .line 1184
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_7

    .line 1185
    const/4 v8, 0x0

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    .line 1186
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_4

    .line 1187
    :cond_7
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, v6

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_8

    .line 1188
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    .line 1189
    const/4 v8, 0x1

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    goto :goto_4

    .line 1191
    :cond_8
    const/4 v8, -0x1

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    goto :goto_4

    .line 1148
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1172
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 125
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    return-void
.end method

.method private clearAnim(I)V
    .locals 2
    .param p1, "anim"    # I

    .prologue
    .line 271
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    .line 276
    return-void
.end method

.method private dispatchScaleChanged(FFFF)V
    .locals 1
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .param p4, "scale"    # F

    .prologue
    .line 872
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;->onScaleChange(FFFF)V

    .line 875
    :cond_0
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 1753
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1754
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1755
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1756
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1757
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1759
    :cond_0
    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1785
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    if-lez v1, :cond_0

    .line 1786
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1787
    .local v0, "rectF":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 1788
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    int-to-float v1, v1

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1789
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1792
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private ensureRotateDetector()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-nez v0, :cond_0

    .line 730
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    .line 732
    :cond_0
    return-void
.end method

.method private ensureScaleDragDetector()V
    .locals 2

    .prologue
    .line 694
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    if-nez v1, :cond_0

    .line 695
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 696
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Luk/co/senab/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Luk/co/senab/photoview/gestures/OnGestureListener;)Luk/co/senab/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    .line 701
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private ensureStrokePaint()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    .line 243
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    :cond_0
    return-void
.end method

.method private ensureTapDetector()V
    .locals 4

    .prologue
    .line 704
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    .line 705
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 706
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 707
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Luk/co/senab/photoview/PhotoViewAttacher$1;

    invoke-direct {v3, p0}, Luk/co/senab/photoview/PhotoViewAttacher$1;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 723
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Luk/co/senab/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v2, p0}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 726
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private getCorrectHeight(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1425
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1426
    .local v0, "baseRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getCorrectWidth(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1420
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1421
    .local v0, "baseRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 1206
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1209
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1210
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1211
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1212
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1213
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1212
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1214
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1215
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 1218
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDrawableWidth(I)I
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 1324
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1325
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return v2

    .line 1328
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1329
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1332
    if-lez p1, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 1333
    :goto_1
    div-int/lit8 v2, p1, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0

    .line 1332
    :cond_2
    add-int/lit8 p1, p1, -0x2d

    goto :goto_1

    .line 1333
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0
.end method

.method private getDrawbleHeight(I)I
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 1337
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1338
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return v2

    .line 1341
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1342
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1345
    if-lez p1, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 1346
    :goto_1
    div-int/lit8 v2, p1, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    .line 1345
    :cond_2
    add-int/lit8 p1, p1, -0x2d

    goto :goto_1

    .line 1346
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0
.end method

.method private getEnlargeMode(FF)I
    .locals 2
    .param p1, "rectWidth"    # F
    .param p2, "viewWidth"    # F

    .prologue
    .line 1488
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSupportHd:Z

    if-eqz v0, :cond_0

    .line 1489
    const/4 v0, 0x0

    .line 1494
    :goto_0
    return v0

    .line 1491
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1492
    const/4 v0, 0x1

    goto :goto_0

    .line 1494
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1504
    if-nez p1, :cond_0

    .line 1505
    const/4 v0, 0x0

    .line 1506
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1498
    if-nez p1, :cond_0

    .line 1499
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxPointsScale()F
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    goto :goto_0
.end method

.method private getMaxPointsScalingScale()F
    .locals 2

    .prologue
    .line 518
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;
    .locals 3

    .prologue
    .line 2031
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    if-nez v1, :cond_0

    .line 2032
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2033
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2034
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    .line 2037
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    return-object v1
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1249
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptCheckBounds()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptDrag()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptDrawTiles()Z
    .locals 2

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "animing":Z
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private interceptMotionEnd()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptTouch()Z
    .locals 1

    .prologue
    .line 677
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isAutoRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 149
    :cond_0
    sget-object v0, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private needDrawTile()Z
    .locals 18

    .prologue
    .line 2147
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptDrawTiles()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2148
    const/4 v11, 0x0

    .line 2191
    :goto_0
    return v11

    .line 2150
    :cond_0
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 2151
    .local v6, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-eqz v11, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 2152
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2154
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 2155
    .local v5, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 2156
    .local v4, "drawableHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderWidth()I

    move-result v10

    .line 2157
    .local v10, "tileWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderHeight()I

    move-result v9

    .line 2158
    .local v9, "tileHeight":I
    if-lez v10, :cond_1

    if-gtz v9, :cond_2

    .line 2159
    :cond_1
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "invalid tile size[%dx%d]"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/4 v11, 0x0

    goto :goto_0

    .line 2162
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderRotation()I

    move-result v11

    div-int/lit8 v11, v11, 0x5a

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2163
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderHeight()I

    move-result v10

    .line 2164
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderWidth()I

    move-result v9

    .line 2166
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v5

    mul-float/2addr v11, v12

    int-to-float v12, v4

    div-float v2, v11, v12

    .line 2167
    .local v2, "dRatio":F
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v10

    mul-float/2addr v11, v12

    int-to-float v12, v9

    div-float v8, v11, v12

    .line 2168
    .local v8, "tRation":F
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v2, v8, v11}, Lcom/miui/gallery/util/MiscUtil;->floatNear(FFF)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2169
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 2170
    .local v3, "displayRect":Landroid/graphics/RectF;
    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_4

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2178
    .end local v3    # "displayRect":Landroid/graphics/RectF;
    :cond_5
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    const-string v13, "drawable w/h not equal to tile w/h: %.2f, %.2f"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 2179
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2178
    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/2addr v11, v12

    int-to-float v2, v11

    .line 2181
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/2addr v11, v12

    int-to-float v8, v11

    .line 2182
    invoke-static {v2, v8}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2183
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    const-string v13, "drawable w[%s], h[%s] not equal to tile w[%s], h[%s]; tile rotation[%s]"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 2184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderRotation()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2183
    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2186
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "tile_rotation"

    move-object/from16 v0, p0

    iget-object v12, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v12}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderRotation()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    const-string v11, "photo"

    const-string v12, "photo_tile_orientation_error"

    invoke-static {v11, v12, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2191
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dRatio":F
    .end local v4    # "drawableHeight":I
    .end local v5    # "drawableWidth":I
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "tRation":F
    .end local v9    # "tileHeight":I
    .end local v10    # "tileWidth":I
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private notifyTileViewInvalidate()V
    .locals 3

    .prologue
    .line 2195
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->needDrawTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/photoview/TileView;->notifyInvalidate(Landroid/graphics/RectF;F)V

    .line 2198
    :cond_0
    return-void
.end method

.method private onBaseMatrixChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1313
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->tryAnimEnter()V

    .line 1316
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateScales()V

    .line 1318
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/TileView;->setViewPort(Landroid/graphics/Rect;)V

    .line 1321
    :cond_0
    return-void
.end method

.method private postRotate(FFF)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 2303
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2304
    return-void
.end method

.method private postScale(FFFF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 2294
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2295
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 2296
    return-void
.end method

.method private postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 2299
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2300
    return-void
.end method

.method private resetMatrix()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1256
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 1257
    .local v0, "preScale":F
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1258
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1260
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 1261
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v1, :cond_1

    .line 1262
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 1263
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    .line 1268
    :cond_1
    :goto_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 1269
    return-void

    .line 1264
    :cond_2
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 1265
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMidScaleStage(Z)V

    goto :goto_0
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1272
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1273
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1274
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 1275
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1277
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->notifyTileViewInvalidate()V

    .line 1279
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1280
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1281
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 1282
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1283
    .local v3, "rect":Landroid/graphics/RectF;
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 1284
    .local v2, "listener":Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    invoke-interface {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 1289
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "listener":Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    .end local v3    # "rect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 167
    if-eqz p0, :cond_0

    instance-of v0, p0, Luk/co/senab/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    :cond_0
    return-void
.end method

.method private setRotate(FFF)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 2312
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2313
    return-void
.end method

.method private setScale(FFFF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 2307
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2308
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 2309
    return-void
.end method

.method private trimRotation(F)I
    .locals 3
    .param p1, "degrees"    # F

    .prologue
    const/high16 v2, 0x42340000    # 45.0f

    .line 2316
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    add-float v1, p1, v2

    :goto_0
    float-to-int v0, v1

    .line 2317
    .local v0, "intValue":I
    div-int/lit8 v1, v0, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 2316
    .end local v0    # "intValue":I
    :cond_0
    sub-float v1, p1, v2

    goto :goto_0
.end method

.method private tryAnimEnter()V
    .locals 4

    .prologue
    .line 2041
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    if-eqz v0, :cond_0

    .line 2042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mWantEnterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2043
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransitionListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    invoke-virtual {p0, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    goto :goto_0
.end method

.method private tryGetViewPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 1762
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1763
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1764
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 1765
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1768
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2283
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 2284
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    .line 2288
    :goto_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    invoke-interface {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;->onAlphaChanged(F)V

    .line 2291
    :cond_0
    return-void

    .line 2286
    :cond_1
    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    goto :goto_0
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rotation"    # I

    .prologue
    .line 1298
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateBaseRect(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 1299
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1302
    :cond_0
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1303
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    rsub-int/lit8 v3, p2, 0x0

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1304
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    .line 1305
    .local v1, "rotatedRect":Landroid/graphics/RectF;
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1306
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1308
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->onBaseMatrixChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 937
    if-eqz p1, :cond_0

    .line 938
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_0
    return-void
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1773
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->needDrawTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->tryGetViewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/util/photoview/TileView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1781
    :cond_0
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->drawStroke(Landroid/graphics/Canvas;)V

    .line 1782
    return-void
.end method

.method public animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V
    .locals 22
    .param p1, "enterInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .prologue
    .line 2052
    if-eqz p1, :cond_6

    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 2053
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->stop()V

    .line 2054
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v12

    .line 2055
    .local v12, "rect":Landroid/graphics/RectF;
    if-eqz v12, :cond_5

    .line 2056
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v14

    .line 2058
    .local v14, "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v19

    div-float v17, v18, v19

    .line 2059
    .local v17, "widthScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v9, v18, v19

    .line 2060
    .local v9, "heightScale":F
    cmpl-float v18, v17, v9

    if-lez v18, :cond_4

    move/from16 v13, v17

    .line 2061
    .local v13, "scale":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    .line 2063
    .local v6, "curScale":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v18

    mul-float v11, v18, v13

    .line 2064
    .local v11, "ratioWidth":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v18

    mul-float v10, v18, v13

    .line 2066
    .local v10, "ratioHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 2067
    .local v15, "startX":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v10

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2068
    .local v16, "startY":I
    invoke-virtual {v14}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 2069
    .local v7, "dx":I
    invoke-virtual {v14}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    .line 2071
    .local v8, "dy":I
    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v13, v13, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    .line 2072
    neg-int v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    neg-int v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    .line 2073
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 2074
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v6}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->scale(FF)V

    .line 2075
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v7, v8}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->translate(IIII)V

    .line 2077
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v11

    if-ltz v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v10

    if-gez v18, :cond_1

    .line 2078
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v18, v11

    .line 2079
    .local v4, "clipX":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v18, v10

    .line 2080
    .local v5, "clipY":F
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v4

    .line 2081
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v5

    .line 2082
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v4

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v4, v5, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->clip(FFFF)V

    .line 2084
    .end local v4    # "clipX":F
    .end local v5    # "clipY":F
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 2090
    .end local v6    # "curScale":F
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v9    # "heightScale":F
    .end local v10    # "ratioHeight":F
    .end local v11    # "ratioWidth":F
    .end local v13    # "scale":F
    .end local v14    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v15    # "startX":I
    .end local v16    # "startY":I
    .end local v17    # "widthScale":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 2091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mWantEnterTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x96

    cmp-long v18, v18, v20

    if-gez v18, :cond_2

    .line 2093
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->ensureAlpha(Z)V

    .line 2095
    :cond_2
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v20}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->alpha(FF)V

    .line 2096
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->start(Z)V

    .line 2100
    .end local v12    # "rect":Landroid/graphics/RectF;
    :cond_3
    :goto_2
    return-void

    .restart local v9    # "heightScale":F
    .restart local v12    # "rect":Landroid/graphics/RectF;
    .restart local v14    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .restart local v17    # "widthScale":F
    :cond_4
    move v13, v9

    .line 2060
    goto/16 :goto_0

    .line 2086
    .end local v9    # "heightScale":F
    .end local v14    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v17    # "widthScale":F
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 2087
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/PhotoViewAttacher;->mTransitionListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .line 2088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Luk/co/senab/photoview/PhotoViewAttacher;->mWantEnterTime:J

    goto :goto_1

    .line 2097
    .end local v12    # "rect":Landroid/graphics/RectF;
    :cond_6
    if-eqz p2, :cond_3

    .line 2098
    invoke-interface/range {p2 .. p2}, Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;->onTransitEnd()V

    goto :goto_2
.end method

.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V
    .locals 23
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .prologue
    .line 2104
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->isLocationValid()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 2105
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->stop()V

    .line 2106
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v14

    .line 2107
    .local v14, "rect":Landroid/graphics/RectF;
    if-eqz v14, :cond_2

    .line 2108
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2109
    .local v5, "curDisplayRect":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v16

    .line 2111
    .local v16, "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 2112
    .local v2, "baseDisplayRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v19

    div-float v17, v18, v19

    .line 2113
    .local v17, "widthScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v11, v18, v19

    .line 2114
    .local v11, "heightScale":F
    cmpl-float v18, v17, v11

    if-lez v18, :cond_4

    move/from16 v15, v17

    .line 2115
    .local v15, "scale":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    .line 2116
    .local v6, "curScale":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v18

    mul-float v13, v18, v15

    .line 2117
    .local v13, "ratioWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v18

    mul-float v12, v18, v15

    .line 2119
    .local v12, "ratioHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v13

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    .line 2120
    .local v9, "endX":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v10, v0

    .line 2121
    .local v10, "endY":I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v9

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 2122
    .local v7, "dx":I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    .line 2124
    .local v8, "dy":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v13

    if-ltz v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v12

    if-gez v18, :cond_1

    .line 2125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v3, v18, v13

    .line 2126
    .local v3, "clipX":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v18, v12

    .line 2127
    .local v4, "clipY":F
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v4

    .line 2128
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v3, v21

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v4, v22

    invoke-virtual/range {v18 .. v22}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->clip(FFFF)V

    .line 2130
    .end local v3    # "clipX":F
    .end local v4    # "clipY":F
    :cond_1
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v15}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->scale(FF)V

    .line 2131
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    neg-int v0, v8

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->translate(IIII)V

    .line 2133
    .end local v2    # "baseDisplayRect":Landroid/graphics/RectF;
    .end local v5    # "curDisplayRect":Landroid/graphics/RectF;
    .end local v6    # "curScale":F
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v9    # "endX":I
    .end local v10    # "endY":I
    .end local v11    # "heightScale":F
    .end local v12    # "ratioHeight":F
    .end local v13    # "ratioWidth":F
    .end local v15    # "scale":F
    .end local v16    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v17    # "widthScale":F
    :cond_2
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 2134
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->ensureAlpha(Z)V

    .line 2135
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->alpha(FF)V

    .line 2136
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->start(Z)V

    .line 2140
    .end local v14    # "rect":Landroid/graphics/RectF;
    :cond_3
    :goto_1
    return-void

    .restart local v2    # "baseDisplayRect":Landroid/graphics/RectF;
    .restart local v5    # "curDisplayRect":Landroid/graphics/RectF;
    .restart local v11    # "heightScale":F
    .restart local v14    # "rect":Landroid/graphics/RectF;
    .restart local v16    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .restart local v17    # "widthScale":F
    :cond_4
    move v15, v11

    .line 2114
    goto/16 :goto_0

    .line 2137
    .end local v2    # "baseDisplayRect":Landroid/graphics/RectF;
    .end local v5    # "curDisplayRect":Landroid/graphics/RectF;
    .end local v11    # "heightScale":F
    .end local v14    # "rect":Landroid/graphics/RectF;
    .end local v16    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v17    # "widthScale":F
    :cond_5
    if-eqz p2, :cond_3

    .line 2138
    invoke-interface/range {p2 .. p2}, Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;->onTransitEnd()V

    goto :goto_1
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    .line 1741
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1742
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1743
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->getClipRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1744
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->getClipRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 1748
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExited()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRotatable()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    return v0
.end method

.method public canZoom()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 344
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 347
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 352
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->cancelFling()V

    .line 358
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 359
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 363
    :cond_3
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 364
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 365
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 368
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 369
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 370
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .line 371
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->stop()V

    .line 373
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v2

    invoke-virtual {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 376
    :cond_4
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v2, :cond_5

    .line 377
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->stop()V

    .line 382
    :cond_5
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->releaseTile()V

    .line 385
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getAbsoluteRect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 402
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public getBaseDisplayRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 398
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBaseMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1089
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1078
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 390
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 391
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 392
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1094
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1095
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDrawableSize()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 406
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 412
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 413
    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 415
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 416
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 417
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 420
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 471
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 473
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    const-string v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v1, v2, v3}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    return-object v0
.end method

.method public getMaximumScale()F
    .locals 2

    .prologue
    .line 510
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    goto :goto_0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getRotate()F
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/miui/gallery/util/MatrixUtil;->getRotate(Landroid/graphics/Matrix;)F

    move-result v0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/miui/gallery/util/MatrixUtil;->getRotate(Landroid/graphics/Matrix;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/miui/gallery/util/MatrixUtil;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1085
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDoubleTap(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const v2, 0x3a83126f    # 0.001f

    const/4 v3, 0x1

    .line 2261
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2280
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 2265
    .local v0, "scale":F
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 2266
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    invoke-virtual {p0, v1, p1, p2, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 2267
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2269
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMidScaleStage(Z)V

    goto :goto_0

    .line 2271
    :cond_2
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 2272
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v1

    invoke-virtual {p0, v1, p1, p2, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 2273
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v1, :cond_0

    .line 2275
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    goto :goto_0

    .line 2278
    :cond_3
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v1

    invoke-virtual {p0, v1, p1, p2, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 538
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptDrag()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    iget v7, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-eqz v6, :cond_0

    .line 552
    :cond_2
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHasScale:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-nez v6, :cond_3

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 553
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTouchDownY:F

    .line 554
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 555
    :cond_3
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    add-float/2addr v6, p2

    iput v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    .line 556
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-nez v6, :cond_4

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    iget v7, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutThreshold:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 557
    const/4 v6, 0x1

    iput-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    .line 558
    const/4 v6, 0x1

    iput-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    .line 562
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 563
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-eqz v6, :cond_8

    .line 564
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v5

    .line 565
    .local v5, "width":I
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    .line 566
    .local v0, "height":I
    iget-object v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v4

    .line 568
    .local v4, "transY":F
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, v0

    div-float v8, p2, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float v3, v6, v7

    .line 569
    .local v3, "scale":F
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    int-to-float v7, v0

    add-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-direct {p0, v3, v3, v6, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    .line 570
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    invoke-direct {p0, v6, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    .line 571
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v0

    div-float v7, v4, v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 577
    .end local v0    # "height":I
    .end local v3    # "scale":F
    .end local v4    # "transY":F
    .end local v5    # "width":I
    :cond_5
    :goto_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 588
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 589
    .local v2, "parent":Landroid/view/ViewParent;
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v6, :cond_c

    .line 590
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 591
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    if-nez v6, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-gez v6, :cond_7

    :cond_6
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_d

    .line 594
    :cond_7
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    if-nez v6, :cond_0

    .line 595
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 572
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_8
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v6, :cond_5

    .line 573
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    goto :goto_1

    .line 599
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_9
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_b

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p2, v6

    if-gez v6, :cond_b

    :cond_a
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_d

    .line 601
    :cond_b
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    if-nez v6, :cond_0

    .line 602
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 607
    :cond_c
    if-eqz v2, :cond_d

    .line 608
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 611
    :cond_d
    const/4 v6, 0x1

    iput-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    goto/16 :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 618
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-nez v1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 634
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 635
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 636
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    .line 637
    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    .line 636
    invoke-virtual {v1, v2, v3, v4, v5}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 638
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 643
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 645
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 647
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 648
    .local v3, "right":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 649
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 658
    .local v2, "left":I
    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 661
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v6

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->trimRotation(F)I

    move-result v6

    invoke-direct {p0, v5, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V

    .line 662
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    .line 664
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvTop:I

    .line 665
    iput v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvRight:I

    .line 666
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 667
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 670
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    return-void
.end method

.method public onScale(FFF)V
    .locals 6
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 832
    iget-boolean v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-nez v2, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iput-boolean v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHasScale:Z

    .line 843
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    .line 845
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 846
    .local v1, "preScale":F
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScalingScale()F

    move-result v2

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    cmpg-float v2, p1, v4

    if-gez v2, :cond_0

    .line 847
    :cond_2
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    .line 848
    iput p3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    .line 849
    invoke-direct {p0, p1, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    .line 850
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 853
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 854
    .local v0, "curScale":F
    invoke-direct {p0, p1, p2, p3, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->dispatchScaleChanged(FFFF)V

    .line 857
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v2, :cond_0

    .line 858
    cmpg-float v2, p1, v4

    if-gez v2, :cond_4

    .line 859
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    .line 860
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    goto :goto_0

    .line 861
    :cond_3
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 862
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMidScaleStage(Z)V

    goto :goto_0

    .line 864
    :cond_4
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 865
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v2, v5}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 737
    const/4 v6, 0x0

    .line 740
    .local v6, "handled":Z
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 745
    :cond_0
    const/4 v6, 0x1

    :cond_1
    :goto_0
    move v0, v6

    .line 826
    :goto_1
    return v0

    :cond_2
    move-object v0, p1

    .line 748
    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 749
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 750
    .local v7, "parent":Landroid/view/ViewParent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 809
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->canRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureRotateDetector()V

    .line 811
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0, p2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 815
    :cond_3
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureScaleDragDetector()V

    .line 816
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0, p2}, Luk/co/senab/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    const/4 v6, 0x1

    .line 821
    .end local v7    # "parent":Landroid/view/ViewParent;
    :cond_4
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureTapDetector()V

    .line 822
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    const/4 v6, 0x1

    goto :goto_0

    .line 752
    .restart local v7    # "parent":Landroid/view/ViewParent;
    :pswitch_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDownScale:F

    .line 755
    if-eqz v7, :cond_5

    .line 756
    invoke-interface {v7, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 760
    :goto_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTouchDownY:F

    .line 761
    iput-boolean v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    .line 762
    iput-boolean v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHasScale:Z

    .line 765
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_2

    .line 758
    :cond_5
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v3, "onTouch getParent() returned null"

    invoke-interface {v0, v1, v3}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 769
    :pswitch_2
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptMotionEnd()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 770
    goto :goto_1

    .line 772
    :cond_6
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    .line 774
    .local v2, "curScale":F
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-eqz v0, :cond_a

    .line 775
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutThreshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 776
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    invoke-interface {v0}, Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;->onExit()V

    .line 783
    :cond_7
    :goto_4
    iput-boolean v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    .line 784
    iput v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    .line 805
    :cond_8
    :goto_5
    iput-boolean v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    goto :goto_2

    .line 780
    :cond_9
    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 781
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_4

    .line 785
    :cond_a
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_8

    .line 786
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitScale:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_b

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    if-eqz v0, :cond_b

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDownScale:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_b

    .line 787
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    invoke-interface {v0}, Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;->onExit()V

    goto :goto_5

    .line 788
    :cond_b
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_c

    .line 791
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 792
    .local v8, "rect":Landroid/graphics/RectF;
    if-eqz v8, :cond_8

    .line 793
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    iget v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 794
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 793
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 795
    const/4 v6, 0x1

    goto :goto_5

    .line 799
    .end local v8    # "rect":Landroid/graphics/RectF;
    :cond_c
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScale()F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_8

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_8

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_8

    .line 800
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScale()F

    move-result v3

    iget v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 801
    iput v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    .line 802
    iput v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    goto :goto_5

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public releaseTile()V
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileView;->cleanup()V

    .line 2215
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    .line 2216
    return-void
.end method

.method public removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 944
    if-eqz p1, :cond_0

    .line 945
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 947
    :cond_0
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 879
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 880
    return-void
.end method

.method public setAlphaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2245
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2246
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2247
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2250
    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 2236
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 2237
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2238
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2239
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2241
    :cond_0
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 3
    .param p1, "finalMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Matrix cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 429
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 439
    :cond_1
    :goto_0
    return v1

    .line 432
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 435
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 436
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 437
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 439
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setHDState(IIZ)V
    .locals 0
    .param p1, "originWidth"    # I
    .param p2, "originHeight"    # I
    .param p3, "isHd"    # Z

    .prologue
    .line 2254
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginWidth:I

    .line 2255
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginHeight:I

    .line 2256
    iput-boolean p3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSupportHd:Z

    .line 2257
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .param p1, "maximumScale"    # F

    .prologue
    .line 916
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 917
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 918
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .param p1, "mediumScale"    # F

    .prologue
    .line 904
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 905
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 906
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .param p1, "minimumScale"    # F

    .prologue
    .line 890
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 891
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 893
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitScale:F

    .line 894
    return-void
.end method

.method public setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V
    .locals 0
    .param p1, "alphaChangedListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .prologue
    .line 976
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .line 977
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 307
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureTapDetector()V

    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Luk/co/senab/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .prologue
    .line 971
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .line 972
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 932
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 933
    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 951
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 952
    return-void
.end method

.method public setOnRotateListener(Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    .prologue
    .line 981
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateListener:Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    .line 982
    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 0
    .param p1, "onScaleChangeListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 317
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 318
    return-void
.end method

.method public setOnScaleStageChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;)V
    .locals 0
    .param p1, "onScaleStageChangedListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    .prologue
    .line 322
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    .line 323
    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 961
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 962
    return-void
.end method

.method public setRegionDecodeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2220
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    if-eq v0, p1, :cond_0

    .line 2221
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    .line 2222
    if-eqz p1, :cond_1

    .line 2223
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->notifyTileViewInvalidate()V

    .line 2228
    :cond_0
    :goto_0
    return-void

    .line 2224
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2225
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public setRotatable(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 1047
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    .line 1048
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    if-nez v0, :cond_0

    .line 1049
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update(Z)V

    .line 1051
    :cond_0
    return-void
.end method

.method public setRotationBy(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 459
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->postRotate(FFF)V

    .line 460
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 461
    return-void
.end method

.method public setRotationTo(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 453
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setRotate(FFF)V

    .line 454
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 455
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 987
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 1004
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 1006
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 1008
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1010
    :cond_0
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Scale must be within the range of minScale and maxScale"

    .line 1011
    invoke-interface {v0, v1, v2}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_1
    :goto_0
    return-void

    .line 1016
    :cond_2
    if-eqz p4, :cond_3

    .line 1017
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1020
    :cond_3
    invoke-direct {p0, p1, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFF)V

    .line 1021
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 991
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 993
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 996
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 994
    invoke-virtual {p0, p1, v1, v2, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 999
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 1028
    invoke-static {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 1029
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 1032
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update(Z)V

    .line 1034
    :cond_0
    return-void
.end method

.method public setStroke(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "width"    # I

    .prologue
    .line 250
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeColor:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    if-eq v1, p2, :cond_2

    .line 251
    :cond_0
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeColor:I

    .line 252
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    .line 253
    if-lez p2, :cond_1

    .line 254
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureStrokePaint()V

    .line 255
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 259
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 263
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 1230
    if-gez p1, :cond_0

    .line 1231
    const/16 p1, 0xc8

    .line 1232
    :cond_0
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 1233
    return-void
.end method

.method public setZoomable(Z)V
    .locals 2
    .param p1, "zoomable"    # Z

    .prologue
    .line 1038
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 1039
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1040
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1041
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->update(Z)V

    .line 1043
    :cond_0
    return-void
.end method

.method public setupTile(Lcom/miui/gallery/util/photoview/TileBitProvider;Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V
    .locals 5
    .param p1, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;
    .param p2, "callback"    # Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .param p3, "trimMemoryCallback"    # Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .prologue
    const/4 v4, 0x0

    .line 2202
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-nez v0, :cond_0

    .line 2203
    new-instance v0, Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/miui/gallery/util/photoview/TileView;-><init>(Lcom/miui/gallery/util/photoview/TileBitProvider;Landroid/view/View;Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    .line 2205
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/TileView;->setViewPort(Landroid/graphics/Rect;)V

    .line 2206
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateScales()V

    .line 2207
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->notifyTileViewInvalidate()V

    .line 2208
    return-void
.end method

.method public update(Z)V
    .locals 3
    .param p1, "keepDisplayRect"    # Z

    .prologue
    .line 1059
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1061
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 1062
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_0

    .line 1064
    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 1067
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->trimRotation(F)I

    move-result v1

    :goto_0
    invoke-direct {p0, v2, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V

    .line 1068
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_4

    .line 1069
    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    .line 1074
    :cond_2
    :goto_1
    return-void

    .line 1067
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1071
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method
