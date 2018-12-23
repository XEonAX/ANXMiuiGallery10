.class abstract Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/CloudImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewAware"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mInternalType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private final mInternalUri:Landroid/net/Uri;

.field private final mRequestTime:J

.field final synthetic this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->this$0:Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mRequestTime:J

    .line 815
    iput-object p2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalUri:Landroid/net/Uri;

    .line 816
    iput-object p3, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 817
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)I
    .locals 10
    .param p1, "o"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 857
    if-nez p1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v2

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getRequestTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getRequestTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 861
    .local v0, "c":J
    cmp-long v3, v0, v8

    if-gtz v3, :cond_0

    .line 863
    cmp-long v2, v0, v8

    if-gez v2, :cond_2

    .line 864
    const/4 v2, -0x1

    goto :goto_0

    .line 866
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 806
    check-cast p1, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->compareTo(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 846
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast p1, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.end method

.method public abstract getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
.end method

.method public abstract getImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

.method final getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method final getInternalKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->access$000(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getInternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mInternalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
.end method

.method public abstract getLoadingProgressListener()Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
.end method

.method public getRegionDecodeRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequestTime()J
    .locals 2

    .prologue
    .line 841
    iget-wide v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->mRequestTime:J

    return-wide v0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 852
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public abstract needDisplay()Z
.end method
