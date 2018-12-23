.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$1;
.super Ljava/lang/Object;
.source "AsyncUpDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->acquire()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$1;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 593
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$1;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    invoke-static {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->access$600(Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$700(Ljava/lang/String;ZZ)V

    .line 594
    return-void
.end method
