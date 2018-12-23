.class public Lcom/miui/gallery/cloud/SyncOwnerFromLocal;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncOwnerFromLocal.java"


# instance fields
.field private mAutoCreateImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoCreateVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCopyImageToOwnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditFavoriteInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditGeoInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditGroupDescriptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargestElapsedTime:J

.field private mManualCreateOwnerImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mManualCreateOwnerVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveImageToOwnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDelay:Z

.field private mPhotosToBeSynced:I

.field private mRenameGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVideosToBeSynced:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "noDelay"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 56
    iput-boolean p4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    .line 57
    return-void
.end method

.method private shouldSyncEditedDescription(Lcom/miui/gallery/data/DBImage;)Z
    .locals 3
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 190
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "editedColumns":Ljava/lang/String;
    const/4 v2, 0x6

    .line 194
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 196
    .end local v0    # "editedColumns":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldSyncEditedGeoInfo(Lcom/miui/gallery/data/DBImage;)Z
    .locals 3
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 201
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "editedColumns":Ljava/lang/String;
    const/16 v2, 0x46

    .line 207
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 209
    .end local v0    # "editedColumns":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldSyncEditedItem(Lcom/miui/gallery/data/DBImage;)Z
    .locals 4
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 141
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "editedColumns":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getFocusIndexColumnElement(Z)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 150
    .end local v0    # "editedColumns":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private shouldSyncEditedThumbnailInfo(Lcom/miui/gallery/data/DBImage;)Z
    .locals 14
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/16 v13, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 154
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    .line 155
    .local v4, "localFlag":I
    instance-of v9, p1, Lcom/miui/gallery/data/DBCloud;

    if-eqz v9, :cond_3

    .line 158
    if-eqz v4, :cond_0

    const/16 v9, 0xa

    if-eq v4, v9, :cond_0

    if-ne v4, v13, :cond_3

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "editedColumns":Ljava/lang/String;
    const/16 v9, 0x42

    .line 163
    invoke-static {v9}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 165
    .local v6, "thumbnailInfoEdited":Z
    if-eqz v6, :cond_3

    .line 166
    check-cast p1, Lcom/miui/gallery/data/DBCloud;

    .end local p1    # "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBCloud;->getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;

    move-result-object v5

    .line 167
    .local v5, "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    if-eqz v5, :cond_3

    .line 168
    invoke-virtual {v5}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getBgImageLocalId()J

    move-result-wide v0

    .line 169
    .local v0, "bgImageLocalId":J
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-nez v9, :cond_2

    .line 185
    .end local v0    # "bgImageLocalId":J
    .end local v3    # "editedColumns":Ljava/lang/String;
    .end local v5    # "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    .end local v6    # "thumbnailInfoEdited":Z
    :cond_1
    :goto_0
    return v7

    .line 173
    .restart local v0    # "bgImageLocalId":J
    .restart local v3    # "editedColumns":Ljava/lang/String;
    .restart local v5    # "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    .restart local v6    # "thumbnailInfoEdited":Z
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    const-string v11, "_id"

    .line 175
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 173
    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 176
    .local v2, "bgItem":Lcom/miui/gallery/data/DBImage;
    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v9

    if-ne v13, v9, :cond_1

    move v7, v8

    goto :goto_0

    .end local v0    # "bgImageLocalId":J
    .end local v2    # "bgItem":Lcom/miui/gallery/data/DBImage;
    .end local v3    # "editedColumns":Ljava/lang/String;
    .end local v5    # "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    .end local v6    # "thumbnailInfoEdited":Z
    :cond_3
    move v7, v8

    .line 185
    goto :goto_0
.end method

.method private shouldSyncFavoriteInfo(Lcom/miui/gallery/data/DBImage;)Z
    .locals 3
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 214
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "editedColumns":Ljava/lang/String;
    const/4 v2, -0x1

    .line 220
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 222
    .end local v0    # "editedColumns":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 95
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected bridge synthetic generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 7

    .prologue
    .line 100
    invoke-static {}, Lcom/miui/gallery/provider/ProcessingMediaManager;->queryProcessingMediaPaths()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localFile NOT IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 107
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .end local v0    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_2
    const-string v3, " (%s) "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected handleRequestCloudItemList()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 418
    const/4 v6, 0x0

    .line 420
    .local v6, "result":I
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 421
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start create group items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v1, Lcom/miui/gallery/cloud/CreateGroupItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/miui/gallery/cloud/CreateGroupItem;-><init>(Landroid/content/Context;)V

    .line 424
    .local v1, "createGroup":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v1}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 428
    if-ne v6, v11, :cond_1

    .line 574
    .end local v1    # "createGroup":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 435
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload manual create videos"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 440
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 441
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload auto create videos"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 446
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 447
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload manual create images"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 453
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 454
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload auto create images"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 459
    :cond_5
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 460
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start copy image items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, "copy":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v0}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 465
    if-eq v6, v11, :cond_0

    .line 471
    .end local v0    # "copy":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_6
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 472
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start move image items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v4, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;-><init>(Landroid/content/Context;)V

    .line 474
    .local v4, "move":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    .line 475
    invoke-static {v7, v8, v9, v10, v4}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 478
    if-eq v6, v11, :cond_0

    .line 483
    .end local v4    # "move":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_7
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 484
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start delete image items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v2, Lcom/miui/gallery/cloud/DeleteCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/miui/gallery/cloud/DeleteCloudItem;-><init>(Landroid/content/Context;)V

    .line 486
    .local v2, "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v2}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 489
    if-eq v6, v11, :cond_0

    .line 494
    .end local v2    # "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 495
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start delete group items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v2, Lcom/miui/gallery/cloud/DeleteCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/miui/gallery/cloud/DeleteCloudItem;-><init>(Landroid/content/Context;)V

    .line 497
    .restart local v2    # "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v2}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 500
    if-eq v6, v11, :cond_0

    .line 505
    .end local v2    # "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_9
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 506
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start rename group items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v5, Lcom/miui/gallery/cloud/RenameCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/miui/gallery/cloud/RenameCloudItem;-><init>(Landroid/content/Context;)V

    .line 508
    .local v5, "rename":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v5}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 511
    if-eq v6, v11, :cond_0

    .line 516
    .end local v5    # "rename":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_a
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 517
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudItem;-><init>(Landroid/content/Context;)V

    .line 519
    .local v3, "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 522
    if-eq v6, v11, :cond_0

    .line 528
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_b
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 529
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start album thumbnail info"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;-><init>(Landroid/content/Context;)V

    .line 531
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 534
    if-eq v6, v11, :cond_0

    .line 540
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_c
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 541
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit album description"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v3, Lcom/miui/gallery/cloud/EditGroupDescription;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditGroupDescription;-><init>(Landroid/content/Context;)V

    .line 543
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 546
    if-eq v6, v11, :cond_0

    .line 552
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_d
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 553
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit geo info"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudGeoInfo;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudGeoInfo;-><init>(Landroid/content/Context;)V

    .line 555
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 558
    if-eq v6, v11, :cond_0

    .line 564
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_e
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 565
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit favorite info"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudFavoriteInfo;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudFavoriteInfo;-><init>(Landroid/content/Context;)V

    .line 567
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 570
    if-ne v6, v11, :cond_0

    goto/16 :goto_0
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    .line 129
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    .line 130
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    .line 132
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    .line 134
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    .line 135
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    .line 137
    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 10
    .param p1, "item"    # Lcom/miui/gallery/data/DBItem;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 227
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    .line 228
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "editedColumns":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedItem(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 234
    .local v2, "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedGeoInfo(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 240
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncFavoriteInfo(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 247
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 404
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    const-string v3, "SyncOwnerFromLocal"

    const-string/jumbo v4, "unsupport local flag: %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    :cond_3
    :goto_1
    return-void

    .line 251
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedThumbnailInfo(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 254
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_5
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedDescription(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 260
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 293
    const-string v3, "SyncOwnerFromLocal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupport local flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serverType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :pswitch_2
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 271
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    .line 273
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 273
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto :goto_1

    .line 278
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_3
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 280
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    .line 282
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 282
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto/16 :goto_1

    .line 287
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_4
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 289
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 299
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 325
    const-string v3, "SyncOwnerFromLocal"

    const-string/jumbo v4, "unsupport local flag= %d serverType= %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 301
    :pswitch_6
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v6, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 303
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    .line 305
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 305
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto/16 :goto_1

    .line 310
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_7
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v5, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 312
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    .line 314
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 314
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto/16 :goto_1

    .line 319
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_8
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 321
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 332
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_9
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    packed-switch v3, :pswitch_data_3

    .line 346
    const-string v3, "SyncOwnerFromLocal"

    const-string/jumbo v4, "unsupport local flag= %d serverType= %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 334
    :pswitch_a
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v6, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 336
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 340
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_b
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v5, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 342
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 352
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_c
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 354
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 355
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 357
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 365
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_d
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 368
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 373
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_e
    const-string v3, "SyncOwnerFromLocal"

    const-string v4, "don\'t handle move from flag."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 377
    :pswitch_f
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 380
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 385
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_10
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 386
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 390
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 391
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v3, "Sync"

    const-string/jumbo v4, "sync_album_renamed_before_sync"

    .line 395
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v5

    .line 392
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 398
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_0
        :pswitch_9
        :pswitch_f
        :pswitch_d
        :pswitch_5
        :pswitch_1
        :pswitch_d
        :pswitch_10
        :pswitch_e
    .end packed-switch

    .line 267
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 299
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 332
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public sync()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    .line 62
    iput v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    .line 65
    :try_start_0
    invoke-super {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    if-lez v0, :cond_0

    .line 68
    const-string v0, "items_to_be_synced"

    const-string v1, "owner_photos_to_be_synced"

    iget v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 73
    :cond_0
    iget v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    if-lez v0, :cond_1

    .line 74
    const-string v0, "items_to_be_synced"

    const-string v1, "owner_videos_to_be_synced"

    iget v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 79
    :cond_1
    iget-wide v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 80
    const-string v0, "items_to_be_synced"

    const-string v1, "owner_largest_elapsed_time"

    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 86
    :cond_2
    return-void

    .line 67
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    if-lez v1, :cond_3

    .line 68
    const-string v1, "items_to_be_synced"

    const-string v2, "owner_photos_to_be_synced"

    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 73
    :cond_3
    iget v1, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    if-lez v1, :cond_4

    .line 74
    const-string v1, "items_to_be_synced"

    const-string v2, "owner_videos_to_be_synced"

    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 79
    :cond_4
    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    .line 80
    const-string v1, "items_to_be_synced"

    const-string v2, "owner_largest_elapsed_time"

    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    throw v0
.end method
