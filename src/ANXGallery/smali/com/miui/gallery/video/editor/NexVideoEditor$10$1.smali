.class Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor$10;->onAutoTrimResult(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$10;

.field final synthetic val$outPutFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor$10;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$10;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$10;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;->val$outPutFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$10;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$10;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;->val$outPutFilePath:Ljava/lang/String;

    new-instance v2, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$10$1$1;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor$10$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V

    .line 947
    return-void
.end method
