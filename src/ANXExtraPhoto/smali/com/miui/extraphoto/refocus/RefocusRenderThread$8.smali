.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyPreviewUpdate(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

.field final synthetic val$preview:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 690
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;->val$preview:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$8;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;->onPreviewUpdate(Landroid/graphics/Bitmap;)V

    .line 696
    :cond_0
    return-void
.end method
