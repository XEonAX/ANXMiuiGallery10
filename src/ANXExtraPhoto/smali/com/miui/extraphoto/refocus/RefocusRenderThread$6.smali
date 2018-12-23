.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifySaveFinish(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

.field final synthetic val$explain:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$preview:Landroid/graphics/Bitmap;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$video:Z


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 664
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$preview:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$video:Z

    iput-object p5, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$explain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 667
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$preview:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$path:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$video:Z

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$type:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$6;->val$explain:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;->onSave(Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    return-void
.end method
