.class Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoMaskManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;,
        Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;
    }
.end annotation


# instance fields
.field private final OUT_OF_VIEWPORT_SLOP:I

.field private mActionBarHeight:I

.field private mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

.field private mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

.field private mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

.field private mSplitBarHeight:I

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 850
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->OUT_OF_VIEWPORT_SLOP:I

    .line 847
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mActionBarHeight:I

    .line 848
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mSplitBarHeight:I

    .line 851
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageMaskView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    .line 852
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setHost(Lcom/miui/gallery/app/BottomMenuFragment;)V

    .line 853
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;)Lcom/miui/gallery/ui/PhotoPageMaskView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    .prologue
    .line 841
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    return-object v0
.end method

.method private removeRefreshDividerRunnable()V
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    if-eqz v0, :cond_0

    .line 929
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    .line 932
    :cond_0
    return-void
.end method

.method private removeRefreshMaskRunnable()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    if-eqz v0, :cond_0

    .line 936
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    .line 939
    :cond_0
    return-void
.end method


# virtual methods
.method public getSplitBarHeight()I
    .locals 2

    .prologue
    .line 863
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mSplitBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getMenuCollapsedHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mSplitBarHeight:I

    .line 866
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mSplitBarHeight:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->getDefaultSplitActionBarHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 867
    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 866
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mSplitBarHeight:I

    goto :goto_0
.end method

.method public getTopBarHeight()I
    .locals 2

    .prologue
    .line 856
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mActionBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$900(Lcom/miui/gallery/ui/PhotoPageFragment;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mActionBarHeight:I

    .line 859
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mActionBarHeight:I

    return v0
.end method

.method public hideMaskImmediately()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 917
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarDividerVisible(Z)Z

    .line 918
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setSplitBarDividerVisible(Z)Z

    .line 919
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarMaskVisible(ZZ)Z

    .line 920
    return-void
.end method

.method public refreshMask(Z)V
    .locals 14
    .param p1, "actionBarAnimating"    # Z

    .prologue
    .line 871
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurItemDisplayRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 872
    .local v7, "rect":Landroid/graphics/RectF;
    if-eqz v7, :cond_6

    iget v10, v7, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    add-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->getTopBarHeight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    const/4 v5, 0x1

    .line 873
    .local v5, "outOfTopBar":Z
    :goto_0
    if-eqz v7, :cond_7

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    const/4 v11, 0x0

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v11, v11, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v11}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->getSplitBarHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 874
    .local v4, "outOfBottomBar":Z
    :goto_1
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v10}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    .line 876
    .local v0, "isActionBarShow":Z
    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    const/4 v9, 0x1

    .line 877
    .local v9, "showTopDivider":Z
    :goto_2
    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    .line 878
    .local v8, "showBottomDivider":Z
    :goto_3
    const/4 v1, 0x0

    .line 879
    .local v1, "isDividerPendingShow":Z
    if-eqz v0, :cond_2

    if-nez v9, :cond_0

    if-eqz v8, :cond_2

    .line 880
    :cond_0
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    iget-boolean v10, v10, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->isShowTopDivider:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    iget-boolean v10, v10, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->isShowBottomDivider:Z

    if-eqz v10, :cond_a

    .line 881
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    invoke-virtual {v10, v11}, Lcom/android/internal/CompatHandler;->hasCallbacksCompat(Ljava/lang/Runnable;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v1, 0x1

    .line 883
    :cond_2
    :goto_4
    if-nez v1, :cond_3

    .line 884
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->removeRefreshDividerRunnable()V

    .line 885
    new-instance v10, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    invoke-direct {v10, p0, v9, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;ZZ)V

    iput-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    .line 886
    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 887
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v12}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090033

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    :cond_3
    :goto_5
    if-eqz v7, :cond_4

    if-nez v5, :cond_4

    if-eqz v4, :cond_c

    :cond_4
    const/4 v6, 0x1

    .line 894
    .local v6, "outOfViewPort":Z
    :goto_6
    if-eqz p1, :cond_d

    if-nez v6, :cond_5

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-boolean v10, v10, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting:Z

    if-eqz v10, :cond_d

    :cond_5
    const/4 v2, 0x1

    .line 895
    .local v2, "isMaskAnim":Z
    :goto_7
    if-eqz v0, :cond_f

    if-nez v6, :cond_f

    .line 896
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    iget-boolean v10, v10, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->isShowMask:Z

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    invoke-virtual {v10, v11}, Lcom/android/internal/CompatHandler;->hasCallbacksCompat(Ljava/lang/Runnable;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v3, 0x1

    .line 897
    .local v3, "isMaskPendingShow":Z
    :goto_8
    if-eqz v3, :cond_f

    .line 908
    .end local v3    # "isMaskPendingShow":Z
    :goto_9
    return-void

    .line 872
    .end local v0    # "isActionBarShow":Z
    .end local v1    # "isDividerPendingShow":Z
    .end local v2    # "isMaskAnim":Z
    .end local v4    # "outOfBottomBar":Z
    .end local v5    # "outOfTopBar":Z
    .end local v6    # "outOfViewPort":Z
    .end local v8    # "showBottomDivider":Z
    .end local v9    # "showTopDivider":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 873
    .restart local v5    # "outOfTopBar":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 876
    .restart local v0    # "isActionBarShow":Z
    .restart local v4    # "outOfBottomBar":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 877
    .restart local v9    # "showTopDivider":Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 881
    .restart local v1    # "isDividerPendingShow":Z
    .restart local v8    # "showBottomDivider":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 889
    :cond_b
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarDividerRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarDividerRunnable;->run()V

    goto :goto_5

    .line 893
    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    .line 894
    .restart local v6    # "outOfViewPort":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 896
    .restart local v2    # "isMaskAnim":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 901
    :cond_f
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->removeRefreshMaskRunnable()V

    .line 902
    new-instance v10, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    invoke-direct {v10, p0, v0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;ZZ)V

    iput-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    .line 903
    if-eqz v0, :cond_10

    if-nez v6, :cond_10

    if-eqz p1, :cond_10

    .line 904
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v12}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090033

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 906
    :cond_10
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mBarMaskRunnable:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager$ActionBarMaskRunnable;->run()V

    goto :goto_9
.end method

.method public release()V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->removeRefreshDividerRunnable()V

    .line 924
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->removeRefreshMaskRunnable()V

    .line 925
    return-void
.end method

.method public showMaskImmediately()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 911
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarDividerVisible(Z)Z

    .line 912
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setSplitBarDividerVisible(Z)Z

    .line 913
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->mMaskView:Lcom/miui/gallery/ui/PhotoPageMaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setActionBarMaskVisible(ZZ)Z

    .line 914
    return-void
.end method
