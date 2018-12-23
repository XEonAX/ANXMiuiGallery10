.class public Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
.super Landroid/view/View;
.source "VideoEditorRangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$VideoEditorRangeSeekBarBitmapProviderWrapper;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I


# instance fields
.field private autoMoveSpeed:F

.field private autoMoving:Z

.field private mAvailableAreaLeft:I

.field private mAvailableAreaOffset:F

.field private mAvailableAreaRight:I

.field private mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

.field private mDragSlop:I

.field private mDragState:I

.field private mEndRange:I

.field private mHeight:I

.field private mHideProgressAnimator:Landroid/animation/Animator;

.field private mHideProgressBarAction:Ljava/lang/Runnable;

.field private mIsShowProgress:Z

.field private mIsZooming:Z

.field private mLastTouchDownX:F

.field private mLeftRangeFloat:F

.field private mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

.field private mLockedAvailableAreaLeft:I

.field private mLockedAvailableAreaRight:I

.field private mLongPressMoveDistanceFlag:F

.field private mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

.field private mMax:I

.field private mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

.field private mProgress:I

.field private mProgressBounds:Landroid/graphics/Rect;

.field private mProgressFloat:F

.field private mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

.field private mRightRangeFloat:F

.field private mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

.field private mScaledTouchSlop:I

.field private mStartLongPressMoveDistanceDownXFlag:F

.field private mStartRange:I

.field private mStopSlide:Z

.field private mThumbOffset:I

.field private mTotal:I

.field private mTouchDownX:F

.field private mTouchMoveX:F

.field private mTouchState:I

.field private mVisibleAreaBottom:I

.field private mVisibleAreaLeft:I

.field private mVisibleAreaRight:I

.field private mVisibleAreaTop:I

.field private mWidth:I

.field private progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    .line 49
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 50
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 51
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 52
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 55
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 57
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 67
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 68
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 69
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 74
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 75
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 76
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 77
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 78
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    .line 49
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 50
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 51
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 52
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 55
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 57
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 67
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 68
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 69
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 74
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 75
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 76
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 77
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 78
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    .line 98
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    .line 49
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 50
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 51
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 52
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 55
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 57
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 67
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 68
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 69
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 74
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 75
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 76
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 77
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 78
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    .line 103
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->init()V

    .line 104
    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsZooming:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;FFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->scaleTo(FFZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    return v0
.end method

.method private adjustThumb()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 337
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 338
    .local v0, "leftPosition":F
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 339
    .local v4, "rightPosition":F
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 343
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    invoke-direct {p0, v5, v6, v10, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    sub-float v5, v4, v0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getVisibleAreaWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 348
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 349
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v5, v5

    sub-float v3, v5, v4

    .line 350
    .local v3, "offset":F
    add-float v5, v0, v3

    sub-float/2addr v5, v9

    float-to-int v1, v5

    .line 351
    .local v1, "newLeft":I
    add-float v5, v4, v3

    sub-float/2addr v5, v9

    float-to-int v2, v5

    .line 352
    .local v2, "newRight":I
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    if-gt v2, v5, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 355
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {p0, v5, v6, v10, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0

    .line 357
    .end local v1    # "newLeft":I
    .end local v2    # "newRight":I
    .end local v3    # "offset":F
    :cond_2
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    .line 358
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v5, v5

    sub-float v3, v5, v0

    .line 359
    .restart local v3    # "offset":F
    add-float v5, v0, v3

    add-float/2addr v5, v9

    float-to-int v1, v5

    .line 360
    .restart local v1    # "newLeft":I
    add-float v5, v4, v3

    add-float/2addr v5, v9

    float-to-int v2, v5

    .line 361
    .restart local v2    # "newRight":I
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    if-gt v2, v5, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 364
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {p0, v5, v6, v10, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0

    .line 368
    .end local v1    # "newLeft":I
    .end local v2    # "newRight":I
    .end local v3    # "offset":F
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 369
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-direct {p0, v5, v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0

    .line 375
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 376
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-direct {p0, v5, v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0
.end method

.method private autoMove()V
    .locals 2

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    if-eqz v0, :cond_2

    .line 802
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 803
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 804
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 806
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 807
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 809
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    .line 810
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->invalidate()V

    .line 812
    :cond_2
    return-void
.end method

.method private canSlip()Z
    .locals 3

    .prologue
    .line 596
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearAvailableAreaOffset()V
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 383
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 385
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 111
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020312

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    .line 112
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020313

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    .line 113
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02033b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    .line 114
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-direct {v6}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    .line 115
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setCLayoutDirection(I)V

    .line 116
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f110119

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    .line 117
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v8, v6

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0341

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 124
    .local v1, "contentPaddingTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b033f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 125
    .local v3, "progressTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b033e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 126
    .local v2, "progressBottom":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0340

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 127
    .local v0, "contentPaddingBottom":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v6, v7, v1, v7, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setPadding(IIII)V

    .line 128
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    invoke-virtual {v6, v7, v1, v7, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setPadding(IIII)V

    .line 129
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, v7, v3, v7, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setPadding(IIII)V

    .line 130
    move v5, v1

    .line 131
    .local v5, "thumbPaddingTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0346

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 132
    .local v4, "thumbPaddingBottom":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, v7, v5, v7, v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setPadding(IIII)V

    .line 133
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, v7, v5, v7, v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setPadding(IIII)V

    .line 134
    return-void

    .line 115
    .end local v0    # "contentPaddingBottom":I
    .end local v1    # "contentPaddingTop":I
    .end local v2    # "progressBottom":I
    .end local v3    # "progressTop":I
    .end local v4    # "thumbPaddingBottom":I
    .end local v5    # "thumbPaddingTop":I
    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V
    .locals 10
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "iSeekbarZooming"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getVisibleAreaWidth()I

    move-result v5

    .line 401
    .local v5, "visibleAreaWidth":I
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v7, v7

    int-to-float v8, v5

    mul-float/2addr v8, p1

    add-float v0, v7, v8

    .line 402
    .local v0, "leftPosition":F
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v7, v7

    int-to-float v8, v5

    mul-float/2addr v8, p2

    add-float v3, v7, v8

    .line 403
    .local v3, "rightPosition":F
    sub-float v6, v3, v0

    .line 404
    .local v6, "zoomWidth":F
    int-to-float v7, v5

    div-float v4, v7, v6

    .line 405
    .local v4, "scale":F
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v8, v8

    sub-float v8, v0, v8

    mul-float/2addr v8, v4

    sub-float v1, v7, v8

    .line 406
    .local v1, "newLeft":F
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v8, v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v4

    add-float v2, v7, v8

    .line 407
    .local v2, "newRight":F
    float-to-int v7, v1

    float-to-int v8, v2

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 408
    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_1

    :goto_0
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    :goto_1
    invoke-interface {v2, p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    .line 226
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 221
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_1

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_4

    :goto_3
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    :goto_4
    invoke-interface {v2, p0, v1, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_4
.end method

.method private onStopTrackingTouch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 229
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_1

    :goto_0
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    :goto_1
    invoke-interface {v2, p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    .line 236
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 231
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_1

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_4

    :goto_3
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    :goto_4
    invoke-interface {v2, p0, v1, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_4
.end method

.method private recoverToLockedArea()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 324
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->adjustThumb()V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0
.end method

.method private scaleTo(FFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "center"    # F
    .param p3, "locked"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 418
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getAvailableWidth()I

    move-result v0

    .line 419
    .local v0, "availableAreaWidth":I
    int-to-float v4, v0

    sub-float v5, p1, v6

    mul-float v3, v4, v5

    .line 420
    .local v3, "scaleWidth":F
    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v4, v4

    mul-float v5, v3, p2

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 421
    .local v1, "newLeft":I
    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v4, v4

    sub-float v5, v6, p2

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 422
    .local v2, "newRight":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p3, v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 424
    return-void
.end method

.method private trackTouchEvent(F)V
    .locals 9
    .param p1, "touchDownX"    # F

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 535
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 536
    move v2, p1

    .line 537
    .local v2, "touchLocationX":F
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 538
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 539
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v2, v6

    .line 547
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getAvailableWidth()I

    move-result v6

    int-to-float v0, v6

    .line 548
    .local v0, "availableAreaWidth":F
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    sub-float v3, v6, v7

    .line 549
    .local v3, "x":F
    div-float v1, v3, v0

    .line 550
    .local v1, "scale":F
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    packed-switch v6, :pswitch_data_0

    .line 571
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateRangeValue()V

    .line 572
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_9

    .line 573
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    if-lt v6, v7, :cond_1

    :cond_0
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    if-le v6, v7, :cond_2

    .line 574
    :cond_1
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    .line 575
    iput-boolean v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 583
    :cond_2
    :goto_2
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 584
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->canSlip()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    const/4 v6, -0x1

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    invoke-interface {v4, p0, v6, v7, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onProgressPreview(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V

    .line 592
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 593
    return-void

    .line 540
    .end local v0    # "availableAreaWidth":F
    .end local v1    # "scale":F
    .end local v3    # "x":F
    :cond_4
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    .line 541
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 542
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v2, v6

    goto :goto_0

    .line 544
    :cond_5
    iput v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    goto :goto_0

    .line 552
    .restart local v0    # "availableAreaWidth":F
    .restart local v1    # "scale":F
    .restart local v3    # "x":F
    :pswitch_0
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    cmpl-float v6, v1, v6

    if-lez v6, :cond_6

    .line 553
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    goto :goto_1

    .line 555
    :cond_6
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    goto :goto_1

    .line 559
    :pswitch_1
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    .line 560
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    goto :goto_1

    .line 562
    :cond_7
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    goto :goto_1

    .line 567
    :pswitch_2
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    goto :goto_1

    .line 577
    :cond_8
    iput-boolean v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    goto :goto_2

    .line 581
    :cond_9
    iput-boolean v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    goto :goto_2

    .line 587
    :cond_a
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_d

    .line 588
    iget-object v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_b

    :goto_4
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_c

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    :goto_5
    invoke-interface {v7, p0, v4, v6, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V

    goto :goto_3

    :cond_b
    move v4, v5

    goto :goto_4

    :cond_c
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_5

    .line 590
    :cond_d
    iget-object v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_e

    move v4, v5

    :cond_e
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_f

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    :goto_6
    invoke-interface {v7, p0, v4, v6, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V

    goto :goto_3

    :cond_f
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_6

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRangeValue()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 600
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 601
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 609
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 603
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 604
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0

    .line 606
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 607
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    .line 175
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getAvailableWidth()I

    move-result v2

    .line 176
    .local v2, "availableAreaWidth":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v8, v9

    float-to-int v0, v8

    .line 177
    .local v0, "availableAreaLeft":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 178
    .local v1, "availableAreaRight":I
    const/4 v6, 0x0

    .line 179
    .local v6, "progressThumbPosition":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaTop:I

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaBottom:I

    invoke-virtual {v8, v0, v9, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 181
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 182
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v2

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 184
    .local v4, "mLeftThumbPosition":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v2

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 185
    .local v5, "mRightThumbPosition":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-ne v8, v11, :cond_2

    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    if-ne v8, v11, :cond_2

    .line 186
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v2

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 187
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int v3, v4, v8

    .line 188
    .local v3, "leftLimit":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int v7, v5, v8

    .line 189
    .local v7, "rightLimit":I
    if-gt v6, v3, :cond_1

    .line 190
    move v6, v3

    .line 194
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveProgressThumb(II)V

    .line 199
    .end local v3    # "leftLimit":I
    .end local v7    # "rightLimit":I
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v4, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveLeftThumb(II)V

    .line 200
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v5, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveRightThumb(II)V

    .line 201
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setStartRangeScale(F)V

    .line 202
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setEndRangeScale(F)V

    .line 203
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->invalidate()V

    .line 204
    return-void

    .line 191
    .restart local v3    # "leftLimit":I
    .restart local v7    # "rightLimit":I
    :cond_1
    if-lt v6, v7, :cond_0

    .line 192
    move v6, v7

    goto :goto_0

    .line 196
    .end local v3    # "leftLimit":I
    .end local v7    # "rightLimit":I
    :cond_2
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v4

    sub-int v10, v5, v4

    int-to-float v10, v10

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int v6, v8, v9

    .line 197
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveTo(II)V

    goto :goto_1
.end method

.method private zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V
    .locals 9
    .param p1, "newLeft"    # I
    .param p2, "newRight"    # I
    .param p3, "locked"    # Z
    .param p4, "iSeekbarZooming"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 433
    sub-int v3, p2, p1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    if-ge v3, v4, :cond_0

    .line 434
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 435
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 436
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    const-string v3, "AvailableAreaLeft"

    new-array v4, v8, [I

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    aput v5, v4, v7

    aput p1, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 438
    .local v0, "animatorLeft":Landroid/animation/Animator;
    const-string v3, "AvailableAreaRight"

    new-array v4, v8, [I

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    aput v5, v4, v7

    aput p2, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 439
    .local v1, "animatorRight":Landroid/animation/Animator;
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 440
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 441
    iput-boolean v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsZooming:Z

    .line 442
    new-instance v3, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;

    invoke-direct {v3, p0, p4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    if-eqz p3, :cond_0

    .line 465
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    .line 466
    iput p2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    .line 469
    .end local v0    # "animatorLeft":Landroid/animation/Animator;
    .end local v1    # "animatorRight":Landroid/animation/Animator;
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailableHeight()I
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAvailableWidth()I
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndRange()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    return v0
.end method

.method public getNearbyThumbId(IZ)I
    .locals 13
    .param p1, "x"    # I
    .param p2, "leftFirst"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v7, 0x1

    .line 483
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 484
    .local v4, "leftDistance":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 485
    .local v6, "rightDistance":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 486
    .local v5, "progressDistance":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    iget-object v12, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v12}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 487
    .local v0, "gapLeft":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    iget-object v12, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v12}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 488
    .local v1, "gapRight":I
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-gt v0, v11, :cond_1

    move v2, v7

    .line 489
    .local v2, "isTogetherWithLeftThumb":Z
    :goto_0
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-gt v1, v11, :cond_2

    move v3, v7

    .line 490
    .local v3, "isTogetherWithRightThumb":Z
    :goto_1
    if-eqz p2, :cond_7

    .line 491
    if-eqz v2, :cond_3

    .line 492
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v11, :cond_0

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_3

    .line 531
    :cond_0
    :goto_2
    return v7

    .end local v2    # "isTogetherWithLeftThumb":Z
    .end local v3    # "isTogetherWithRightThumb":Z
    :cond_1
    move v2, v8

    .line 488
    goto :goto_0

    .restart local v2    # "isTogetherWithLeftThumb":Z
    :cond_2
    move v3, v8

    .line 489
    goto :goto_1

    .line 496
    .restart local v3    # "isTogetherWithRightThumb":Z
    :cond_3
    if-eqz v3, :cond_5

    .line 497
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v6, v11, :cond_4

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_5

    :cond_4
    move v7, v9

    .line 498
    goto :goto_2

    .line 501
    :cond_5
    iget-boolean v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_6

    move v7, v9

    .line 502
    goto :goto_2

    .line 504
    :cond_6
    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v9, :cond_0

    .line 507
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v6, v7, :cond_e

    move v7, v10

    .line 508
    goto :goto_2

    .line 511
    :cond_7
    if-eqz v3, :cond_9

    .line 512
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v6, v11, :cond_8

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_9

    :cond_8
    move v7, v10

    .line 513
    goto :goto_2

    .line 516
    :cond_9
    if-eqz v2, :cond_b

    .line 517
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v11, :cond_a

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_b

    :cond_a
    move v7, v9

    .line 518
    goto :goto_2

    .line 521
    :cond_b
    iget-boolean v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v11, :cond_c

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_c

    move v7, v9

    .line 522
    goto :goto_2

    .line 524
    :cond_c
    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v6, v9, :cond_d

    move v7, v10

    .line 525
    goto :goto_2

    .line 527
    :cond_d
    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v9, :cond_0

    :cond_e
    move v7, v8

    .line 531
    goto :goto_2
.end method

.method public getStartRange()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    return v0
.end method

.method public getVisibleAreaWidth()I
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hideProgressBar()V
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->hideProgressBar(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method public hideProgressBar(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 689
    if-eqz p1, :cond_0

    .line 690
    const-string v0, "ProgressBarAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    .line 691
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 713
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setProgressBarAlpha(I)V

    goto :goto_0

    .line 690
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isTouching()Z
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZooming()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsZooming:Z

    return v0
.end method

.method public lockRangeTo(IILcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "iSeekbarZooming"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 389
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    if-gt p2, v0, :cond_0

    if-ge p1, p2, :cond_0

    sub-int v0, p2, p1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mWidth:I

    if-le v0, v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 391
    int-to-float v0, p1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    int-to-float v0, p2

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-direct {p0, v0, v1, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 788
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 791
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 792
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    if-eqz v0, :cond_1

    .line 796
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMove()V

    .line 798
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const v4, 0x7fffffff

    .line 145
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 146
    if-eqz p1, :cond_2

    .line 147
    sub-int v0, p4, p2

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mWidth:I

    .line 148
    sub-int v0, p5, p3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setSize(II)V

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setSize(II)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setSize(II)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    .line 153
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mWidth:I

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    .line 154
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaTop:I

    .line 155
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaBottom:I

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setDrawingArea(II)V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setDrawingArea(II)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setDrawingArea(II)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setDrawingArea(II)V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setDrawingArea(II)V

    .line 161
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    if-ne v0, v4, :cond_0

    .line 162
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 163
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    .line 165
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    if-ne v0, v4, :cond_1

    .line 166
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 167
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 172
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 858
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 859
    check-cast v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;

    .line 860
    .local v0, "savedState":Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 861
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->total:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 862
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->startRange:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 863
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->endRange:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 864
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->max:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    .line 865
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->progress:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 866
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$600(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 867
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$700(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 868
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$800(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    .line 869
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$900(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    .line 870
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1000(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 871
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1100(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 872
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1200(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 874
    .end local v0    # "savedState":Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 140
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setCLayoutDirection(I)V

    .line 141
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 840
    new-instance v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 841
    .local v0, "savedState":Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->total:I

    .line 842
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->startRange:I

    .line 843
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->endRange:I

    .line 844
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->max:I

    .line 845
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->progress:I

    .line 846
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$602(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 847
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$702(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 848
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$802(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 849
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$902(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 850
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1002(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;F)F

    .line 851
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1102(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;F)F

    .line 852
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1202(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;F)F

    .line 853
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 242
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    .line 243
    iput v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 244
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 245
    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 246
    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    .line 248
    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-direct {v1, p0, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 249
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    sget v3, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v3

    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 252
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 255
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    if-ne v1, v4, :cond_2

    .line 256
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 257
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    if-nez v1, :cond_2

    .line 258
    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-direct {v1, p0, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 259
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    sget v4, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    :cond_2
    :goto_1
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-eq v1, v7, :cond_7

    .line 271
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    if-eqz v1, :cond_6

    .line 273
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    goto/16 :goto_0

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    if-eqz v1, :cond_4

    .line 263
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->cancel()V

    .line 264
    iput-object v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 266
    :cond_4
    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    goto :goto_1

    .line 276
    :cond_5
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    goto/16 :goto_0

    .line 281
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    goto/16 :goto_0

    .line 284
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 285
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 286
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    float-to-int v4, v1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {p0, v4, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getNearbyThumbId(IZ)I

    move-result v0

    .line 287
    .local v0, "thumbId":I
    packed-switch v0, :pswitch_data_1

    .line 298
    iput v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 300
    :goto_3
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-eq v1, v7, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->onStartTrackingTouch()V

    goto/16 :goto_0

    .end local v0    # "thumbId":I
    :cond_8
    move v1, v3

    .line 286
    goto :goto_2

    .line 289
    .restart local v0    # "thumbId":I
    :pswitch_2
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    goto :goto_3

    .line 292
    :pswitch_3
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    goto :goto_3

    .line 295
    :pswitch_4
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    goto :goto_3

    .line 307
    .end local v0    # "thumbId":I
    :pswitch_5
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 308
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    if-eqz v1, :cond_9

    .line 309
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->cancel()V

    .line 310
    iput-object v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 312
    :cond_9
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-eq v1, v7, :cond_a

    .line 313
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->onStopTrackingTouch()V

    .line 314
    iput v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 315
    iput-boolean v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 317
    :cond_a
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->recoverToLockedArea()V

    goto/16 :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAvailableAreaLeft(I)V
    .locals 0
    .param p1, "availableAreaLeft"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 474
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 475
    return-void
.end method

.method public setAvailableAreaRight(I)V
    .locals 0
    .param p1, "availableAreaRight"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 479
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 480
    return-void
.end method

.method public setBitmapProvider(Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V
    .locals 2
    .param p1, "mBitmapProvider"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$VideoEditorRangeSeekBarBitmapProviderWrapper;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$VideoEditorRangeSeekBarBitmapProviderWrapper;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setmBitmapProvider(Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V

    .line 816
    return-void
.end method

.method public setEndRange(I)V
    .locals 3
    .param p1, "range"    # I

    .prologue
    .line 748
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    if-le p1, v0, :cond_0

    .line 749
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 755
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 756
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 760
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 761
    return-void

    .line 750
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    if-ge p1, v0, :cond_1

    .line 751
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0

    .line 753
    :cond_1
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0

    .line 758
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    goto :goto_1
.end method

.method public setMax(I)V
    .locals 4
    .param p1, "max"    # I

    .prologue
    .line 641
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 642
    .local v0, "progressScale":F
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 643
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    .line 644
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_0

    .line 645
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 649
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 650
    return-void

    .line 647
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    goto :goto_0
.end method

.method public setOnSeekBarChangeListener(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "onSeekBarChangeListener"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    .line 108
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 732
    if-gez p1, :cond_0

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 740
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 744
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 745
    return-void

    .line 734
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 735
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    goto :goto_0

    .line 737
    :cond_1
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    goto :goto_0

    .line 742
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    goto :goto_1
.end method

.method public setProgressBarAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setAlpha(I)V

    .line 660
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->invalidate()V

    .line 661
    return-void
.end method

.method public setStartRange(I)V
    .locals 3
    .param p1, "range"    # I

    .prologue
    .line 625
    if-gez p1, :cond_0

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 632
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 637
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 638
    return-void

    .line 627
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    if-le p1, v0, :cond_1

    .line 628
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_0

    .line 630
    :cond_1
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_0

    .line 635
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    goto :goto_1
.end method

.method public setStopSlide(Z)V
    .locals 0
    .param p1, "stopSlide"    # Z

    .prologue
    .line 977
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 978
    return-void
.end method

.method public setThumbnailAspectRatio(Lcom/miui/gallery/video/editor/DisplayAspectRatio;)V
    .locals 1
    .param p1, "ratio"    # Lcom/miui/gallery/video/editor/DisplayAspectRatio;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setAspectRatio(Lcom/miui/gallery/video/editor/DisplayAspectRatio;)V

    .line 655
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 620
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 621
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateRangeValue()V

    .line 622
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-nez v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressBarAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressBarAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 667
    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressBarAction:Ljava/lang/Runnable;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 672
    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    .line 674
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 675
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setProgressBarAlpha(I)V

    .line 678
    :cond_2
    return-void
.end method
