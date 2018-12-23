.class Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;
.super Ljava/lang/Object;
.source "RefocusRenderThread.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusRenderThread;->refocusInit()V
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

    .line 172
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeError()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$500(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V

    .line 185
    return-void
.end method

.method public onPreviewDecode(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    .line 175
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$002(Lcom/miui/extraphoto/refocus/RefocusRenderThread;I)I

    .line 176
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$102(Lcom/miui/extraphoto/refocus/RefocusRenderThread;I)I

    .line 177
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0, p2}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$202(Lcom/miui/extraphoto/refocus/RefocusRenderThread;I)I

    .line 178
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iget-boolean v1, p3, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->mirror:Z

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$302(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Z)Z

    .line 179
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusRenderThread$1;->this$0:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->access$400(Lcom/miui/extraphoto/refocus/RefocusRenderThread;Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    .line 180
    return-void
.end method
