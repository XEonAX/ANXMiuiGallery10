.class public Lcom/miui/gallery/cloud/CreateOwnerImage;
.super Lcom/miui/gallery/cloud/CreateImageBase;
.source "CreateOwnerImage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CreateImageBase;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected doUpload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;)V
    .locals 0
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/GalleryKssManager;->doOwnerUpload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;)V

    .line 25
    return-void
.end method

.method protected getDBImage(Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/data/DBImage;
    .locals 4
    .param p1, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 33
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "_id"

    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 35
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getOwnerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    move-result-object v0

    return-object v0
.end method
