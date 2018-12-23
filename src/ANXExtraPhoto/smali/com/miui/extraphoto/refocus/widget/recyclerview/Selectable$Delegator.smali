.class public final Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;
.super Ljava/lang/Object;
.source "Selectable.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delegator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Selectable.Delegator"


# instance fields
.field private mParent:Landroid/support/v7/widget/RecyclerView;

.field private mSelection:I

.field private mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "defaultSelection"    # I

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;-><init>(ILcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;)V
    .locals 0
    .param p1, "defaultSelection"    # I
    .param p2, "selector"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    .line 34
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iput-object p0, p2, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;->mAdapter:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public getSelection()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 92
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 99
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    iget-boolean v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;->mRequireLayer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    .line 104
    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attach to a recycler view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 83
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 88
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    if-ne p2, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 89
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 107
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "Selectable.Delegator"

    const-string v1, "not the attached parent view ."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void
.end method

.method public setSelection(I)V
    .locals 6
    .param p1, "index"    # I

    .line 42
    iget v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    if-ne v0, p1, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, "needNotify":Z
    const/4 v1, 0x1

    .line 49
    .local v1, "notifyPosition":I
    iget v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 50
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    iget v4, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 51
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 52
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    .line 53
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x1

    .line 56
    iget v1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    .line 60
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_0
    iput p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelection:I

    .line 62
    if-eq p1, v3, :cond_3

    .line 63
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 64
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_3

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 65
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    .line 66
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 70
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Selector;

    if-eqz v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 73
    :cond_4
    if-eqz v0, :cond_5

    if-eq v1, v3, :cond_5

    .line 74
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 76
    :cond_5
    return-void
.end method
