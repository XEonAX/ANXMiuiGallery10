.class Lcom/miui/extraphoto/refocus/RefocusActivity$4;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 373
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$4;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .line 376
    invoke-static {p1, p3}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 377
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$4;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, p3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2900(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V

    .line 378
    const/4 v0, 0x1

    return v0
.end method
