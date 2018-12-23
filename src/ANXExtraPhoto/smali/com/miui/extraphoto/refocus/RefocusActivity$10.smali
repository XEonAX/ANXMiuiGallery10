.class Lcom/miui/extraphoto/refocus/RefocusActivity$10;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 531
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 534
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 536
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3000(Lcom/miui/extraphoto/refocus/RefocusActivity;I)V

    .line 539
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$10;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->refreshDrawableState()V

    .line 540
    return-void
.end method
