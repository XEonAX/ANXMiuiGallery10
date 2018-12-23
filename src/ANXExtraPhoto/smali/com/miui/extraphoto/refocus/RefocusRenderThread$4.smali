.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$4;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySurfaceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 638
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$4;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$4;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$4;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;->onSurfaceReady()V

    .line 644
    :cond_0
    return-void
.end method
