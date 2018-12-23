.class public abstract Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;
.super Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;
.source "BaseAlbumListRecyclerAdapter.java"

# interfaces
.implements Lcom/miui/gallery/model/AlbumConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter",
        "<TVH;>;",
        "Lcom/miui/gallery/model/AlbumConstants;"
    }
.end annotation


# instance fields
.field private mPeopleFaceCover:Landroid/os/Bundle;

.field private mSharedAlbums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mPeopleFaceCover:Landroid/os/Bundle;

    .line 29
    return-void
.end method

.method protected static isAutoUploadedAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 338
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 339
    invoke-static {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFaceAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 150
    const-wide/32 v0, 0x7ffffffe

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffe

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFavoritesAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffa

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static isOtherAlbum(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 348
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOtherShareAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 234
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    return v0
.end method

.method protected static isOtherShareAlbum(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOtherShareAlbum(J)Z

    move-result v0

    return v0
.end method

.method public static isRecentAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 158
    const-wide/32 v0, 0x7ffffffc

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecentAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffc

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isScreenshotsAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 302
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isScreenshotsAlbum(Ljava/lang/String;)Z
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 306
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isSystemAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 315
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystemAlbum(Ljava/lang/String;)Z
    .locals 6
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 319
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 320
    .local v0, "albumId":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    const/4 v1, 0x1

    .line 324
    .end local v0    # "albumId":Ljava/lang/Long;
    :cond_0
    return v1

    .line 319
    .restart local v0    # "albumId":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public albumUnwriteable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v1, 0x1

    .line 272
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 273
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlbumCount(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 129
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getAlbumCount(Landroid/database/Cursor;)I

    move-result v1

    return v1
.end method

.method protected getAlbumCount(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 134
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getAlbumLocalPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 124
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getAlbumLocalPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getAlbumLocalPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 192
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "albumLocalPath":Ljava/lang/String;
    return-object v0
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 119
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 171
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isCameraAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "albumName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 173
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isVideoAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isFaceAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isPanoAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e003d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isRecentAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isFavoritesAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 184
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAttributes(I)Ljava/lang/Long;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 277
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 278
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getBabyAlbumPeopleId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 247
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 248
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBabyInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 257
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 258
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBabySharerInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 262
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 263
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getDownloadUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 105
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 84
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPeopleFaceCover()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mPeopleFaceCover:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    sget-object v0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getServerId(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 267
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShareAlbumInfo(I)Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 219
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 220
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 221
    .local v0, "albumId":I
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getThumbnailInfoOfBaby(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 252
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const v1, 0x7f0200e5

    .line 33
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->initDisplayImageOptions()V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 37
    return-void
.end method

.method public isAutoUploadedAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 334
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isAutoUploadedAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isAutoUploadedAlbum(JLjava/lang/String;J)Z
    .locals 4
    .param p1, "attributes"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "albumId"    # J

    .prologue
    .line 343
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 344
    invoke-static {p3}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isSystemAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p4, p5}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOtherShareAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBabyAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 238
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 239
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method protected isBabyAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 243
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCameraAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 287
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "serverId":Ljava/lang/String;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isForceTypeTime(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 110
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method protected isForceTypeTime(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 115
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->isForceTopAlbumByTopTime(J)Z

    move-result v0

    return v0
.end method

.method public isHiddenAlbum(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 328
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 329
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtherAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 352
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 353
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOtherAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isOtherShareAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 225
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isOwnerShareAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 205
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOwnerShareAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isOwnerShareAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 214
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const-wide/32 v0, 0x7ffe795f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    .line 215
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOwnerShareAlbum(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 210
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOwnerShareAlbum(J)Z

    move-result v0

    return v0
.end method

.method public isPanoAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 297
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 298
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isPanoAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method protected isPanoAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffffd

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isScreenshotsAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 292
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 293
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method public isShareAlbum(J)Z
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 201
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-static {p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOtherShareAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isOwnerShareAlbum(J)Z

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

.method public isShowedPhotosTabAlbum(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 357
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 358
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemAlbum(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 310
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 311
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v1

    return v1
.end method

.method protected isVideoAlbum(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setPeopleFaceCover(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 70
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mPeopleFaceCover:Landroid/os/Bundle;

    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSharedAlbums(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 41
    .local p0, "this":Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter<TVH;>;"
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 44
    :cond_0
    if-nez p1, :cond_2

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    :cond_3
    new-instance v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    invoke-direct {v0}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;-><init>()V

    .line 51
    .local v0, "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mAlbumId:Ljava/lang/String;

    .line 52
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mCreatorId:Ljava/lang/String;

    .line 53
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mUserCount:I

    .line 54
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    .line 59
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->mSharedAlbums:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mAlbumId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    .end local v0    # "shareAlbum":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
