.class public Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
.super Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.source "AlbumDetailSimpleAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field protected static final PROJECTION_INTERNAL:[Ljava/lang/String;


# instance fields
.field private mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

.field private mSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_micro_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alias_create_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "secretKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "creatorId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "alias_sort_time"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V

    .line 74
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V

    .line 74
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;
    .param p3, "syncStateDisplayOptions"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V

    .line 74
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->NORMAL:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 97
    return-void
.end method

.method private buildNoDiskCacheDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method private buildSecretPhotoDisplayOptions([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p1, "secretKey"    # [B

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method private getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isScreenshotAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroScreenshotTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 136
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroPanoTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isRecentAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroRecentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    goto :goto_0
.end method

.method private isNoCacheDisplayAlbum()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isScreenshotAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isPanoAlbum()Z

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
.method public doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 161
    move-object/from16 v2, p1

    check-cast v2, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 163
    .local v2, "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 164
    .local v13, "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v11

    invoke-virtual {v2, v6, v7, v11}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 165
    const/16 v6, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "type":Ljava/lang/String;
    const/16 v6, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 167
    .local v4, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    sget-object v7, Lcom/miui/gallery/widget/SortByHeader$SortBy;->SIZE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v6, v7, :cond_0

    .line 168
    const/16 v6, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindFileSize(J)V

    .line 169
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    .line 184
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "duration":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isFavorite(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 181
    :goto_1
    invoke-virtual {v2, v6}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindFavoriteIndicator(Z)V

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getSyncState(Landroid/database/Cursor;)I

    move-result v10

    .line 187
    .local v10, "newSyncState":I
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 188
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mShowScene:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mSyncStateDisplayOptions:I

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindSyncIndicator(JILcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V

    .line 189
    const/4 v6, 0x5

    .line 190
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v11, 0x6

    .line 191
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 189
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v11, v12}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v9, v7}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setIsSimilarBestImage(Z)V

    .line 193
    return-void

    .line 171
    .end local v8    # "id":J
    .end local v10    # "newSyncState":I
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "duration":J
    :cond_0
    const/16 v6, 0x14

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 173
    .local v14, "specialTypeFlags":J
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindFileSize(J)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    invoke-static {v14, v15}, Lcom/miui/gallery/Config$SecretAlbumConfig;->getSupportedSpecialTypeFlags(J)J

    move-result-wide v6

    .line 174
    :goto_2
    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    move-wide v6, v14

    .line 177
    goto :goto_2

    .line 184
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "duration":J
    .end local v14    # "specialTypeFlags":J
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 349
    check-cast p1, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 232
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x12

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCreatorId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 148
    .local v1, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 151
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->buildSecretPhotoDisplayOptions([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 156
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v1

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isNoCacheDisplayAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->buildNoDiskCacheDisplayOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDisplayImageSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 220
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemSecretKey(I)[B
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isSecretAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 269
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 271
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->getItemSecretKey(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 238
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 277
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 244
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 262
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSyncState(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 196
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 197
    .local v0, "syncState":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getSyncStateInternal(I)I

    move-result v1

    return v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xe

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isBabyAlbum()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->BABY:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v2, 0x13

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 284
    .local v1, "isFavorite":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOtherShareAlbum()Z
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->OTHER_SHARE:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoAlbum()Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->PANO:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentAlbum()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->RECENT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenshotAlbum()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SCREENSHOT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretAlbum()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SECRET:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v2, 0x7f04000d

    const v4, 0x7f020235

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isScreenshotAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    .line 103
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 104
    .local v0, "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 105
    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageForeground(I)V

    .line 120
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isPanoAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000e

    .line 109
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 110
    .restart local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    goto :goto_0

    .line 112
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isRecentAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumDetailGridItem;

    .line 115
    .restart local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getDisplayImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 116
    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->setImageForeground(I)V

    goto :goto_0

    .line 119
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumDetailGridItem;
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V
    .locals 1
    .param p1, "albumType"    # Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mAlbumType:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    .line 332
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->isNoCacheDisplayAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setPreloadNum(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V
    .locals 0
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->mSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .line 300
    return-void
.end method
