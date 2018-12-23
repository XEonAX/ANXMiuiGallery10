.class Lcom/miui/extraphoto/refocus/RefocusActivity$12;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;->showConfirmDialog()V
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

    .line 612
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$12;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    .line 629
    return-void
.end method

.method public onClick(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
    .param p2, "which"    # I

    .line 615
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$12;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    move-result-object v1

    sget-object v2, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    if-ne v1, v2, :cond_0

    .line 617
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$12;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$12;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3300(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V

    goto :goto_0

    .line 621
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$12;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1, v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2400(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V

    .line 624
    :cond_2
    :goto_0
    return-void
.end method

.method public onDismiss(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    .line 634
    return-void
.end method
