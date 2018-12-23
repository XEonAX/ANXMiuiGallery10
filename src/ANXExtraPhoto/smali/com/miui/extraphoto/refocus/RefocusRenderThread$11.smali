.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveStatusChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 729
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iput-boolean p2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$11;->val$enable:Z

    invoke-interface {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;->onSaveStatusChange(Z)V

    .line 735
    :cond_0
    return-void
.end method
