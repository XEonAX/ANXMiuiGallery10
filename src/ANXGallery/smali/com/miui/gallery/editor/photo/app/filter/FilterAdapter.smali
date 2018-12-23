.class Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "FilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mEditMode:Z

.field private mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColor:I

.field private mSelectedIndex:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2, "highlighColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "effects":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FilterData;>;"
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 13
    iput v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 14
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    .line 18
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    .line 19
    iput p2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mHighlightColor:I

    .line 20
    return-void
.end method


# virtual methods
.method clearSelected()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 68
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-eq v1, v2, :cond_0

    .line 69
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 70
    .local v0, "lastIndex":I
    iput v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 73
    .end local v0    # "lastIndex":I
    :cond_0
    return-void
.end method

.method enterEditMode()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    .line 81
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 82
    return-void
.end method

.method exitEditMode()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    .line 86
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 87
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemData(I)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getValue()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    return v0
.end method

.method isInEditMode()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;I)V
    .locals 2
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;
    .param p2, "position"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 37
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 39
    .local v0, "selected":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->bindData(Lcom/miui/gallery/editor/photo/core/common/model/FilterData;)V

    .line 40
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->setState(ZZ)V

    .line 41
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mHighlightColor:I

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->setForegroundColor(I)V

    .line 43
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->updateIndicator(I)V

    .line 46
    :cond_0
    return-void

    .line 37
    .end local v0    # "selected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method setSelectedIndex(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 54
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-ne p1, v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 58
    .local v0, "lastSelectedIndex":I
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    .line 59
    if-eq v0, v2, :cond_2

    .line 60
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 62
    :cond_2
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    if-eq v1, v2, :cond_0

    .line 63
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method update(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEditMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mEffects:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iput p1, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    .line 100
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->notifyItemChanged(I)V

    .line 102
    :cond_0
    return-void
.end method
