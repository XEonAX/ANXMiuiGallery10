.class public Lcom/miui/gallery/widget/EditableListViewWrapper;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleMultiChoiceModeListener;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$TimeLineWrapper;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleTimeLineWrapper;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

.field private mAdapterWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/ListAdapter;",
            "Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

.field private mCheckItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mEditActionMode:Lmiui/view/EditActionMode;

.field private mEnterActionModeListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mIsInActionMode:Z

.field private mIsInChoiceMode:Z

.field private mItemClickDelegate:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListHeaderCount:I

.field private mListScrollState:I

.field private mListView:Landroid/widget/AbsListView;

.field private mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

.field private mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

.field private mScrollDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListScrollState:I

    .line 86
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$1;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mScrollDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 281
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$2;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEnterActionModeListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 374
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$3;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1308
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$5;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listview can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrappers:Landroid/util/ArrayMap;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mScrollDelegate:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/EditableListViewWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/widget/EditableListViewWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/EditableListViewWrapper;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/EditableListViewWrapper;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/widget/EditableListViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/EditableListViewWrapper;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/widget/EditableListViewWrapper;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->enterChoiceMode()V

    return-void
.end method

.method static synthetic access$1602(Lcom/miui/gallery/widget/EditableListViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/miui/gallery/widget/EditableListViewWrapper;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # Lmiui/view/EditActionMode;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/gallery/widget/EditableListViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInChoiceMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->exitChoiceMode()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/widget/EditableListViewWrapper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setGroupCheck(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->notifyDataChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/widget/EditableListViewWrapper;Lcom/miui/gallery/ui/CheckableView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;
    .param p1, "x1"    # Lcom/miui/gallery/ui/CheckableView;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setCheckableHeaderView(Lcom/miui/gallery/ui/CheckableView;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->handleDataChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/EditableListViewWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListHeaderCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/EditableListViewWrapper;)Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/EditableListViewWrapper;)Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateActionMode()V

    return-void
.end method

.method private checkMultiChoiceModeCallback()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->hasWrappedCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no MultiChoiceModeListener is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    return-void
.end method

.method private enterChoiceMode()V
    .locals 4

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1085
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1087
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1088
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    .line 1089
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1086
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->startEnterActionModeAni()V

    .line 1093
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->clear()V

    .line 1094
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->notifyDataChanged()V

    .line 1095
    return-void
.end method

.method private exitChoiceMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1098
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1099
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mItemClickDelegate:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1102
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1103
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v2, v4}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1104
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1, v4}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 1100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->startExistActionModeAni()V

    .line 1108
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->clear()V

    .line 1109
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->notifyDataChanged()V

    .line 1110
    return-void
.end method

.method private handleDataChanged()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->handleDataChanged()V

    .line 1019
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateActionMode()V

    .line 1020
    return-void
.end method

.method private notifyDataChanged()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->notifyChanged()V

    .line 1116
    :cond_0
    return-void
.end method

.method private setCheckableHeaderView(Lcom/miui/gallery/ui/CheckableView;I)V
    .locals 1
    .param p1, "checkableView"    # Lcom/miui/gallery/ui/CheckableView;
    .param p2, "position"    # I

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/CheckableView;->setCheckable(Z)V

    .line 1213
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$4;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper$4;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;I)V

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/CheckableView;->setCheckableListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    check-cast v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;

    .line 1228
    invoke-virtual {v0, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->getGroupCheckState(I)Z

    move-result v0

    .line 1227
    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/CheckableView;->setChecked(Z)V

    .line 1230
    :cond_0
    return-void
.end method

.method private setGroupCheck(I)Z
    .locals 2
    .param p1, "headerPosition"    # I

    .prologue
    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    check-cast v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;

    .line 1203
    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->setGroupCheckState(I)Z

    move-result v0

    .line 1204
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateOnScreenViewsState()V

    .line 1205
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateActionMode()V

    .line 1207
    :cond_0
    return v0
.end method

.method private updateActionMode()V
    .locals 8

    .prologue
    const v7, 0x102001a

    .line 993
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 998
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiui/R$string;->select_item:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1006
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1011
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    sget v2, Lmiui/R$string;->deselect_all:I

    invoke-interface {v1, v7, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/R$plurals;->items_selected:I

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    .line 1002
    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v6}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1000
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1013
    .end local v0    # "title":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    sget v2, Lmiui/R$string;->select_all:I

    invoke-interface {v1, v7, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_0
.end method

.method private updateOnScreenViewsState()V
    .locals 6

    .prologue
    .line 982
    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 983
    .local v0, "first":I
    iget v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListHeaderCount:I

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 984
    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 985
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/miui/gallery/ui/Checkable;

    if-eqz v3, :cond_0

    .line 987
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCheckState(J)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 983
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 990
    :cond_1
    return-void
.end method


# virtual methods
.method public disableScaleImageViewAniWhenInActionMode()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->disableScaleImageViewAni()V

    .line 139
    return-void
.end method

.method public enableScaleImageViewAniWhenInActionMode()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->enableScaleImageViewAni()V

    .line 135
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;->access$200(Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;)Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemOrderedPositions()[I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCheckedItemOrderedPositions()[I

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;>;"
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;->getWrapped()Landroid/widget/ListAdapter;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/gallery/adapter/BaseMediaAdapter;

    if-eqz v5, :cond_1

    .line 263
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;->getWrapped()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/adapter/BaseMediaAdapter;

    .line 264
    .local v3, "originalAdapter":Lcom/miui/gallery/adapter/BaseMediaAdapter;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemOrderedPositions()[I

    move-result-object v4

    .line 265
    .local v4, "positions":[I
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 266
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 267
    aget v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getCheckedItem(I)Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;

    move-result-object v0

    .line 268
    .local v0, "checkedItem":Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "checkedItem":Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;
    .end local v2    # "i":I
    .end local v3    # "originalAdapter":Lcom/miui/gallery/adapter/BaseMediaAdapter;
    .end local v4    # "positions":[I
    :cond_1
    return-object v1
.end method

.method public handleDataInvalid()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->clear()V

    .line 1024
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateActionMode()V

    .line 1025
    return-void
.end method

.method public isAllItemsChecked()Z
    .locals 2

    .prologue
    .line 966
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v0

    .line 967
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInActionMode:Z

    return v0
.end method

.method public isInChoiceMode()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInChoiceMode:Z

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    .line 147
    .local v0, "old":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    .line 148
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    if-ne v0, v1, :cond_0

    .line 149
    const-string v1, "EditableListViewWrapper"

    const-string v2, "setAdapter the same adapter"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 156
    :cond_1
    new-instance v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-direct {v1, v3}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper$1;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    .line 157
    if-nez p1, :cond_2

    .line 158
    iput-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    .line 159
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->handleDataInvalid()V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    if-nez v1, :cond_3

    .line 166
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v1, :cond_6

    .line 167
    new-instance v2, Lcom/miui/gallery/widget/EditableListViewWrapper$TimeLineWrapper;

    move-object v1, p1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$TimeLineWrapper;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrappers:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_3
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_5

    .line 178
    :cond_4
    new-instance v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;-><init>(Landroid/widget/AbsListView;Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    .line 181
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 182
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->bind(Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;)V

    .line 184
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->handleDataChanged()V

    goto :goto_0

    .line 168
    :cond_6
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_7

    .line 169
    new-instance v2, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleTimeLineWrapper;

    move-object v1, p1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleTimeLineWrapper;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    goto :goto_1

    .line 171
    :cond_7
    new-instance v1, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper$SimpleWrapper;

    goto :goto_1
.end method

.method public setAllItemsCheckState(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 971
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->setAllChecked(Z)V

    .line 972
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateOnScreenViewsState()V

    .line 973
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->updateActionMode()V

    .line 974
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 975
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v0, :cond_0

    .line 976
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->startScaleAllItemImageViewAnimation(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Z)V

    .line 979
    :cond_0
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    .line 120
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEnterActionModeListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper;Lcom/miui/gallery/widget/EditableListViewWrapper$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->setWrapped(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;)V

    .line 205
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mItemClickDelegate:Landroid/widget/AdapterView$OnItemClickListener;

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 194
    return-void
.end method

.method public startActionMode()V
    .locals 3

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->checkMultiChoiceModeCallback()V

    .line 312
    iget-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInChoiceMode:Z

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lmiui/view/EditActionMode;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    check-cast v0, Lmiui/view/EditActionMode;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    .line 319
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInChoiceMode:Z

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method

.method public startChoiceMode()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->checkMultiChoiceModeCallback()V

    .line 335
    iget-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInChoiceMode:Z

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mIsInChoiceMode:Z

    .line 339
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->enterChoiceMode()V

    goto :goto_0
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 328
    :cond_0
    return-void
.end method
