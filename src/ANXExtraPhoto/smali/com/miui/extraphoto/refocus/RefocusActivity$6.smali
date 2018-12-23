.class Lcom/miui/extraphoto/refocus/RefocusActivity$6;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/RefocusView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;->addRefocusView()V
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

    .line 419
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$6;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayMode()Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$6;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3100(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusActivity$DisplayMode;

    move-result-object v0

    return-object v0
.end method
