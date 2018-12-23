.class Lcom/miui/extraphoto/refocus/RefocusActivity$7;
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

    .line 485
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$7;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 488
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$7;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;->REFOCUS_VIDEO:Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$7;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$7;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3300(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)V

    .line 493
    :goto_0
    return-void
.end method
