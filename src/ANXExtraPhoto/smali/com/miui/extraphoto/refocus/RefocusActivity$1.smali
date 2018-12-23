.class Lcom/miui/extraphoto/refocus/RefocusActivity$1;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 155
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->onBackPressed()V

    .line 159
    return-void
.end method
