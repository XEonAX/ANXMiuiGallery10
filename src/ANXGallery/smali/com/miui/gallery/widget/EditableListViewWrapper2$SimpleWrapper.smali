.class Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditableListViewWrapper2.java"

# interfaces
.implements Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1014
    iput-object p2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1015
    return-void
.end method

.method private bindCheckState(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1023
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1024
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1025
    check-cast v0, Lcom/miui/gallery/ui/Checkable;

    .line 1026
    .local v0, "checkable":Lcom/miui/gallery/ui/Checkable;
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->isInChoiceMode()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1027
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckState(I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 1028
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$400(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;

    move-result-object v2

    invoke-virtual {v2, v1, v1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->resetViewPropertyIfNeed(Landroid/view/View;Landroid/view/View;I)V

    .line 1034
    .end local v0    # "checkable":Lcom/miui/gallery/ui/Checkable;
    :cond_0
    return-void

    .line 1030
    :cond_1
    instance-of v2, p1, Lcom/miui/gallery/adapter/BaseViewHolder;

    if-nez v2, :cond_0

    .line 1031
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must be instance of Checkable!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getSourceEncryptPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceEncryptPosition(I)I

    move-result p1

    .line 1128
    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method public getSourceItemCount()I
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemCount()I

    move-result v0

    .line 1108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSourceItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemId(I)J

    move-result-wide v0

    .line 1116
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1091
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1039
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->bindCheckState(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1040
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1045
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->bindCheckState(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1046
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1096
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1071
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1076
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1061
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1081
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1086
    return-void
.end method
