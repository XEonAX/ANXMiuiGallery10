.class public Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
.super Landroid/app/Fragment;
.source "MoviePreviewMenuFragment.java"


# instance fields
.field private mCurrentTimeView:Lcom/miui/gallery/movie/ui/view/StrokeTextView;

.field private mEndPadding:I

.field private mIsSeekTimeline:Z

.field private mMenuBottomView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

.field private mMenuBottomViewClickListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

.field private mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

.field private mMenuTitleClickListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

.field private mMenuTitleView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

.field private mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

.field private mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPixelPerMicroSeconds:D

.field private mSequenceWidth:I

.field private mStartPadding:I

.field private mThumbnailSequenceDescs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

.field private mWhiteView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mIsSeekTimeline:Z

    .line 174
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;-><init>(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleClickListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    .line 208
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$3;-><init>(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomViewClickListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    .line 236
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;-><init>(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mIsSeekTimeline:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)D
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mPixelPerMicroSeconds:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mWhiteView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mEndPadding:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->updateMenuTitleView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->initListener()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->removeOnGlobalLayoutListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->setDuration(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->updateMultiThumbnailView()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->updateMenuBottomView()V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mStartPadding:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    return-object v0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$1;-><init>(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->setOnScrollChangeListenser(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$OnScrollChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomViewClickListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->setIMenuBottomViewClickListener(Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleClickListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->setListener(Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;)V

    .line 108
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    const v0, 0x7f1201c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

    .line 62
    const v0, 0x7f1201c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

    .line 63
    const v0, 0x7f1201c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    .line 64
    const v0, 0x7f1201c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mCurrentTimeView:Lcom/miui/gallery/movie/ui/view/StrokeTextView;

    .line 65
    const v0, 0x7f1201c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mWhiteView:Landroid/view/View;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    return-void
.end method

.method private removeOnGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    return-void
.end method

.method private setDuration(I)V
    .locals 6
    .param p1, "second"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mCurrentTimeView:Lcom/miui/gallery/movie/ui/view/StrokeTextView;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "00:%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit16 v5, p1, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mCurrentTimeView:Lcom/miui/gallery/movie/ui/view/StrokeTextView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v0    # "time":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateMenuBottomView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->getState()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->updatePlayBtnState(Z)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMenuTitleView()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->updateTitleViewState(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method private updateMultiThumbnailView()V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->getThumbnailImages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceDescs:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceDescs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->setThumbnailSequenceDescArray(Ljava/util/ArrayList;)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->getPixelPerMicrosecond()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mPixelPerMicroSeconds:D

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    iget v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mStartPadding:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->setStartPadding(I)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    iget v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mEndPadding:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->setEndPadding(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v1

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mPixelPerMicroSeconds:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->getSequenceWidth(JD)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mSequenceWidth:I

    .line 80
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 139
    instance-of v0, p1, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieInfo()Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    .line 144
    :cond_0
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 9
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 158
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 159
    .local v1, "sAnimOffset":I
    if-eqz p2, :cond_0

    .line 160
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    int-to-float v5, v1

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 161
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 162
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 164
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    :goto_0
    return-object v0

    .line 166
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    aput v8, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 167
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 168
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f0400b3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->initView(Landroid/view/View;)V

    .line 57
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuTitleView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->removeListener()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mMenuBottomView:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView;->removeListener()V

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->removeOnGlobalLayoutListener()V

    .line 264
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 149
    if-nez p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->updateMultiThumbnailView()V

    .line 151
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->updateMenuTitleView()V

    .line 153
    :cond_0
    return-void
.end method

.method public onPlaybackEOF()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iput-boolean v2, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mIsSeekTimeline:Z

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->fullScroll(I)Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mIsSeekTimeline:Z

    .line 126
    invoke-direct {p0, v2}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->setDuration(I)V

    .line 127
    return-void
.end method

.method public onProgressChange(FI)V
    .locals 3
    .param p1, "percent"    # F
    .param p2, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 111
    iput-boolean v2, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mIsSeekTimeline:Z

    .line 112
    iget v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mSequenceWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 113
    .local v0, "dx":I
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mThumbnailSequenceView:Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->scrollTo(II)V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->mIsSeekTimeline:Z

    .line 115
    invoke-direct {p0, p2}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->setDuration(I)V

    .line 116
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->updateMenuBottomView()V

    .line 120
    return-void
.end method
