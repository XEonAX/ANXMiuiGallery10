.class Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;
.super Lcom/miui/gallery/scanner/ScanTask;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanupTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/scanner/MediaScannerService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/scanner/MediaScannerService;Z)V
    .locals 2
    .param p2, "foreground"    # Z

    .prologue
    .line 396
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 397
    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/miui/gallery/scanner/ScanTask;-><init>(IZ)V

    .line 398
    const-string v0, "MediaScannerService"

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method


# virtual methods
.method protected canRunningInBackground()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 403
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    .line 404
    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    .line 405
    .local v0, "hasExternalStorageMounted":Z
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->isPrimaryStorageWritable(Landroid/content/Context;)Z

    move-result v1

    .line 406
    .local v1, "hasMainSDCard":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 407
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2, p1}, Lcom/miui/gallery/scanner/MediaScanner;->cleanup(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 416
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 409
    :cond_1
    if-nez v0, :cond_2

    .line 410
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2}, Lcom/miui/gallery/scanner/MediaScannerService;->access$000(Lcom/miui/gallery/scanner/MediaScannerService;)V

    .line 412
    :cond_2
    if-nez v1, :cond_0

    .line 413
    iget-object v2, p0, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->this$0:Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-static {v2}, Lcom/miui/gallery/scanner/MediaScannerService;->access$100(Lcom/miui/gallery/scanner/MediaScannerService;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 438
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "CleanupTask priority %d, foreground %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/MediaScannerService$CleanupTask;->isForeground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
