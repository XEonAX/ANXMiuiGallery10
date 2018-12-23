.class Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$1;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;

    .line 668
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 671
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3300(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V

    .line 672
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 673
    return-void
.end method
