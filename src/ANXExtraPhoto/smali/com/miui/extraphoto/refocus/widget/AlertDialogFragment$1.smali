.class Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    .line 58
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;->this$0:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 61
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;->this$0:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;->this$0:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->access$000(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;->this$0:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;->access$000(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;)Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$1;->this$0:Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;

    invoke-interface {v0, v1, p2}, Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment$Callbacks;->onClick(Lcom/miui/extraphoto/refocus/widget/AlertDialogFragment;I)V

    .line 67
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "click event is not from current fragment, maybe listener not detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
