.class public Lcom/miui/gallery/movie/ui/activity/MovieActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "MovieActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;


# instance fields
.field private isEditorPreview:Z

.field private mActivity:Landroid/app/Activity;

.field private mAudioFocusHelper:Lcom/miui/gallery/movie/utils/AudioFocusHelper;

.field private mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

.field private mEditorMenuView:Landroid/view/View;

.field private mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

.field private mMenuActivityListener:Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

.field private mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

.field private mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

.field private mMovieSavingFragment:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

.field private mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

.field private mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

.field private mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

.field private mPreviewMenuView:Landroid/view/View;

.field private mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;

.field private mShowMode:I

.field private mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

.field private mStoryMovieCardId:J

.field private mStorySha1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    .line 147
    new-instance v0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$1;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieShareData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setSystemBarVisible(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Lcom/miui/gallery/movie/entity/MovieShareData;)Lcom/miui/gallery/movie/entity/MovieShareData;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;
    .param p1, "x1"    # Lcom/miui/gallery/movie/entity/MovieShareData;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/entity/MovieInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieSavingFragment:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;)Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;
    .param p1, "x1"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieSavingFragment:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/movie/ui/activity/MovieActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->isEditorPreview:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/view/MovieControllerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMenuActivityListener:Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 135
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 137
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 138
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f0400b7

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 139
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "customView":Landroid/view/View;
    const v3, 0x7f1201ce

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f1201cf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, "mShareView":Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 145
    return-void
.end method

.method private doEditorPreviewChangeAnimal(Landroid/view/View;Z)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 567
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 568
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 569
    .local v1, "height":I
    if-eqz p2, :cond_0

    .line 570
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    int-to-float v5, v1

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 571
    .local v2, "translate":Landroid/animation/Animator;
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 572
    new-instance v3, Lcom/miui/gallery/movie/ui/activity/MovieActivity$11;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$11;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    :goto_0
    new-instance v3, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 593
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 594
    return-void

    .line 579
    .end local v2    # "translate":Landroid/animation/Animator;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v8, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 580
    .restart local v2    # "translate":Landroid/animation/Animator;
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 581
    new-instance v3, Lcom/miui/gallery/movie/ui/activity/MovieActivity$12;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$12;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupStartValues()V

    goto :goto_0
.end method

.method private doFullScreenChangeAnimal(Landroid/view/View;Z)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enter"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 537
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 538
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 539
    .local v1, "height":I
    if-eqz p2, :cond_0

    .line 540
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    int-to-float v5, v1

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 541
    .local v2, "translate":Landroid/animation/Animator;
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 542
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 543
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 544
    new-instance v3, Lcom/miui/gallery/movie/ui/activity/MovieActivity$9;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$9;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 564
    return-void

    .line 551
    .end local v2    # "translate":Landroid/animation/Animator;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v8, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 552
    .restart local v2    # "translate":Landroid/animation/Animator;
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 553
    new-instance v3, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 555
    new-instance v3, Lcom/miui/gallery/movie/ui/activity/MovieActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$10;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 561
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupStartValues()V

    goto :goto_0
.end method

.method private doShare(Ljava/lang/String;)V
    .locals 8
    .param p1, "outFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 725
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    const-string v5, "MovieActivity"

    const-string v6, "share outFilePath is null"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 730
    .local v4, "shareUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v3, "shareIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string/jumbo v5, "video/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 734
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 735
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    const/high16 v5, 0x8080000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 738
    .local v1, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 739
    const-string v5, "MovieActivity"

    const-string v6, "doShare: resInfoList is invalid."

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 743
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 744
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v0, v4, v7}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 746
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0e02b5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 747
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private initMode()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    .line 349
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    if-ne v0, v2, :cond_2

    .line 350
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .line 351
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1201b2

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 363
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setForMode()V

    .line 364
    return-void

    :cond_1
    move v0, v2

    .line 347
    goto :goto_0

    .line 355
    :cond_2
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-direct {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .line 356
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f1201b1

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .line 357
    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 359
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private initMovieViewLayout()V
    .locals 10

    .prologue
    const v9, 0x7f0b01e3

    const/16 v8, 0xe

    .line 313
    invoke-static {p0}, Lcom/miui/gallery/util/ScreenUtils;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .line 314
    .local v0, "fullScreenHeight":I
    invoke-static {p0}, Lcom/android/internal/WindowCompat;->getTopNotchHeight(Landroid/app/Activity;)I

    move-result v3

    .line 315
    .local v3, "notchHeight":I
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v0

    div-float v4, v5, v6

    .line 316
    .local v4, "ration":F
    invoke-static {v4}, Lcom/miui/gallery/movie/MovieConfig;->setMovieRatio(F)V

    .line 318
    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 319
    .local v1, "height":I
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    .line 320
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 321
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 322
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 323
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 325
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    .line 326
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 327
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 328
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 329
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    iget v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 332
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v5}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 333
    .local v2, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 334
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 335
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 336
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :goto_0
    return-void

    .line 338
    .end local v2    # "lps":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v5}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 339
    .restart local v2    # "lps":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 340
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 341
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 342
    iget-object v5, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initStoryAlbumData()V
    .locals 8

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 425
    .local v3, "storyAlbumIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v4, v4, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 439
    :cond_0
    return-void

    .line 428
    :cond_1
    const-string v4, "card_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStoryMovieCardId:J

    .line 429
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    .line 432
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 433
    .local v0, "clipData":Landroid/content/ClipData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 436
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 238
    const v0, 0x7f1201b0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setMovieInfo(Lcom/miui/gallery/movie/entity/MovieInfo;)V

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v1, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$2;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    .line 257
    const v0, 0x7f1201b1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuView:Landroid/view/View;

    .line 258
    const v0, 0x7f1201b2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuView:Landroid/view/View;

    .line 259
    const v0, 0x7f1201af

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mRootView:Landroid/view/ViewGroup;

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v1, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$3;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setIvPlayListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v1, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setProgressChangeListener(Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;)V

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v1, Lcom/miui/gallery/movie/ui/activity/MovieActivity$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$5;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDeleteVisibleListener(Lcom/miui/gallery/movie/ui/view/MovieControllerView$DeleteIconVisibleListener;)V

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v1, Lcom/miui/gallery/movie/ui/activity/MovieActivity$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$6;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setPreviewBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    return-void
.end method

.method private parseIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/miui/gallery/movie/utils/MovieUtils;->getImageFromClipData(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 408
    .local v0, "imagePaths":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 409
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0e02aa

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 410
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->finish()V

    .line 420
    :goto_0
    return v2

    .line 413
    :cond_1
    new-instance v3, Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-direct {v3, v0}, Lcom/miui/gallery/movie/entity/MovieInfo;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    .line 414
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "movie_extra_preview_mode"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    .line 415
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "card_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->title:Ljava/lang/String;

    .line 416
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "card_sub_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->subTitle:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "movie_extra_template"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 418
    .local v1, "templateId":I
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/factory/MovieFactory;->getTemplateNameById(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v3, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    invoke-static {v2, v3}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statEnter(IZ)V

    .line 420
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setForMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setPlayProgressVisible(Z)V

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setShowPlayBtnMode(Z)V

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setTouchAvailable(Z)V

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v1, Lcom/miui/gallery/movie/ui/activity/MovieActivity$7;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$7;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDeleteClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPreviewBtn(Z)V

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setTouchAvailable(Z)V

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setPlayProgressVisible(Z)V

    .line 393
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setShowPlayBtnMode(Z)V

    .line 394
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPreviewBtn(Z)V

    goto :goto_0
.end method

.method private setSystemBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->showSystemBars(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->hideSystemBars(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public static startPicker(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "pick-upper-bound"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "pick-lower-bound"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "pick_intent"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string v1, "pick_close_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public cancelExport()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->cancelExport()V

    .line 753
    return-void
.end method

.method public changeEditor()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 453
    iget v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    if-ne v3, v8, :cond_0

    .line 454
    const/4 v3, 0x2

    iput v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    .line 455
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .line 456
    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .line 457
    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 459
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    new-instance v4, Lcom/miui/gallery/movie/ui/activity/MovieActivity$8;

    invoke-direct {v4, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$8;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    .line 464
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    .line 459
    invoke-virtual {v3, v4, v6, v7}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setForMode()V

    .line 483
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 484
    .local v1, "changeBounds":Landroid/transition/ChangeBounds;
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 485
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/transition/ChangeBounds;->setStartDelay(J)Landroid/transition/Transition;

    .line 486
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 487
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 488
    iget v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    if-ne v3, v8, :cond_2

    .line 489
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    :goto_1
    return-void

    .line 466
    .end local v1    # "changeBounds":Landroid/transition/ChangeBounds;
    :cond_0
    iput v8, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    .line 467
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 468
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 469
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    if-nez v3, :cond_1

    .line 470
    new-instance v3, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {v3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .line 471
    const v3, 0x7f1201b2

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "card_id"

    iget-wide v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStoryMovieCardId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 474
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 479
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 480
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setSystemBarVisible(Z)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2

    .line 491
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .restart local v1    # "changeBounds":Landroid/transition/ChangeBounds;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public changeEditorPreview()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 499
    iget-boolean v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->isEditorPreview:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->isEditorPreview:Z

    .line 501
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 502
    .local v0, "changeBounds":Landroid/transition/ChangeBounds;
    new-instance v1, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 503
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090029

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 504
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 506
    iget-boolean v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->isEditorPreview:Z

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuView:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->doEditorPreviewChangeAnimal(Landroid/view/View;Z)V

    .line 508
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showExtraContent(Z)V

    .line 509
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLoopPlay(Z)V

    .line 510
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setSeekDisable(Z)V

    .line 511
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setTouchAvailable(Z)V

    .line 513
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 523
    :goto_1
    return-void

    .end local v0    # "changeBounds":Landroid/transition/ChangeBounds;
    :cond_0
    move v1, v3

    .line 499
    goto :goto_0

    .line 515
    .restart local v0    # "changeBounds":Landroid/transition/ChangeBounds;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMenuView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->doEditorPreviewChangeAnimal(Landroid/view/View;Z)V

    .line 516
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showExtraContent(Z)V

    .line 517
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLoopPlay(Z)V

    .line 518
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setSeekDisable(Z)V

    .line 519
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mEditorMovieLps:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setTouchAvailable(Z)V

    .line 521
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/core/MovieManager;->pause()V

    goto :goto_1
.end method

.method public changeFullScreen(Z)V
    .locals 3
    .param p1, "fullScreen"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 526
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    .line 528
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setSystemBarVisible(Z)V

    .line 529
    if-eqz p1, :cond_2

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->doFullScreenChangeAnimal(Landroid/view/View;Z)V

    .line 534
    :goto_2
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 528
    goto :goto_1

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->doFullScreenChangeAnimal(Landroid/view/View;Z)V

    goto :goto_2
.end method

.method public export(Z)V
    .locals 6
    .param p1, "isPreviewPager"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieSavingFragment:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-direct {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieSavingFragment:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieSavingFragment:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    new-instance v5, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;

    invoke-direct {v5, p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity$13;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->show(Landroid/app/Activity;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/entity/MovieInfo;ZLcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V

    .line 673
    return-void
.end method

.method public getMovieInfo()Lcom/miui/gallery/movie/entity/MovieInfo;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    return-object v0
.end method

.method public getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method public getStoryMovieSha1()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleShareEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "outFilePath"    # Ljava/lang/String;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/movie/entity/MovieShareData;->setVideoPath(Ljava/lang/String;Z)V

    .line 721
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->doShare(Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 401
    instance-of v0, p1, Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    if-eqz v0, :cond_0

    .line 402
    check-cast p1, Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMenuActivityListener:Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    .line 404
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onAttachedToWindow()V

    .line 192
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initMovieViewLayout()V

    .line 193
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setSystemBarVisible(Z)V

    .line 194
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->returnClick()V

    .line 614
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 180
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 182
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->finish()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7f1201ce
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setTheme(I)V

    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->parseIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iput-object p0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mActivity:Landroid/app/Activity;

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SystemUiUtil;->setLayoutFullScreen(Landroid/view/View;Z)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 124
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->configureActionBar()V

    .line 125
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initStoryAlbumData()V

    .line 126
    const v0, 0x7f0400b0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setContentView(I)V

    .line 127
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initView()V

    .line 128
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initMode()V

    .line 130
    new-instance v0, Lcom/miui/gallery/movie/utils/AudioFocusHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/utils/AudioFocusHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mAudioFocusHelper:Lcom/miui/gallery/movie/utils/AudioFocusHelper;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 677
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    .line 679
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->destroy()V

    .line 682
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/activity/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initMovieViewLayout()V

    .line 203
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 220
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mAudioFocusHelper:Lcom/miui/gallery/movie/utils/AudioFocusHelper;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mAudioFocusHelper:Lcom/miui/gallery/movie/utils/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->abandonAudioFocus()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->onPause()V

    .line 227
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->onResume()V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 211
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mAudioFocusHelper:Lcom/miui/gallery/movie/utils/AudioFocusHelper;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mAudioFocusHelper:Lcom/miui/gallery/movie/utils/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/utils/AudioFocusHelper;->requestAudioFocus()V

    .line 215
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setSystemBarVisible(Z)V

    .line 235
    :cond_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetShareData()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/entity/MovieShareData;->reset(Z)V

    .line 714
    :cond_0
    return-void
.end method

.method public returnClick()V
    .locals 2

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->isEditorPreview:Z

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeEditorPreview()V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mShowMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v0, :cond_2

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->setShowDeleteMode(Z)V

    .line 602
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeEditor()V

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMenuActivityListener:Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMenuActivityListener:Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;->clearEditorAdapterSelected()V

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->finish()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 647
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/movie/core/MovieManager;->seek(I)V

    .line 648
    int-to-float v1, p1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 649
    .local v0, "percent":F
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, p1, v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setCurrentPlayTime(IF)V

    .line 650
    return-void
.end method

.method public seekToIndex(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 638
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/movie/core/MovieManager;->seekToIndex(I)I

    move-result v0

    .line 639
    .local v0, "currentTime":I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v3}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 640
    .local v1, "percent":F
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v2, v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setCurrentPlayTime(IF)V

    .line 641
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mPreviewMenuFragment:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->onProgressChange(FI)V

    .line 644
    :cond_0
    return-void
.end method

.method public setDeleteVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 627
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setShowDeleteMode(Z)V

    .line 628
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDeleteVisible(Z)V

    .line 629
    return-void
.end method

.method public setShowDeleteMode(Z)V
    .locals 1
    .param p1, "deleteMode"    # Z

    .prologue
    .line 633
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setShowDeleteMode(Z)V

    .line 634
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieView:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showLoadingView(Z)V

    .line 623
    return-void
.end method

.method public updateShareData(Z)V
    .locals 1
    .param p1, "isShortVideoTitle"    # Z

    .prologue
    .line 704
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieShareData:Lcom/miui/gallery/movie/entity/MovieShareData;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/entity/MovieShareData;->setShortVideo(Z)V

    .line 707
    :cond_0
    return-void
.end method

.method public updateStorySha1Data()V
    .locals 4

    .prologue
    .line 686
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 687
    const-string v2, "MovieActivity"

    const-string v3, "mStorySha1List is null. "

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    return-void

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v2, v2, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v2, v2, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/movie/entity/ImageEntity;

    iget-object v1, v2, Lcom/miui/gallery/movie/entity/ImageEntity;->sha1:Ljava/lang/String;

    .line 693
    .local v1, "sha1":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->mStorySha1List:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
