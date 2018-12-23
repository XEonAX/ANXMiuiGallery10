.class public Lcom/miui/gallery/widget/EditableListViewWrapper2;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

.field private mAdapterWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            "Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

.field private mCheckItemListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

.field private mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mEditActionMode:Lmiui/view/EditActionMode;

.field private mEnterActionModeListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

.field private mIsInActionMode:Z

.field private mIsInChoiceMode:Z

.field private mItemClickDelegate:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

.field private mListScrollState:I

.field private mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

.field private mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field private mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mScrollDelegate:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mListScrollState:I

    .line 74
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mScrollDelegate:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 210
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$2;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEnterActionModeListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    .line 280
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$3;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckItemListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .line 1132
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$4;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "recyclerView can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrappers:Landroid/util/ArrayMap;

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mScrollDelegate:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 100
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-direct {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/EditableListViewWrapper2;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mListScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/widget/EditableListViewWrapper2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mListScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->enterChoiceMode()V

    return-void
.end method

.method static synthetic access$1402(Lcom/miui/gallery/widget/EditableListViewWrapper2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/miui/gallery/widget/EditableListViewWrapper2;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .param p1, "x1"    # Lmiui/view/EditActionMode;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEditActionMode:Lmiui/view/EditActionMode;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/gallery/widget/EditableListViewWrapper2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mIsInChoiceMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->exitChoiceMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->handleDataChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->updateActionMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/widget/EditableListViewWrapper2;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    return-object v0
.end method

.method private checkMultiChoiceModeCallback()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->hasWrappedCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no MultiChoiceModeListener is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    return-void
.end method

.method private enterChoiceMode()V
    .locals 4

    .prologue
    .line 978
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLongClickable(Z)V

    .line 979
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckItemListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 981
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 982
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    .line 983
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 980
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startEnterActionModeAni()V

    .line 987
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->clear()V

    .line 988
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->notifyDataChanged()V

    .line 989
    return-void
.end method

.method private exitChoiceMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 992
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLongClickable(Z)V

    .line 993
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mItemClickDelegate:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 995
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 996
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 997
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v2, v4}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 998
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1, v4}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 994
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startExistActionModeAni()V

    .line 1002
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->clear()V

    .line 1003
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->notifyDataChanged()V

    .line 1004
    return-void
.end method

.method private handleDataChanged()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->handleDataChanged()V

    .line 913
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->updateActionMode()V

    .line 914
    return-void
.end method

.method private notifyDataChanged()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1008
    return-void
.end method

.method private updateActionMode()V
    .locals 8

    .prologue
    const v7, 0x102001a

    .line 887
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiui/R$string;->select_item:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 900
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEditActionMode:Lmiui/view/EditActionMode;

    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEditActionMode:Lmiui/view/EditActionMode;

    sget v2, Lmiui/R$string;->deselect_all:I

    invoke-interface {v1, v7, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/R$plurals;->items_selected:I

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    .line 896
    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCount()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v6}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 894
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 907
    .end local v0    # "title":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEditActionMode:Lmiui/view/EditActionMode;

    sget v2, Lmiui/R$string;->select_all:I

    invoke-interface {v1, v7, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0
.end method

.method private updateOnScreenViewsState()V
    .locals 6

    .prologue
    .line 877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 878
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 879
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 881
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckState(J)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 877
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public enableChoiceMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLongClickable(Z)V

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEnterActionModeListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public handleDataInvalid()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->clear()V

    .line 918
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->updateActionMode()V

    .line 919
    return-void
.end method

.method public isAllItemsChecked()Z
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCount()I

    move-result v0

    .line 865
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->getSourceItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInChoiceMode()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mIsInChoiceMode:Z

    return v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    .line 126
    .local v0, "old":Landroid/support/v7/widget/RecyclerView$Adapter;
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    .line 127
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    if-ne v0, v1, :cond_0

    .line 128
    const-string v1, "EditableListViewWrapper2"

    const-string v2, "setAdapter the same adapter"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->clear()V

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 136
    :cond_1
    if-nez p1, :cond_2

    .line 137
    iput-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->handleDataInvalid()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    if-nez v1, :cond_3

    .line 145
    new-instance v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrappers:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->setHasStableIds(Z)V

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->bind(Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;)V

    .line 153
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->handleDataChanged()V

    goto :goto_0
.end method

.method public setAllItemsCheckState(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 869
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->setAllChecked(Z)V

    .line 870
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->updateOnScreenViewsState()V

    .line 871
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->updateActionMode()V

    .line 872
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->access$500(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 873
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleAllItemImageViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V

    .line 874
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;Lcom/miui/gallery/widget/EditableListViewWrapper2$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->setWrapped(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;)V

    .line 174
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mItemClickDelegate:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 163
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 167
    return-void
.end method

.method public startActionMode()V
    .locals 3

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->checkMultiChoiceModeCallback()V

    .line 237
    iget-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mIsInChoiceMode:Z

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lmiui/view/EditActionMode;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    check-cast v0, Lmiui/view/EditActionMode;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mEditActionMode:Lmiui/view/EditActionMode;

    .line 244
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mIsInChoiceMode:Z

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;->access$500(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 253
    :cond_0
    return-void
.end method
