.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ScrollControlLinearLayoutManager.java"


# static fields
.field private static final DEFAULT_MILLISECONDS_PER_INCH:F = 25.0f

.field private static final SMOOTH_SCROLLER_SPEED:I = 0x9b

.field private static final SMOOTH_SCROLLER_TIME:I = 0x12c


# instance fields
.field private mMinDistance:F

.field private mSmoothScrollerSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 23
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 23
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    .line 17
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    .line 17
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mMinDistance:F

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mMinDistance:F

    .line 44
    return-void
.end method

.method public static onItemClick(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 10
    .param p0, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "position"    # I

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 95
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 96
    .local v1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_7

    .line 97
    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 98
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 99
    .local v3, "lastVisibleItemPosition":I
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v4

    .line 100
    .local v4, "lastCompletelyVisibleItemPosition":I
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    .line 101
    .local v5, "firstVisibleItemPosition":I
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v6

    .line 102
    .local v6, "firstCompletelyVisibleItemPosition":I
    const/4 v7, -0x1

    .line 103
    .local v7, "finalPosition":I
    if-eq v3, p1, :cond_3

    if-ne v4, p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    if-eq v5, p1, :cond_1

    if-ne v6, p1, :cond_5

    .line 111
    :cond_1
    add-int/lit8 v8, p1, -0x1

    .line 112
    .local v8, "targetPosition":I
    if-ltz v8, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 113
    move v7, v8

    goto :goto_2

    .line 115
    :cond_2
    move v7, p1

    .end local v8    # "targetPosition":I
    goto :goto_2

    .line 104
    :cond_3
    :goto_0
    add-int/lit8 v8, p1, 0x1

    .line 105
    .restart local v8    # "targetPosition":I
    if-lez v8, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 106
    move v7, v8

    goto :goto_1

    .line 108
    :cond_4
    move v7, p1

    .line 110
    .end local v8    # "targetPosition":I
    :goto_1
    nop

    .line 118
    :cond_5
    :goto_2
    instance-of v8, v2, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    if-eqz v8, :cond_6

    .line 119
    move-object v8, v2

    check-cast v8, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    const/high16 v9, 0x431b0000    # 155.0f

    invoke-virtual {v8, v9}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->setSmoothScrollerSpeed(F)V

    .line 121
    :cond_6
    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 122
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 125
    .end local v2    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v3    # "lastVisibleItemPosition":I
    .end local v4    # "lastCompletelyVisibleItemPosition":I
    .end local v5    # "firstVisibleItemPosition":I
    .end local v6    # "firstCompletelyVisibleItemPosition":I
    .end local v7    # "finalPosition":I
    :cond_7
    return-void
.end method


# virtual methods
.method public setSmoothScrollerSpeed(F)V
    .locals 0
    .param p1, "milliSecondsPerInch"    # F

    .line 90
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->mSmoothScrollerSpeed:F

    .line 91
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 48
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager$1;-><init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;Landroid/content/Context;)V

    .line 85
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 87
    return-void
.end method
