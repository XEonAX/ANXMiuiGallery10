.class public abstract Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field private mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

.field private mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private mMaximumPullScroll:I

.field private mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 70
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 71
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 77
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 78
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 80
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 84
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 70
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 71
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 77
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 78
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 80
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 84
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 70
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 71
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 77
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 78
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 80
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 84
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 111
    iput-object p2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 70
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 71
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 77
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 78
    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 80
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 84
    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 117
    iput-object p2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 118
    iput-object p3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1018
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1019
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1022
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    return-void
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1027
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1185
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1191
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1187
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1197
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1202
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMaximumPullScroll:I

    if-eqz v0, :cond_0

    .line 1203
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMaximumPullScroll:I

    .line 1205
    :goto_0
    return v0

    .line 1199
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v9, 0x9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 1040
    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1046
    invoke-virtual {p0, v7}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 1050
    :goto_0
    invoke-virtual {p0, v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    .line 1052
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1053
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    .line 1056
    sget-object v3, Lcom/miui/gallery/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1058
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1059
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 1062
    :cond_0
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1063
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1069
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1070
    iget-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1073
    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 1074
    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 1079
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1080
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1081
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1082
    iget-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1091
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1092
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1095
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1096
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1100
    :cond_4
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1101
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMaximumPullScroll:I

    .line 1107
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1111
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 1112
    return-void

    .line 1042
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1084
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_6
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1085
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1086
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1087
    iget-object v3, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1115
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1123
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1117
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    .line 1119
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    .line 1121
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 1138
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1145
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .line 1146
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 1150
    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1157
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1158
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1162
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1164
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1165
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1166
    .local v4, "scale":F
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1172
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->onPull(F)V

    .line 1176
    :goto_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1177
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 1182
    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .line 1140
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    .line 1141
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 1142
    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1152
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1153
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1154
    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1168
    .restart local v4    # "scale":F
    :pswitch_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->onPull(F)V

    goto :goto_2

    .line 1178
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1179
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1150
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1166
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1216
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1217
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1221
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1226
    :cond_0
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1232
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1236
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1239
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1241
    :cond_1
    new-instance v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;IIJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    .line 1243
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1244
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1249
    :cond_2
    :goto_1
    return-void

    .line 1228
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1229
    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 128
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void

    .line 133
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 555
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 556
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 563
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 564
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 567
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 568
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    .line 567
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    move-result-object v0

    .line 569
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 570
    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 578
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;-><init>()V

    .line 580
    .local v0, "proxy":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;)V

    .line 583
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;)V

    .line 587
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getCurrentMode()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    .locals 1

    .prologue
    .line 611
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 615
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 167
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 631
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 635
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 645
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 210
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 285
    :goto_0
    return v6

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 226
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 227
    :cond_1
    iput-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 231
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 232
    goto :goto_0

    .line 235
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 242
    .local v4, "x":F
    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 249
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 250
    .local v2, "diff":F
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 253
    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 255
    .local v0, "absDiff":F
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 256
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 257
    iput v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 258
    iput v4, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 259
    iput-boolean v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 260
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 261
    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 244
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 245
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 246
    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .line 263
    .restart local v0    # "absDiff":F
    :cond_6
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    iput v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 265
    iput v4, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 266
    iput-boolean v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 267
    iget-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 268
    sget-object v6, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 276
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 279
    iput-boolean v6, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 242
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 672
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 681
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 688
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 699
    :goto_0
    return-void

    .line 690
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 290
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 708
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->refreshing()V

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->refreshing()V

    .line 715
    :cond_1
    if-eqz p1, :cond_3

    .line 716
    iget-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_2

    .line 719
    new-instance v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;)V

    .line 726
    .local v0, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 733
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 743
    .end local v0    # "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_0
    return-void

    .line 729
    .restart local v0    # "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 737
    .end local v0    # "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 741
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 750
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 761
    :goto_0
    return-void

    .line 752
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 755
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 768
    iput-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 772
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->reset()V

    .line 773
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->reset()V

    .line 775
    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    .line 776
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 780
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 781
    check-cast v0, Landroid/os/Bundle;

    .line 783
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 784
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 786
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 787
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 790
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 792
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .line 793
    .local v1, "viewState":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 794
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 798
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 803
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 802
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 807
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 813
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 814
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 817
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 818
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 820
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 828
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 831
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 832
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 305
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 320
    goto :goto_0

    .line 307
    :pswitch_1
    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 310
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 311
    goto :goto_0

    .line 327
    :pswitch_2
    iget-boolean v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 328
    iput-boolean v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 330
    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_4

    .line 332
    :cond_3
    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 333
    goto :goto_0

    .line 337
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 339
    goto :goto_0

    .line 344
    :cond_5
    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 346
    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 7

    .prologue
    .line 839
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 841
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 842
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 843
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 844
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 846
    .local v1, "pBottom":I
    sget-object v5, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 883
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 884
    return-void

    .line 848
    :pswitch_0
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 849
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setWidth(I)V

    .line 850
    neg-int v2, v0

    .line 855
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 856
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setWidth(I)V

    .line 857
    neg-int v3, v0

    goto :goto_0

    .line 852
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 859
    :cond_1
    const/4 v3, 0x0

    .line 861
    goto :goto_0

    .line 864
    :pswitch_1
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 865
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setHeight(I)V

    .line 866
    neg-int v4, v0

    .line 871
    :goto_2
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 872
    iget-object v5, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setHeight(I)V

    .line 873
    neg-int v1, v0

    goto :goto_0

    .line 868
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 875
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 363
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 364
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 368
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 369
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 919
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 920
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 922
    iget-boolean v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 923
    if-gez p1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 943
    :cond_0
    :goto_0
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 951
    :goto_1
    return-void

    .line 925
    :cond_1
    if-lez p1, :cond_2

    .line 926
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 928
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 929
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 945
    :pswitch_0
    invoke-virtual {p0, v3, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 948
    :pswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 376
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 398
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 399
    return-void
.end method

.method public final setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 403
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 407
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 408
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 410
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    .line 414
    return-void
.end method

.method public final setOnRefreshListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 426
    return-void
.end method

.method public final setOnRefreshListener(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 420
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 433
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 450
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setMode(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 451
    return-void

    .line 450
    :cond_0
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 455
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 456
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 465
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 468
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 475
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 476
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 492
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 493
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 500
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 505
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 506
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 356
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 357
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 510
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 511
    return-void
.end method

.method final varargs setState(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 520
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    .line 525
    sget-object v0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mState:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$State;Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 548
    :cond_0
    return-void

    .line 527
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 530
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 533
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 537
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 960
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 961
    return-void
.end method

.method protected final smoothScrollTo(ILcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 971
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 972
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 991
    .local p0, "this":Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;, "Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 994
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1003
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1005
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1006
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1014
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    .line 1015
    return-void

    .line 1014
    :cond_4
    sget-object v1, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method
