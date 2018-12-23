.class Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ExtendedRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->access$000(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 172
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->update()V

    .line 173
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 148
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->update()V

    .line 149
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 154
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->update()V

    .line 155
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 166
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->update()V

    .line 167
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 160
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;->update()V

    .line 161
    return-void
.end method
