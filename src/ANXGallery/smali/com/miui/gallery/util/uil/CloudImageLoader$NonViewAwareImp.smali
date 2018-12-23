.class Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;
.super Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
.source "CloudImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonViewAwareImp"
.end annotation


# instance fields
.field private mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "loadingListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .param p5, "progressListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    .line 984
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 985
    iput-object p4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 986
    iput-object p5, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .line 987
    return-void
.end method


# virtual methods
.method public getDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 1021
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    return-object v0
.end method

.method public getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$000(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method public getLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;->getInternalUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public needDisplay()Z
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x0

    return v0
.end method
