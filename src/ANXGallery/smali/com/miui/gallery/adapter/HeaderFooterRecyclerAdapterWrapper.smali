.class public abstract Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.super Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;
.source "HeaderFooterRecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper",
        "<TADAPTER;TVH;>;"
    }
.end annotation


# instance fields
.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    .local p1, "wrapped":Landroid/support/v7/widget/RecyclerView$Adapter;, "TADAPTER;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-super {p0}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->getItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasFooter()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const-wide/16 v0, -0x1

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 107
    .end local p1    # "position":I
    :cond_0
    :goto_0
    return-wide v0

    .line 103
    .restart local p1    # "position":I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasFooter()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "position":I
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 113
    const/4 v0, -0x2

    .line 120
    .end local p1    # "position":I
    :goto_0
    return v0

    .line 116
    .restart local p1    # "position":I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 117
    const/4 v0, -0x3

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "position":I
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public hasFooter()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 82
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 83
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 86
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;

    .line 87
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;-><init>(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 90
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 156
    .end local p2    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local p2    # "position":I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    .end local p2    # "position":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method protected abstract onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v4, -0x2

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "itemView":Landroid/view/View;
    if-ne p2, v4, :cond_2

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderView:Landroid/view/View;

    .line 131
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 132
    iget-object v3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 135
    .local v2, "targetParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 136
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .end local v1    # "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v2    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 145
    :goto_2
    return-object v3

    .line 128
    :cond_2
    const/4 v3, -0x3

    if-ne p2, v3, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterView:Landroid/view/View;

    goto :goto_0

    .line 138
    .restart local v2    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .restart local v1    # "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    goto :goto_1

    .line 145
    .end local v1    # "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v2    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_2
.end method

.method public removeFooterView()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterView:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    iput-object p1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterView:Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    iput-object p1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderView:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method
