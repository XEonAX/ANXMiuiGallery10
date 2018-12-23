.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;->notifyInitFinish(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 612
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->val$orientation:I

    iput-object p4, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->val$imageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$700(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->val$orientation:I

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$2;->val$imageExif:Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread$Callback;->onInitFinish(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    .line 618
    :cond_0
    return-void
.end method
