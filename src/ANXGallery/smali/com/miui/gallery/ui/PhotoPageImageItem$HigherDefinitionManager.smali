.class Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HigherDefinitionManager"
.end annotation


# instance fields
.field private mCurActionBarHeight:I

.field private mDefaultMarginTop:I

.field private mDefinitionStateView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHasHdViewDisplayed:Z

.field private mHideDefinitionRunnable:Ljava/lang/Runnable;

.field private mIsEverEnterHd:Z

.field private mIsHdPhoto:Z

.field private mOnScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

.field private mParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 1

    .prologue
    .line 731
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHandler:Landroid/os/Handler;

    .line 826
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHideDefinitionRunnable:Ljava/lang/Runnable;

    .line 894
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mOnScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->hideDefinitionText()V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->changeToMidScale()V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->exitHigherDefinition()V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->changeToHigherDefinition()V

    return-void
.end method

.method private changeToHigherDefinition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 813
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHasHdViewDisplayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iput-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHasHdViewDisplayed:Z

    .line 816
    iput-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsEverEnterHd:Z

    .line 817
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->showDefinitionText()V

    .line 819
    :cond_0
    return-void
.end method

.method private changeToMidScale()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    const v1, 0x7f0e015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 809
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->showDefinitionText()V

    goto :goto_0
.end method

.method private exitHigherDefinition()V
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHasHdViewDisplayed:Z

    .line 823
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->hideDefinitionText()V

    .line 824
    return-void
.end method

.method private hideDefinitionText()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    :cond_0
    return-void
.end method

.method private initHdTextView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 768
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400dc

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 770
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const v1, 0x7f12020f

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    .line 771
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 773
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefaultMarginTop:I

    .line 774
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefaultMarginTop:I

    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mCurActionBarHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 775
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mParams:Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 776
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 778
    :cond_0
    return-void
.end method

.method private showDefinitionText()V
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHideDefinitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 837
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHideDefinitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 839
    :cond_0
    return-void
.end method

.method private translateByActionBarVisibility(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 848
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 880
    :goto_0
    return-void

    .line 851
    :cond_0
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefaultMarginTop:I

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mCurActionBarHeight:I

    add-int v1, v2, v3

    .line 852
    .local v1, "marginTop":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 853
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 854
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 855
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 856
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 857
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 875
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 877
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 878
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 1
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 883
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    :goto_0
    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mCurActionBarHeight:I

    .line 884
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    if-nez v0, :cond_1

    .line 892
    :goto_1
    return-void

    .line 883
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->translateByActionBarVisibility(I)V

    goto :goto_1

    .line 890
    :cond_2
    neg-int v0, p2

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->translateByActionBarVisibility(I)V

    goto :goto_1
.end method

.method public onSelected()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v3, :cond_0

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, "width":I
    const/4 v0, 0x0

    .line 750
    .local v0, "height":I
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    .line 758
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    invoke-virtual {v2, v1, v0, v3}, Luk/co/senab/photoview/PhotoView;->setHDState(IIZ)V

    .line 759
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    if-eqz v2, :cond_2

    .line 760
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->initHdTextView()V

    .line 761
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mOnScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-virtual {v2, v3}, Luk/co/senab/photoview/PhotoView;->setOnScaleStageChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;)V

    .line 765
    :goto_1
    return-void

    .line 752
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v1

    .line 753
    .restart local v1    # "width":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v0

    .line 754
    .restart local v0    # "height":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 755
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x1770

    if-lt v3, v4, :cond_1

    .line 756
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0xfa0

    if-lt v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    goto :goto_0

    .line 763
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Luk/co/senab/photoview/PhotoView;->setOnScaleStageChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;)V

    goto :goto_1
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->release()V

    .line 782
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 787
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mDefinitionStateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHideDefinitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    if-eqz v0, :cond_1

    .line 791
    const-string v0, "photo"

    const-string v1, "photo_hd_satisfy_count"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsEverEnterHd:Z

    if-eqz v0, :cond_1

    .line 794
    const-string v0, "photo"

    const-string v1, "photo_hd_enter_count"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_1
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsHdPhoto:Z

    .line 799
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mHasHdViewDisplayed:Z

    .line 800
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->mIsEverEnterHd:Z

    .line 801
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setOnScaleStageChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;)V

    .line 802
    return-void
.end method
