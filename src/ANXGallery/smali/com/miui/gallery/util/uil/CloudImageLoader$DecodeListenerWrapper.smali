.class Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeListenerWrapper"
.end annotation


# instance fields
.field private mAware:Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

.field private final mType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V
    .locals 1
    .param p2, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 112
    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mAware:Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 113
    return-void
.end method

.method private isViewReused()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mAware:Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$000(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateFailReason(Lcom/nostra13/universalimageloader/core/assist/FailReason;)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 1
    .param p1, "reason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 116
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->isViewReused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mAware:Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    .line 152
    .local v0, "listener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-interface {v0, v1, v2, p2}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V

    .line 156
    .end local v0    # "listener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->isViewReused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mAware:Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    .line 142
    .local v0, "listener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 146
    .end local v0    # "listener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->isViewReused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mAware:Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v0

    .line 132
    .local v0, "listener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;->translateFailReason(Lcom/nostra13/universalimageloader/core/assist/FailReason;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 136
    .end local v0    # "listener":Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 126
    return-void
.end method
