.class Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$1;
.super Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;
.source "RecyclerViewOverScrollDecorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;->setUpTouchHelperCallback(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;
    .param p2, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 68
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$1;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$1;)V

    return-void
.end method


# virtual methods
.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 71
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$1;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    .line 72
    invoke-super {p0, p1, p2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 73
    return-void
.end method
