.class public Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
.super Landroid/widget/RelativeLayout;
.source "ExtendedRecyclerView.java"

# interfaces
.implements Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;


# instance fields
.field protected mClipToPadding:Z

.field protected mEmpty:Landroid/view/ViewStub;

.field protected mEmptyId:I

.field protected mEmptyView:Landroid/view/View;

.field protected mMainContentId:I

.field protected mManualInflateEmptyView:Z

.field protected mPadding:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mProgress:Landroid/view/ViewStub;

.field protected mProgressId:I

.field protected mProgressView:Landroid/view/View;

.field protected mRecycler:Landroid/support/v7/widget/RecyclerView;

.field protected mScrollbarStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initView()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initView()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initView()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showRecycler()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showEmpty()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mMainContentId:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f120014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    .line 81
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "layout_main_content must contains progress stub!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgressId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgressView:Landroid/view/View;

    .line 87
    const v1, 0x7f120002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    if-nez v1, :cond_2

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "layout_main_content must contains empty stub!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_2
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mManualInflateEmptyView:Z

    if-nez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    .line 96
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initRecyclerView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 137
    if-eqz p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p3}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 143
    :goto_0
    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;-><init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 184
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showRecycler()V

    .line 189
    :goto_1
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showEmpty()V

    goto :goto_1
.end method

.method private setEmptyVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 228
    :cond_0
    return-void
.end method

.method private showEmpty()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setEmptyVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 222
    return-void
.end method

.method private showRecycler()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 214
    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setEmptyVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 216
    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "itemDecoration"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 247
    return-void
.end method

.method public canScrollDown()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getRecycler()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public inflateEmptyView()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    .line 235
    :cond_0
    return-void
.end method

.method protected initAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/R$styleable;->ExtendedRecyclerView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mClipToPadding:Z

    .line 59
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mManualInflateEmptyView:Z

    .line 60
    const/4 v1, 0x5

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    .line 61
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingTop:I

    .line 62
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingBottom:I

    .line 63
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingLeft:I

    .line 64
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingRight:I

    .line 65
    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    .line 67
    const/4 v1, 0x1

    const v2, 0x7f04009b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgressId:I

    .line 68
    const/4 v1, 0x2

    const v2, 0x7f04006c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mMainContentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method protected initRecyclerView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const v1, 0x7f120015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "recyclerView":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 103
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .end local v0    # "recyclerView":Landroid/view/View;
    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 107
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mClipToPadding:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 109
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 115
    :goto_0
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/high16 v2, 0x1000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/high16 v2, 0x3000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollBarStyle(I)V

    .line 121
    :cond_1
    return-void

    .line 105
    .restart local v0    # "recyclerView":Landroid/view/View;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ExtendedRecyclerView only works with a RecyclerView!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0    # "recyclerView":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingLeft:I

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingTop:I

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingRight:I

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 129
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 259
    return-void
.end method
