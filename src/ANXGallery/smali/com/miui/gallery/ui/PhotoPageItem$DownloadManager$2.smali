.class Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0, p2, p4}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1100(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V

    .line 925
    :cond_0
    return-void
.end method

.method public onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 930
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V

    .line 933
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 913
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0, p2, p4}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1000(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V

    .line 914
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 917
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0, p2, p4}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$900(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 906
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 909
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$700(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 898
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V

    .line 901
    :cond_0
    return-void
.end method
