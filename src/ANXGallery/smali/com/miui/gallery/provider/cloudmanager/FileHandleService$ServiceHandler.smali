.class final Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;
.super Landroid/os/Handler;
.source "FileHandleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/FileHandleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/cloudmanager/FileHandleService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;->this$0:Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v4, "check_unhandled_media_ids"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkManager;->loadFileHandleMediaIds()[J

    move-result-object v1

    .line 84
    .local v1, "ids":[J
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;->this$0:Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    invoke-static {v4, v1}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->access$000(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;[J)V

    .line 87
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "batch_count"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v4, "file_handle"

    const-string v5, "restore_unhandled_file_operations"

    invoke-static {v4, v5, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    .end local v1    # "ids":[J
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;->this$0:Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    invoke-static {v4}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->access$100(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;)V

    .line 101
    return-void

    .line 92
    :cond_1
    const-string v4, "dispatch_media_ids"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    const-string v4, "ids"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 95
    .restart local v1    # "ids":[J
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 96
    invoke-static {v1}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkManager;->addFileHandleMediaIds([J)I

    .line 97
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;->this$0:Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    invoke-static {v4, v1}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->access$000(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;[J)V

    goto :goto_0
.end method
