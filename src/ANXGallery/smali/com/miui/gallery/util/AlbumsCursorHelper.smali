.class public Lcom/miui/gallery/util/AlbumsCursorHelper;
.super Ljava/lang/Object;
.source "AlbumsCursorHelper.java"


# static fields
.field public static final ALL_ALBUMS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlbumId2CursorPosMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cover_path"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cover_sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cover_sync_state"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "media_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "face_people_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "baby_info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "thumbnail_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "attributes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_unwriteable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "top_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "sortBy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "baby_sharer_info"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "local_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/AlbumsCursorHelper;->ALL_ALBUMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private getAlbumId(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getAlbumLocalPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumLocalPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAlbumLocalPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "albumServerId"    # Ljava/lang/String;
    .param p4, "albumName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isVideoAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 149
    :cond_0
    :goto_0
    return-object p4

    .line 136
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isFaceAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isPanoAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 140
    :cond_3
    invoke-static {p3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isCameraAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 142
    :cond_4
    invoke-static {p3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 144
    :cond_5
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isRecentAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 146
    :cond_6
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isFavoritesAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0
.end method

.method private getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 128
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0xa

    .line 129
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 130
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttributes(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getBabyAlbumPeopleId(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyAlbumPeopleId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBabyAlbumPeopleId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 301
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBabyInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 323
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyInfo(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBabyInfo(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 327
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBabySharerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabySharerInfo(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBabySharerInfo(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 340
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 175
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailInfoOfBaby(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getThumbnailInfoOfBaby(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailInfoOfBaby(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 314
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAutoUploadedAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 239
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 240
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isOtherShareAlbum(Landroid/database/Cursor;)Z

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

.method private isBabyAlbum(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method private static isCameraAlbum(Ljava/lang/String;)Z
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 199
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFaceAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 183
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

.method private static isFavoritesAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 203
    const-wide/32 v0, 0x7ffffffa

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocalAlbum(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isLocalAlbum(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method private isLocalAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isAutoUploadedAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOtherShareAlbum(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method private isOtherShareAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 216
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 217
    .local v0, "albumId":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v1

    return v1
.end method

.method public static isPanoAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 191
    const-wide/32 v0, 0x7ffffffd

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecentAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 187
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

.method private static isScreenshotsAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 221
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isScreenshotsAlbum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isScreenshotsAlbum(Ljava/lang/String;)Z
    .locals 2
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 225
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSystemAlbum(Landroid/database/Cursor;)Z
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 229
    const/16 v3, 0xa

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "serverId":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 231
    .local v0, "albumId":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    const/4 v2, 0x1

    .line 235
    .end local v0    # "albumId":Ljava/lang/Long;
    :cond_0
    return v2

    .line 230
    .restart local v0    # "albumId":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static isVideoAlbum(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 179
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveCursorToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public albumUnwriteable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 358
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 359
    iget-object v1, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public albumUnwriteable(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 354
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->albumUnwriteable(I)Z

    move-result v0

    return v0
.end method

.method public getAlbumId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumId(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumLocalPath(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p1, "albumId"    # Ljava/lang/Long;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    .local v0, "cursorPos":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumLocalPath(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAttributes(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributes(J)J
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAttributes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBabyAlbumPeopleId(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyAlbumPeopleId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBabyInfo(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBabySharerInfo(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabySharerInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerId(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->moveCursorToPosition(I)Z

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getServerId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerId(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getServerId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailInfoOfBaby(J)Ljava/lang/String;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getThumbnailInfoOfBaby(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlbumDataValid(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBabyAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isBabyAlbum(I)Z

    move-result v0

    return v0
.end method

.method protected isBabyAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 288
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

.method public isLocalAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isLocalAlbum(I)Z

    move-result v0

    return v0
.end method

.method public isOtherShareAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isOtherShareAlbum(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setAlbumsData(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    iput-object p1, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    .line 81
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumId(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/AlbumsCursorHelper;->mAlbumId2CursorPosMapping:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_3
    monitor-exit p0

    return-void
.end method
