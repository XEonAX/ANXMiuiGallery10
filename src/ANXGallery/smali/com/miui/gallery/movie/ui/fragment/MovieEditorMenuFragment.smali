.class public Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
.super Landroid/app/Fragment;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$ControllerPagerAdapter;
    }
.end annotation


# instance fields
.field private mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

.field private mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

.field private mContext:Landroid/content/Context;

.field private mCurrentTabPos:I

.field private mDeleteClicked:Z

.field private mDurationRadioGroup:Landroid/widget/RadioGroup;

.field private mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mIsShortVideo:Z

.field private mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

.field private mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

.field private mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

.field private mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

.field private mStoryMovieCardId:J

.field private mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

.field private mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 215
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$4;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    .line 319
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    .line 613
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mCurrentTabPos:I

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->onTabSelect(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mStoryMovieCardId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshTemplate(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshAudio(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    return-object v0
.end method

.method private checkChangeLongVideo()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;I)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p2, "position"    # I

    .prologue
    .line 593
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResourceWithCheck(Landroid/app/Activity;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V

    .line 611
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    .line 132
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/TemplateFactory;->getLocalTemplateEntities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->setList(Ljava/util/List;)V

    .line 135
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 136
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->getAllLocalAudios()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setList(Ljava/util/List;)V

    .line 138
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    .line 139
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 140
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setOnActionListener(Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;)V

    .line 148
    const v1, 0x7f1201b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$ControllerPagerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$ControllerPagerAdapter;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 150
    const v1, 0x7f1201b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 151
    .local v0, "tabRadioGroup":Landroid/widget/RadioGroup;
    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 166
    const v1, 0x7f1201bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    .line 167
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1201bd

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 207
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->onTabSelect(I)V

    .line 208
    const v1, 0x7f1201bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v1, 0x7f1201bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->loadTemplate()V

    .line 212
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->loadAudio()V

    .line 213
    return-void

    .line 167
    :cond_0
    const v1, 0x7f1201be

    goto :goto_0
.end method

.method private loadAudio()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/miui/gallery/movie/net/AudioResourceRequest;

    invoke-direct {v0}, Lcom/miui/gallery/movie/net/AudioResourceRequest;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    .line 292
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$6;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/net/AudioResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 307
    return-void
.end method

.method private loadTemplate()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    invoke-direct {v0}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    .line 256
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$5;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 271
    return-void
.end method

.method private onTabSelect(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 452
    iput p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mCurrentTabPos:I

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    aget-object v3, v1, v0

    if-ne p1, v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setVisibility(I)V

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 459
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 460
    return-void
.end method

.method private refreshAudio(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/AudioResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/AudioResource;>;"
    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->getAllLocalAudios()Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, "audioResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/AudioResource;>;"
    if-eqz p1, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setList(Ljava/util/List;)V

    .line 316
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void
.end method

.method private refreshEditAdapter()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setList(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    .line 252
    return-void
.end method

.method private refreshTemplate(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/TemplateResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/TemplateResource;>;"
    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/TemplateFactory;->getLocalTemplateEntities()Ljava/util/List;

    move-result-object v2

    .line 275
    .local v2, "templateResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/TemplateResource;>;"
    if-eqz p1, :cond_0

    .line 276
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->setList(Ljava/util/List;)V

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "selectTemplate":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/TemplateResource;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/TemplateResource;->pathKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v4, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/TemplateResource;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/TemplateResource;->pathKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    move v1, v0

    .line 283
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/TemplateResource;

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v4, v4, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/gallery/movie/entity/TemplateResource;->pathKey:Ljava/lang/String;

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetMovieShareData()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->resetShareData()V

    .line 653
    :cond_0
    return-void
.end method


# virtual methods
.method public clearEditorAdapterSelected()V
    .locals 2

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 444
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 356
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 357
    const/4 v6, 0x7

    if-ne p1, v6, :cond_2

    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 358
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, p3}, Lcom/miui/gallery/movie/utils/MovieUtils;->getImageFromClipData(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 359
    .local v2, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->checkChangeLongVideo()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/entity/MovieInfo;->discardToLongVideo()Z

    .line 362
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    .line 363
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    const v7, 0x7f1201be

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 364
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e02a9

    invoke-static {v6, v7}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 365
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 366
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 370
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setList(Ljava/util/List;)V

    .line 371
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyDataSetChanged()V

    .line 372
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 373
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    .line 420
    .end local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :cond_0
    :goto_1
    return-void

    .line 368
    .restart local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6, v2}, Lcom/miui/gallery/movie/core/MovieManager;->addImage(Ljava/util/List;)V

    goto :goto_0

    .line 376
    .end local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :cond_2
    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_6

    const/4 v6, -0x1

    if-ne p2, v6, :cond_6

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 378
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    .line 379
    .local v4, "soundFilePath":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/movie/utils/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 388
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 389
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6, v4}, Lcom/miui/gallery/movie/core/MovieManager;->isSupportVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 390
    new-instance v0, Lcom/miui/gallery/movie/entity/AudioResource;

    invoke-direct {v0, v4}, Lcom/miui/gallery/movie/entity/AudioResource;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "audioResource":Lcom/miui/gallery/movie/entity/AudioResource;
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v0, Lcom/miui/gallery/movie/entity/AudioResource;->nameKey:Ljava/lang/String;

    iput-object v7, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 392
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6, v0}, Lcom/miui/gallery/movie/core/MovieManager;->setAudio(Lcom/miui/gallery/movie/entity/AudioResource;)V

    .line 393
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    invoke-virtual {v7}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setSelectedItemPosition(I)V

    .line 398
    .end local v0    # "audioResource":Lcom/miui/gallery/movie/entity/AudioResource;
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    goto :goto_1

    .line 383
    :cond_4
    const/4 v5, 0x0

    .line 384
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 385
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 386
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/miui/gallery/movie/utils/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 395
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e054b

    invoke-static {v6, v7}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_3

    .line 399
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v4    # "soundFilePath":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 400
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, p3}, Lcom/miui/gallery/movie/utils/MovieUtils;->getImageFromClipData(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 401
    .restart local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 402
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_8

    .line 404
    iget-boolean v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    if-eqz v6, :cond_7

    .line 405
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0e02a9

    invoke-static {v6, v7}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 407
    :cond_7
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/entity/MovieInfo;->discardToLongVideo()Z

    .line 408
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    const v7, 0x7f1201be

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 409
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 414
    :goto_4
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 415
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 416
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    .line 417
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v6}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    .line 418
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    goto/16 :goto_1

    .line 411
    :cond_8
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/entity/MovieInfo;->discardToShortVideo()Z

    .line 412
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    goto :goto_4
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 123
    instance-of v0, p1, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieInfo()Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    .line 128
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "card_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mStoryMovieCardId:J

    .line 111
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
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

    .line 669
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 670
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 671
    .local v1, "animalOffset":I
    if-eqz p2, :cond_0

    .line 672
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    int-to-float v5, v1

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 673
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 674
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 675
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 676
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 677
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 678
    new-instance v3, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;

    invoke-direct {v3, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 690
    :goto_0
    return-object v0

    .line 685
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    aput v8, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 686
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 687
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090028

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
    .line 115
    const v1, 0x7f0400b2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->initView(Landroid/view/View;)V

    .line 117
    return-object v0
.end method

.method public onDeleteClick()V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 425
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02aa

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getSelectedItemPosition()I

    move-result v0

    .line 429
    .local v0, "deletePos":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/core/MovieManager;->removeImageAtIndex(I)V

    .line 432
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 433
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyDataSetChanged()V

    .line 434
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 657
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 658
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;->cancel()V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/net/AudioResourceRequest;->cancel()V

    .line 664
    :cond_1
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->cancelAll()V

    .line 665
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 236
    if-nez p1, :cond_1

    .line 237
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eq v0, v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 239
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1201bd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    .line 246
    :cond_1
    return-void

    .line 239
    :cond_2
    const v0, 0x7f1201be

    goto :goto_0
.end method

.method public onResumeClick()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 449
    return-void
.end method
