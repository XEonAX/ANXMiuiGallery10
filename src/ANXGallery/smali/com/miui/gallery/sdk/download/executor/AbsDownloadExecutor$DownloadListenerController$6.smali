.class Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;
.super Ljava/lang/Object;
.source "AbsDownloadExecutor.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->callCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller",
        "<",
        "Lcom/miui/gallery/sdk/download/listener/DownloadListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

.field final synthetic val$type:Lcom/miui/gallery/sdk/download/DownloadType;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;->this$0:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    iput-object p2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;->val$type:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/miui/gallery/sdk/download/listener/DownloadListener;)V
    .locals 2
    .param p1, "params"    # Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;->val$uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;->val$type:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/sdk/download/listener/DownloadListener;->onDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 226
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;->call(Lcom/miui/gallery/sdk/download/listener/DownloadListener;)V

    return-void
.end method
