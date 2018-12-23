.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;
.super Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundRef"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .line 290
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;-><init>(Ljava/lang/String;)V

    .line 291
    return-void
.end method


# virtual methods
.method protected onAcquire()V
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    const/4 v2, 0x4

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    iget-object v2, v2, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->stopForeground(Z)V

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->stopSelf()V

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    iget-object v1, v1, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 313
    return-void
.end method
