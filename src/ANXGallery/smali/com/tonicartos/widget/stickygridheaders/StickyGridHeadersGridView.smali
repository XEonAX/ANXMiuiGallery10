.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final ERROR_PLATFORM:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClipToPaddingHasBeenSet:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Z

.field private mCurrentHeaderId:J

.field protected mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Lcom/miui/gallery/view/GestureDetector;

.field mGestureListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

.field private mHeaderBottomPosition:I

.field mHeaderChildBeingPressed:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadersIgnorePadding:Z

.field private mHorizontalSpacing:I

.field private mMaskStickyHeaderRegion:Z

.field protected mMotionHeaderPosition:I

.field private mMotionY:F

.field private mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

.field private mPreScrollState:I

.field private mRealAdapter:Landroid/widget/ListAdapter;

.field private mRequestedNumColumns:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mStickiedHeader:Landroid/view/View;

.field private mStickyHeaderBackgroundAlpha:I

.field private mStickyHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error supporting platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    .line 85
    const-class v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    .line 118
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 120
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 138
    iput-boolean v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 140
    const/16 v1, 0xfa

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickyHeaderBackgroundAlpha:I

    .line 160
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPreScrollState:I

    .line 162
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    .line 180
    iput-boolean v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 186
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 188
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 344
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mGestureListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    .line 206
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 207
    invoke-virtual {p0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 209
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 210
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchSlop:I

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 66
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPreScrollState:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 66
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    return v0
.end method

.method static synthetic access$402(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J
    .locals 2
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->headerViewPositionToId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private findMotionHeader(F)I
    .locals 10
    .param p1, "y"    # F

    .prologue
    .line 728
    iget-object v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    .line 729
    const/4 v6, -0x2

    .line 748
    :cond_0
    :goto_0
    return v6

    .line 732
    :cond_1
    const/4 v6, 0x0

    .line 733
    .local v6, "vi":I
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v7

    if-gt v2, v7, :cond_3

    .line 734
    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 735
    .local v4, "id":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 736
    invoke-virtual {p0, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 738
    .local v1, "headerWrapper":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 739
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 740
    .local v3, "top":I
    int-to-float v7, v0

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_2

    int-to-float v7, v3

    cmpl-float v7, p1, v7

    if-gez v7, :cond_0

    .line 744
    .end local v0    # "bottom":I
    .end local v1    # "headerWrapper":Landroid/view/View;
    .end local v3    # "top":I
    :cond_2
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v7

    add-int/2addr v2, v7

    .line 745
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v7

    add-int/2addr v6, v7

    .line 746
    goto :goto_1

    .line 748
    .end local v4    # "id":J
    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 789
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private headerViewPositionToId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 793
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 794
    iget-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 796
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 800
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v3, :cond_0

    .line 829
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 812
    .local v2, "widthMeasureSpec":I
    :goto_1
    const/4 v0, 0x0

    .line 814
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 815
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_2

    .line 816
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 820
    :goto_2
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 821
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 823
    iget-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_3

    .line 824
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 808
    .end local v0    # "heightMeasureSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 809
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 808
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_1

    .line 818
    .restart local v0    # "heightMeasureSpec":I
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 826
    :cond_3
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 827
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 826
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1380
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1381
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1382
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1383
    .local v1, "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 1384
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1385
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 1386
    const/4 v3, 0x1

    .line 1389
    .end local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :goto_1
    return v3

    .line 1381
    .restart local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1389
    .end local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 832
    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 833
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 834
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 835
    return-void
.end method

.method private scrollChanged(I)V
    .locals 24
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 843
    .local v9, "firstItem":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    .line 848
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 849
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    goto :goto_0

    .line 853
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v8

    .line 855
    .local v8, "columns":I
    move/from16 v17, p1

    .line 857
    .local v17, "selectedHeaderPosition":I
    sub-int v4, p1, v8

    .line 858
    .local v4, "beforeRowPosition":I
    if-gez v4, :cond_3

    .line 859
    move/from16 v4, p1

    .line 862
    :cond_3
    add-int v16, p1, v8

    .line 863
    .local v16, "secondRowPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 864
    move/from16 v16, p1

    .line 867
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 888
    .local v14, "newHeaderId":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v14

    if-eqz v20, :cond_5

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v21, v0

    .line 890
    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 889
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->measureHeader()V

    .line 892
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 895
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v6

    .line 896
    .local v6, "childCount":I
    if-eqz v6, :cond_0

    .line 897
    const/16 v18, 0x0

    .line 898
    .local v18, "viewToWatch":Landroid/view/View;
    const v19, 0x1869f

    .line 901
    .local v19, "watchingChildDistance":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v6, :cond_d

    .line 902
    move-object/from16 v0, p0

    invoke-super {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 905
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 906
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    sub-int v7, v20, v21

    .line 911
    .local v7, "childDistance":I
    :goto_3
    if-gez v7, :cond_c

    .line 901
    :cond_6
    :goto_4
    add-int/2addr v12, v8

    goto :goto_2

    .line 869
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childDistance":I
    .end local v12    # "i":I
    .end local v14    # "newHeaderId":J
    .end local v18    # "viewToWatch":Landroid/view/View;
    .end local v19    # "watchingChildDistance":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    if-gez v20, :cond_9

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 871
    .restart local v14    # "newHeaderId":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 872
    .local v10, "firstSecondRowView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v20

    if-gtz v20, :cond_8

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 874
    move/from16 v17, v16

    goto/16 :goto_1

    .line 876
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    goto/16 :goto_1

    .line 879
    .end local v10    # "firstSecondRowView":Landroid/view/View;
    .end local v14    # "newHeaderId":J
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v13

    .line 880
    .local v13, "margin":I
    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_a

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .line 882
    .restart local v14    # "newHeaderId":J
    move/from16 v17, v4

    goto/16 :goto_1

    .line 884
    .end local v14    # "newHeaderId":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v14

    .restart local v14    # "newHeaderId":J
    goto/16 :goto_1

    .line 908
    .end local v13    # "margin":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v12    # "i":I
    .restart local v18    # "viewToWatch":Landroid/view/View;
    .restart local v19    # "watchingChildDistance":I
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .restart local v7    # "childDistance":I
    goto/16 :goto_3

    .line 915
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_6

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 917
    move-object/from16 v18, v5

    .line 918
    move/from16 v19, v7

    goto/16 :goto_4

    .line 922
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childDistance":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v11

    .line 926
    .local v11, "headerHeight":I
    if-eqz v18, :cond_12

    .line 927
    if-nez p1, :cond_e

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-super {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    if-lez v20, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 929
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 931
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 932
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v20

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    add-int v21, v21, v11

    .line 932
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v20

    add-int v20, v20, v11

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    goto :goto_5

    .line 938
    :cond_10
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    if-gez v20, :cond_11

    .end local v11    # "headerHeight":I
    :goto_6
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .restart local v11    # "headerHeight":I
    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 944
    :cond_12
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 945
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0
.end method

.method private swapStickiedHeader(Landroid/view/View;)V
    .locals 2
    .param p1, "newStickiedHeader"    # Landroid/view/View;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 954
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 955
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 956
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickyHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickyHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 962
    :goto_0
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getStickyHeaderIsTranscluent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickyHeaderBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 966
    :cond_0
    return-void

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    const v1, 0x7f02027c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "headerPosition"    # I

    .prologue
    .line 969
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 999
    .end local p1    # "e":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 996
    .restart local p1    # "e":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 997
    .local v0, "headerHolder":Landroid/view/View;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 998
    .local v1, "n":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object p1, v1

    .line 999
    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;)V

    .line 1356
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1317
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1318
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1319
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1320
    .local v1, "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 1338
    :cond_0
    :goto_1
    return-void

    .line 1318
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1325
    .end local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_2
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    .line 1326
    .restart local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iput-object p1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 1327
    iput-object p2, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 1328
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 1332
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v3, :cond_0

    .line 1333
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setFooter(Ljava/util/List;)V

    .line 1336
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;)V

    .line 1275
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1240
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1241
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1242
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1243
    .local v1, "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 1261
    :cond_0
    :goto_1
    return-void

    .line 1241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    .end local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_2
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    .line 1249
    .restart local v1    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iput-object p1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 1250
    iput-object p2, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 1251
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 1255
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v3, :cond_0

    .line 1256
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setHeader(Ljava/util/List;)V

    .line 1259
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method attachHeader(Landroid/view/View;)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1435
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "mAttachInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1441
    .local v0, "attachInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1442
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchAttachedToWindow"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string v7, "android.view.View$AttachInfo"

    .line 1443
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 1442
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1444
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1445
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 1446
    .end local v0    # "attachInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1448
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1449
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1450
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 1451
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1452
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1453
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1454
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1455
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1456
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 1457
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3
.end method

.method detachHeader(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1462
    if-nez p1, :cond_0

    .line 1479
    :goto_0
    return-void

    .line 1467
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchDetachedFromWindow"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1468
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1469
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1470
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1472
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1473
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1474
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1475
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1476
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1477
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1004
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 1008
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v14

    .line 1009
    .local v14, "columns":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 1010
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v15, 0x1

    .line 1011
    .local v15, "drawStickiedHeader":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v19

    .line 1012
    .local v19, "headerHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    sub-int v31, v4, v19

    .line 1016
    .local v31, "top":I
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v4, :cond_1

    .line 1017
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_4

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1024
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1032
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1035
    const/4 v12, 0x0

    .line 1036
    .local v12, "HEADER":I
    const/4 v11, 0x1

    .line 1037
    .local v11, "DIVIDER":I
    new-instance v33, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v33 .. v33}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1039
    .local v33, "viewPositions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v32, 0x0

    .line 1040
    .local v32, "vi":I
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_5

    const/16 v28, -0x1

    .line 1041
    .local v28, "preAdapterCount":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_6

    const/16 v29, -0x1

    .line 1043
    .local v29, "preRealAdapterCount":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v22

    .local v22, "i":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v4

    move/from16 v0, v22

    if-gt v0, v4, :cond_8

    .line 1044
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v24

    .line 1045
    .local v24, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v24, v4

    if-nez v4, :cond_7

    .line 1046
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :cond_2
    :goto_5
    add-int v22, v22, v14

    .line 1051
    add-int v32, v32, v14

    .line 1052
    goto :goto_4

    .line 1010
    .end local v11    # "DIVIDER":I
    .end local v12    # "HEADER":I
    .end local v15    # "drawStickiedHeader":Z
    .end local v19    # "headerHeight":I
    .end local v22    # "i":I
    .end local v24    # "id":J
    .end local v28    # "preAdapterCount":I
    .end local v29    # "preRealAdapterCount":I
    .end local v31    # "top":I
    .end local v32    # "vi":I
    .end local v33    # "viewPositions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1021
    .restart local v15    # "drawStickiedHeader":Z
    .restart local v19    # "headerHeight":I
    .restart local v31    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 1040
    .restart local v11    # "DIVIDER":I
    .restart local v12    # "HEADER":I
    .restart local v32    # "vi":I
    .restart local v33    # "viewPositions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v28

    goto :goto_2

    .line 1041
    .restart local v28    # "preAdapterCount":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    goto :goto_3

    .line 1047
    .restart local v22    # "i":I
    .restart local v24    # "id":J
    .restart local v29    # "preRealAdapterCount":I
    :cond_7
    const-wide/16 v4, -0x4

    cmp-long v4, v24, v4

    if-nez v4, :cond_2

    .line 1048
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1055
    .end local v24    # "id":J
    :cond_8
    const/16 v22, 0x0

    :goto_6
    invoke-virtual/range {v33 .. v33}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_15

    .line 1056
    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1059
    .local v17, "frame":Landroid/view/View;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    .local v34, "viewToDraw":Landroid/view/View;
    if-nez v34, :cond_e

    .line 1065
    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1066
    .local v23, "layoutPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v4

    add-int v13, v4, v23

    .line 1067
    .local v13, "adapterPos":I
    sget-object v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "view count [%d], adapter count[%d/%d], real adapter count[%d/%d]"

    const/4 v4, 0x5

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x1

    .line 1069
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v4, -0x1

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x3

    .line 1070
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_b

    const/4 v4, -0x1

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    .line 1067
    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    sget-object v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v6, "current[layout: %d|adapter: %d] item is %s"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "null"

    :goto_9
    invoke-static {v5, v6, v7, v8, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1073
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    .line 1074
    .local v18, "headerClassName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    .line 1076
    .local v30, "tagClassName":Ljava/lang/String;
    :goto_a
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 1077
    .local v27, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "header_class/tag_class"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string v4, "error_track"

    const-string/jumbo v5, "sticky_grid_headers_get_tag_npe"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1055
    .end local v13    # "adapterPos":I
    .end local v18    # "headerClassName":Ljava/lang/String;
    .end local v23    # "layoutPos":I
    .end local v27    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30    # "tagClassName":Ljava/lang/String;
    :cond_9
    :goto_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 1060
    .end local v34    # "viewToDraw":Landroid/view/View;
    :catch_0
    move-exception v16

    .line 1215
    .end local v17    # "frame":Landroid/view/View;
    :goto_c
    return-void

    .line 1069
    .restart local v13    # "adapterPos":I
    .restart local v17    # "frame":Landroid/view/View;
    .restart local v23    # "layoutPos":I
    .restart local v34    # "viewToDraw":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    goto/16 :goto_7

    .line 1070
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    goto/16 :goto_8

    .line 1071
    :cond_c
    const-string v4, "not null"

    goto :goto_9

    .line 1074
    .restart local v18    # "headerClassName":Ljava/lang/String;
    :cond_d
    const-string v30, "null"

    goto :goto_a

    .line 1088
    .end local v13    # "adapterPos":I
    .end local v18    # "headerClassName":Ljava/lang/String;
    .end local v23    # "layoutPos":I
    :cond_e
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    .line 1092
    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v12, :cond_f

    move-object/from16 v4, v17

    .line 1093
    check-cast v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    .line 1094
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v4, :cond_10

    const/16 v20, 0x1

    .line 1095
    .local v20, "headerIsStickied":Z
    :goto_d
    if-nez v20, :cond_9

    .line 1101
    .end local v20    # "headerIsStickied":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_11

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .line 1108
    .local v36, "widthMeasureSpec":I
    :goto_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1109
    .local v21, "heightMeasureSpec":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1110
    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1112
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_12

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1119
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_13

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1127
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1129
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1131
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_14

    .line 1132
    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1136
    :goto_11
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    .line 1094
    .end local v21    # "heightMeasureSpec":I
    .end local v36    # "widthMeasureSpec":I
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 1104
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 1104
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .restart local v36    # "widthMeasureSpec":I
    goto/16 :goto_e

    .line 1115
    .restart local v21    # "heightMeasureSpec":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1116
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1115
    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_f

    .line 1123
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_10

    .line 1134
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_11

    .line 1140
    .end local v17    # "frame":Landroid/view/View;
    .end local v21    # "heightMeasureSpec":I
    .end local v34    # "viewToDraw":Landroid/view/View;
    .end local v36    # "widthMeasureSpec":I
    :cond_15
    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v4, :cond_1a

    .line 1141
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1149
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_1b

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v35

    .line 1154
    .local v35, "wantedWidth":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    move/from16 v0, v35

    if-eq v4, v0, :cond_17

    .line 1156
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_1c

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .line 1164
    .restart local v36    # "widthMeasureSpec":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1165
    .local v26, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v26, :cond_1d

    move-object/from16 v0, v26

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1d

    .line 1166
    move-object/from16 v0, v26

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1171
    .restart local v21    # "heightMeasureSpec":I
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1173
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_1e

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 1181
    .end local v21    # "heightMeasureSpec":I
    .end local v26    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v36    # "widthMeasureSpec":I
    :cond_17
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_1f

    .line 1182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1188
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v5, v31, v19

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1189
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    if-eqz v4, :cond_20

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1195
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1198
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v4, :cond_21

    .line 1199
    const/4 v4, 0x0

    move/from16 v0, v31

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1204
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getStickyHeaderIsTranscluent()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v0, v19

    if-eq v4, v0, :cond_18

    .line 1205
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    mul-int/lit16 v4, v4, 0xff

    div-int v9, v4, v19

    const/16 v10, 0x1f

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1209
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getStickyHeaderIsTranscluent()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v0, v19

    if-eq v4, v0, :cond_19

    .line 1212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1214
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 1142
    .end local v35    # "wantedWidth":I
    :cond_1a
    if-nez v15, :cond_16

    goto/16 :goto_c

    .line 1152
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int v35, v4, v5

    .restart local v35    # "wantedWidth":I
    goto/16 :goto_12

    .line 1159
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 1159
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .restart local v36    # "widthMeasureSpec":I
    goto/16 :goto_13

    .line 1168
    .restart local v26    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .restart local v21    # "heightMeasureSpec":I
    goto/16 :goto_14

    .line 1176
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v7

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1176
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_15

    .line 1185
    .end local v21    # "heightMeasureSpec":I
    .end local v26    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v36    # "widthMeasureSpec":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_16

    .line 1192
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto/16 :goto_17

    .line 1201
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, v31

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_18
.end method

.method public getChildViewByItemIndex(I)Landroid/view/View;
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 760
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getItemPositionByItemIndex(I)I

    move-result v0

    .line 761
    .local v0, "position":I
    invoke-super {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    if-ltz v1, :cond_0

    .line 762
    invoke-super {p0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 763
    invoke-super {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 765
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupIndexByItemIndex(I)I
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getGroupIndexByItemIndex(I)I

    move-result v0

    return v0
.end method

.method public getGroupItemStartIndex(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getGroupItemStartIndex(I)I

    move-result v0

    return v0
.end method

.method public getGroupItemsCount(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 752
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCountForHeader(I)I

    move-result v0

    return v0
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 226
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 234
    :goto_0
    return-object v0

    .line 231
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderNum()I
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderNum()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndexByItemPosition(I)I
    .locals 2
    .param p1, "itemPosition"    # I

    .prologue
    .line 769
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 770
    .local v0, "index":I
    return v0
.end method

.method public getRealAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRealAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getRequestedNumColumns()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRequestedNumColumns:I

    return v0
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChanged()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 783
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1394
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 1395
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1396
    .local v0, "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    goto :goto_0

    .line 1398
    .end local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1399
    .restart local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    goto :goto_1

    .line 1401
    .end local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_1
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mGestureDetector:Lcom/miui/gallery/view/GestureDetector;

    if-nez v1, :cond_2

    .line 1402
    new-instance v1, Lcom/miui/gallery/view/GestureDetector;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mGestureListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/view/GestureDetector;-><init>(Landroid/content/Context;Lcom/miui/gallery/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mGestureDetector:Lcom/miui/gallery/view/GestureDetector;

    .line 1404
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mGestureDetector:Lcom/miui/gallery/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/view/GestureDetector;->setIsDoubleTapEnabled(Z)V

    .line 1406
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1410
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 1411
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1412
    .local v0, "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    goto :goto_0

    .line 1414
    .end local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    .line 1415
    .restart local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    goto :goto_1

    .line 1417
    .end local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 371
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 373
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 374
    .local v3, "y":I
    int-to-float v4, v3

    invoke-direct {p0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->findMotionHeader(F)I

    move-result v1

    .line 375
    .local v1, "headerPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 382
    .local v2, "tempHeader":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 383
    invoke-direct {p0, p1, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    sget-object v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v5, "header child handled event"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v4, 0x1

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 263
    .local v3, "pos":I
    if-gez v3, :cond_1

    .line 264
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "position is invalid, skip"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 275
    .local v3, "pos":I
    if-gez v3, :cond_0

    .line 276
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "position is invalid, skip"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 285
    .local v3, "pos":I
    if-gez v3, :cond_0

    .line 286
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "position is invalid, skip"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 289
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    .line 1421
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->measureHeader()V

    .line 1423
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v1

    .line 1424
    .local v1, "oldColumnNum":I
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 1425
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v0

    .line 1426
    .local v0, "newColumnNum":I
    if-ne v1, v3, :cond_0

    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRequestedNumColumns:I

    if-ne v0, v2, :cond_1

    :cond_0
    if-eq v1, v3, :cond_2

    if-eq v0, v1, :cond_2

    .line 1428
    :cond_1
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v2, :cond_2

    .line 1429
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->onColumnChanged()V

    .line 1432
    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 294
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 298
    move-object v0, p1

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    .line 300
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 301
    iget-boolean v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 303
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 304
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 310
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 311
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    iget-boolean v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    iput-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 312
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 318
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translateVisibleInfo(II)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;

    move-result-object v0

    .line 320
    .local v0, "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;->mFirstPosition:I

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;->mVisibleCount:I

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRealAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 323
    .end local v0    # "info":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 324
    invoke-direct {p0, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 326
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 333
    :cond_0
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string v1, "scrollState changed %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    .line 335
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 398
    .local v0, "action":I
    iget-boolean v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 399
    .local v7, "wasHeaderChildBeingPressed":Z
    iget-boolean v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-eqz v9, :cond_2

    .line 400
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v6

    .line 401
    .local v6, "tempHeader":Landroid/view/View;
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    move-object v4, v6

    .line 403
    .local v4, "headerHolder":Landroid/view/View;
    :goto_0
    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_1

    .line 404
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 406
    :cond_1
    if-eqz v6, :cond_2

    .line 407
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 408
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 409
    new-instance v9, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$3;

    invoke-direct {v9, p0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$3;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;)V

    .line 413
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v10

    int-to-long v10, v10

    .line 409
    invoke-virtual {v6, v9, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 418
    .end local v4    # "headerHolder":Landroid/view/View;
    .end local v6    # "tempHeader":Landroid/view/View;
    :cond_2
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 546
    :cond_3
    :goto_1
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPreScrollState:I

    .line 547
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 548
    .local v1, "handled":Z
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mGestureDetector:Lcom/miui/gallery/view/GestureDetector;

    invoke-virtual {v9, p1}, Lcom/miui/gallery/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 549
    .end local v1    # "handled":Z
    :goto_2
    return v1

    .line 401
    .restart local v6    # "tempHeader":Landroid/view/View;
    :cond_4
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 402
    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 420
    .end local v6    # "tempHeader":Landroid/view/View;
    :pswitch_0
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    if-nez v9, :cond_5

    .line 421
    new-instance v9, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-direct {v9, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    .line 423
    :cond_5
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p0, v9, v10, v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 426
    .local v8, "y":I
    int-to-float v9, v8

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionY:F

    .line 427
    int-to-float v9, v8

    invoke-direct {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->findMotionHeader(F)I

    move-result v9

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 428
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 434
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v6

    .line 435
    .restart local v6    # "tempHeader":Landroid/view/View;
    if-eqz v6, :cond_8

    .line 436
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 437
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 438
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/view/View;->setPressed(Z)V

    .line 440
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 441
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_7

    .line 442
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 444
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 447
    :cond_8
    const/4 v9, 0x0

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 448
    const/4 v1, 0x1

    goto :goto_2

    .line 450
    .end local v6    # "tempHeader":Landroid/view/View;
    .end local v8    # "y":I
    :pswitch_1
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 454
    const/4 v9, -0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 456
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v3

    .line 457
    .local v3, "header":Landroid/view/View;
    if-eqz v3, :cond_9

    .line 458
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setPressed(Z)V

    .line 459
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 461
    :cond_9
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 462
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_a

    .line 463
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    :cond_a
    const/4 v9, -0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    goto/16 :goto_1

    .line 470
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "header":Landroid/view/View;
    :pswitch_2
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_b

    .line 471
    const/4 v9, -0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 472
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 474
    :cond_b
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 478
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v3

    .line 479
    .restart local v3    # "header":Landroid/view/View;
    sget-object v9, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "wasHeaderChildBeingPressed %s"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    if-nez v7, :cond_15

    .line 481
    if-eqz v3, :cond_11

    .line 482
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v9, :cond_c

    .line 483
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setPressed(Z)V

    .line 486
    :cond_c
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    if-nez v9, :cond_d

    .line 487
    new-instance v9, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V

    iput-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 490
    :cond_d
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 491
    .local v5, "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    iput v9, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 492
    invoke-virtual {v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 494
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 495
    :cond_e
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 496
    .restart local v2    # "handler":Landroid/os/Handler;
    if-eqz v2, :cond_f

    .line 497
    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v9, :cond_12

    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    :goto_3
    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    :cond_f
    iget-boolean v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v9, :cond_13

    .line 506
    const/4 v9, 0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 507
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/view/View;->setPressed(Z)V

    .line 508
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 509
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v9, :cond_10

    .line 510
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 512
    :cond_10
    new-instance v9, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;

    invoke-direct {v9, p0, v3, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 528
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 529
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v10

    int-to-long v10, v10

    .line 528
    invoke-virtual {p0, v9, v10, v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v5    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_11
    :goto_4
    const/4 v9, -0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto/16 :goto_1

    .line 497
    .restart local v2    # "handler":Landroid/os/Handler;
    .restart local v5    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_12
    iget-object v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    goto :goto_3

    .line 531
    :cond_13
    const/4 v9, -0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_4

    .line 533
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_14
    iget-boolean v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v9, :cond_11

    .line 534
    invoke-virtual {v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    goto :goto_4

    .line 542
    .end local v5    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_15
    const/4 v9, -0x1

    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 543
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    if-eqz v2, :cond_1

    .line 554
    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->playSoundEffect(I)V

    .line 555
    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    .line 562
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setFooter(Ljava/util/List;)V

    .line 1371
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 1372
    const/4 v0, 0x1

    .line 1376
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setHeader(Ljava/util/List;)V

    .line 1293
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 1294
    const/4 v0, 0x1

    .line 1298
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRealAdapter:Landroid/widget/ListAdapter;

    if-ne v0, p1, :cond_0

    .line 614
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    return-void

    .line 587
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 591
    :cond_1
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v0, :cond_2

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 595
    :cond_2
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRealAdapter:Landroid/widget/ListAdapter;

    .line 598
    instance-of v0, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v0, :cond_3

    move-object v3, p1

    .line 599
    check-cast v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 609
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    .local v3, "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    :goto_1
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 611
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 612
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V

    .line 613
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 600
    .end local v3    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    instance-of v0, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v0, :cond_4

    .line 602
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;

    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v3, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V

    .restart local v3    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    goto :goto_1

    .line 606
    .end local v3    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;

    invoke-direct {v3, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .restart local v3    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    goto :goto_1
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "useStickyHeaders"    # Z

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eq p1, v0, :cond_0

    .line 622
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 623
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 625
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 630
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    .line 632
    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    .line 641
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 645
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 646
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHorizontalSpacing:I

    .line 647
    return-void
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 257
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mRequestedNumColumns:I

    .line 258
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    .line 651
    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setLongClickable(Z)V

    .line 657
    :cond_0
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .line 658
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 667
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$5;

    invoke-direct {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$5;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 679
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 685
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 686
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 691
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 692
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 697
    return-void
.end method

.method public setStickyHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickyHeaderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 719
    return-void
.end method

.method public setStickyHeaderIsTranscluent(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 710
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value of alpha out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 714
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickyHeaderBackgroundAlpha:I

    .line 715
    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 1
    .param p1, "isTranscluent"    # Z

    .prologue
    .line 700
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 701
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 723
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 724
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    .line 725
    return-void
.end method
