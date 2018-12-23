.class Lcom/miui/gallery/widget/EditableListViewWrapper2$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "EditableListViewWrapper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$002(Lcom/miui/gallery/widget/EditableListViewWrapper2;I)I

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$100(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$100(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$100(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$1;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$100(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 89
    :cond_0
    return-void
.end method
