.class Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;
.super Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;
.source "RefocusEffectAdapter.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<",
        "Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;",
        ">;",
        "Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

.field private final mRefocusEffectConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 18
    .local p1, "refocusEffectConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;>;"
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mRefocusEffectConfigs:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mRefocusEffectConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->getSelection()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 53
    invoke-super {p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 54
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 55
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 12
    check-cast p1, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->onBindViewHolder(Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;
    .param p2, "position"    # I

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 32
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mRefocusEffectConfigs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-virtual {p1, v0}, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;->setData(Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 33
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 34
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 26
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/extraphoto/refocus/RefocusEffectItemHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 59
    invoke-super {p0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 60
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .line 43
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->mDelegator:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->setSelection(I)V

    .line 44
    return-void
.end method
