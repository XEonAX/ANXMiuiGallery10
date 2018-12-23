.class Lcom/miui/gallery/ui/MenuStatusManager;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"


# instance fields
.field private mAlbumServerId:Ljava/lang/String;

.field private mAlbumUnwriteable:Z

.field private mAutoUpload:Z

.field private mContext:Landroid/content/Context;

.field private mIsManualRenameRestricted:Z

.field private mIsOtherShareAlbum:Z

.field private mShowInOtherAlbums:Z

.field private mShowInPhotosTab:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JZZLjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumServerId"    # Ljava/lang/String;
    .param p3, "attributes"    # J
    .param p5, "albumUnwriteable"    # Z
    .param p6, "isOtherShareAlbum"    # Z
    .param p7, "localPath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mContext:Landroid/content/Context;

    .line 529
    iput-object p2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    .line 530
    const-wide/16 v6, 0x1

    and-long/2addr v6, p3

    cmp-long v2, v6, v8

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAutoUpload:Z

    .line 531
    const-wide/16 v6, 0x4

    and-long/2addr v6, p3

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInPhotosTab:Z

    .line 532
    const-wide/16 v6, 0x40

    and-long/2addr v6, p3

    cmp-long v2, v6, v8

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInOtherAlbums:Z

    .line 533
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    .line 534
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    .line 535
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p6, :cond_0

    if-nez p5, :cond_0

    .line 536
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isManualRenameRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsManualRenameRestricted:Z

    .line 537
    return-void

    :cond_2
    move v2, v4

    .line 530
    goto :goto_0

    :cond_3
    move v2, v4

    .line 531
    goto :goto_1

    :cond_4
    move v2, v4

    .line 532
    goto :goto_2
.end method

.method private isManualRenameRestricted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v1

    .line 644
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v0

    .line 645
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isManualRenameRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSystemAlbum(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbumButNotScreenshots(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2

    .line 586
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemAlbumButNotScreenshots(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 574
    const-wide/32 v0, -0x7ffffffe

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7fffffff

    .line 575
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    .line 576
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 577
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffd

    .line 578
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffb

    .line 579
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffa

    .line 580
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffc

    .line 581
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVirtualAlbum(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 565
    const-wide/32 v0, -0x7ffffffe

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7fffffff

    .line 566
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 567
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffd

    .line 568
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffb

    .line 569
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, -0x7ffffffa

    .line 570
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method canAddPhotos()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isVirtualAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDisableAutoUpload()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbumButNotScreenshots(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mContext:Landroid/content/Context;

    .line 557
    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 560
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAutoUpload:Z

    goto :goto_0
.end method

.method canDisableShowInOtherAlbums()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    .line 601
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInOtherAlbums:Z

    goto :goto_0
.end method

.method canDisableShowInPhotosTab()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbumButNotScreenshots(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInPhotosTab:Z

    goto :goto_0
.end method

.method canEnableAutoUpload()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    iget-object v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbumButNotScreenshots(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 550
    :cond_1
    :goto_0
    return v0

    .line 547
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    iget-boolean v2, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAutoUpload:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method canEnableShowInOtherAlbums()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInOtherAlbums:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canEnableShowInPhotosTab()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 606
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbumButNotScreenshots(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInPhotosTab:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canRename()Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsOtherShareAlbum:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mIsManualRenameRestricted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canShare()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumServerId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnWriteable()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAlbumUnwriteable:Z

    return v0
.end method

.method onAutoUploadStatusChanged(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mAutoUpload:Z

    .line 631
    return-void
.end method

.method onShowInOtherAlbumsStatusChanged(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInOtherAlbums:Z

    .line 639
    return-void
.end method

.method onShowInPhotosTabStatusChanged(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MenuStatusManager;->mShowInPhotosTab:Z

    .line 635
    return-void
.end method
