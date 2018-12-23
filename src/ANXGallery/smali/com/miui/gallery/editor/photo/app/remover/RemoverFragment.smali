.class public Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "RemoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

.field private mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

.field private mCurrentType:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mPaintSizePopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mCurrentType:I

    .line 113
    new-instance v0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getPaintSizeByProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mPaintSizePopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mCurrentType:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method private getPaintSizeByProgress(I)I
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 133
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mCurrentType:I

    packed-switch v3, :pswitch_data_0

    .line 140
    const/16 v1, 0x23

    .line 141
    .local v1, "min":I
    const/16 v0, 0xa1

    .line 144
    .local v0, "max":I
    :goto_0
    sub-int v2, v0, v1

    .line 145
    .local v2, "value":I
    mul-int v3, v2, p1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 146
    add-int/2addr v2, v1

    .line 147
    return v2

    .line 135
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "value":I
    :pswitch_0
    const/16 v1, 0x14

    .line 136
    .restart local v1    # "min":I
    const/16 v0, 0x64

    .line 137
    .restart local v0    # "max":I
    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected hideProcessDialog()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const v0, 0x7f040103

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f120241

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 62
    new-instance v2, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    new-instance v4, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;-><init>(Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v4, v5, v8, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    invoke-virtual {v2, v7}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->setSelection(I)V

    .line 70
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mPaintSizePopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    .line 71
    const v2, 0x7f120137

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setProgress(I)V

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    new-instance v3, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;->setPaintSize(F)V

    .line 97
    const v2, 0x7f12007c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    .line 98
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    const v3, 0x7f0e034d

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->setTitle(I)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    .line 100
    .local v0, "removerFragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 101
    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .line 102
    .local v1, "removerRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->setRenderRecordListener(Lcom/miui/gallery/editor/photo/app/RenderRecord;)V

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->setMenuUpdateListener(Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;)V

    .line 105
    .end local v1    # "removerRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v2, v8}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->updateBottomBar(Z)V

    .line 106
    return-void
.end method

.method protected showProcessDialog()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e03ee

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->genProgressDialog(Ljava/lang/String;)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 154
    return-void
.end method
