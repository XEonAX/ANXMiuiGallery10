.class public Lcom/miui/gallery/provider/AlbumManager;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# static fields
.field private static ALBUM_ATTRIBUTES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static ALBUM_SYNC_ATTRIBUTES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final SQL_ALBUM_BASIC:Ljava/lang/String;

.field private static final SQL_ALBUM_COVER_DEFAULT:Ljava/lang/String;

.field private static final SQL_ALBUM_COVER_FORMAT:Ljava/lang/String;

.field private static SQL_ALBUM_LOCAL_PATH:Ljava/lang/String;

.field private static SQL_ALBUM_NAME:Ljava/lang/String;

.field private static SQL_ALBUM_NOT_HIDDEN:Ljava/lang/String;

.field private static SQL_ALBUM_SORT_BY:Ljava/lang/String;

.field private static SQL_ALBUM_UNWRITEABLE:Ljava/lang/String;

.field public static final SQL_BABY_ALBUM_COVER:Ljava/lang/String;

.field public static final SQL_BABY_OTHER_SHARED_ALBUM_COVER:Ljava/lang/String;

.field private static SQL_EXCLUDE_BABY_ALBUM:Ljava/lang/String;

.field private static SQL_EXCLUDE_MEDIA_IN_BABY_ALBUM:Ljava/lang/String;

.field private static final SQL_RECENT_ALBUM_COVER:Ljava/lang/String;

.field private static final SQL_SHARE_ALBUM:Ljava/lang/String;

.field private static final SQL_SHARE_ALBUM_BASIC:Ljava/lang/String;

.field private static final SQL_SHARE_ALBUM_COVER:Ljava/lang/String;

.field private static SQL_SHARE_ALBUM_NOT_HIDDEN:Ljava/lang/String;

.field private static SQL_SHARE_ALBUM_SORT_BY:Ljava/lang/String;

.field private static final SQL_UNION_SHARE_ALBUM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x40

    const-wide/16 v6, 0x1

    .line 32
    const-string v2, "fileName AS name"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_NAME:Ljava/lang/String;

    .line 34
    const-string v2, "localFile AS local_path"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_LOCAL_PATH:Ljava/lang/String;

    .line 36
    const-string v2, "CASE WHEN sortBy IS NULL THEN dateTaken ELSE sortBy END AS sortBy"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_SORT_BY:Ljava/lang/String;

    .line 42
    const-string v2, "CASE WHEN sortBy IS NULL THEN dateTaken ELSE sortBy END AS sortBy"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_SORT_BY:Ljava/lang/String;

    .line 48
    const-string v2, "CASE WHEN localFile LIKE \'/%%\' THEN 1 ELSE 0 END AS album_unwriteable"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_UNWRITEABLE:Ljava/lang/String;

    .line 54
    const-string v2, "AND (attributes & 16 = 0)"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_NOT_HIDDEN:Ljava/lang/String;

    .line 57
    const-string v2, "AND (attributes & 16 = 0)"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_NOT_HIDDEN:Ljava/lang/String;

    .line 67
    const-string v2, "AND (babyInfoJson IS NULL)"

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_EXCLUDE_BABY_ALBUM:Ljava/lang/String;

    .line 68
    const-string v2, "AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND babyInfoJson IS NULL )) "

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_EXCLUDE_MEDIA_IN_BABY_ALBUM:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id AS _id, attributes AS attributes, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "flag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dateTaken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "peopleId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "face_people_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "babyInfoJson"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "baby_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "baby_sharer_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "thumbnailInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "thumbnail_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_SORT_BY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_UNWRITEABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverType=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_BASIC:Ljava/lang/String;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 2147383647+_id AS _id, attributes AS attributes, sharealbum.fileName AS name, NULL AS local_path, localFlag AS flag, dateTaken AS top_time, peopleId AS face_people_id, babyInfoJson AS baby_info, sharerInfo AS baby_sharer_info, serverId AS serverId, NULL AS thumbnail_info, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_SORT_BY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album_unwriteable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shareAlbum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_BASIC:Ljava/lang/String;

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", _id AS cover_id, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_CLEAR_FIRST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sync_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "max(CASE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " COLLATE NOCASE IN (%s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverType=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " THEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dateModified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ELSE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") END) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AS latest_photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_COVER_FORMAT:Ljava/lang/String;

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", _id AS cover_id, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_CLEAR_FIRST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sync_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS latest_photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_COVER_DEFAULT:Ljava/lang/String;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", _id AS cover_id, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_CLEAR_FIRST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sync_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dateModified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS latest_photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_RECENT_ALBUM_COVER:Ljava/lang/String;

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", 1073741823+_id AS cover_id, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$ShareImage;->ALIAS_CLEAR_FIRST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sha1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_sync_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cover_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS latest_photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_COVER:Ljava/lang/String;

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT * FROM (SELECT cloud.serverId as imageId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_COVER_DEFAULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = %s ))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_BABY_ALBUM_COVER:Ljava/lang/String;

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT * FROM (SELECT serverId as imageId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_COVER_DEFAULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shareImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = %s ))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_BABY_OTHER_SHARED_ALBUM_COVER:Ljava/lang/String;

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_BASIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7ffe795f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_COVER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0 AS size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shareImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localGroupId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") USING ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM:Ljava/lang/String;

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->SQL_UNION_SHARE_ALBUM:Ljava/lang/String;

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 632
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->ALBUM_ATTRIBUTES:Ljava/util/Map;

    .line 639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v1, "syncAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/provider/AlbumManager;->ALBUM_SYNC_ATTRIBUTES:Ljava/util/List;

    .line 644
    return-void
.end method

.method private static generateFaceAlbumCover(Landroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;
    .locals 14
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-static {}, Lcom/miui/gallery/provider/FaceManager;->buildTopFaceCoverQuery()Ljava/lang/String;

    move-result-object v10

    .line 456
    .local v10, "sql":Ljava/lang/String;
    invoke-virtual {p0, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 457
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 459
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v7, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    const-string v11, "cover_id"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 461
    .local v2, "coverIdIndex":I
    const-string v11, "cover_path"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 462
    .local v3, "coverPathIndex":I
    const-string v11, "cover_sha1"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 463
    .local v4, "coverSha1Index":I
    const-string v11, "cover_sync_state"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 464
    .local v6, "coverSyncStateIndex":I
    const-string v11, "cover_size"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 465
    .local v5, "coverSizeIndex":I
    const-string v11, "faceRect"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 466
    .local v9, "faceRectIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 467
    new-instance v1, Lcom/miui/gallery/model/FaceAlbumCover;

    invoke-direct {v1}, Lcom/miui/gallery/model/FaceAlbumCover;-><init>()V

    .line 468
    .local v1, "cover":Lcom/miui/gallery/model/FaceAlbumCover;
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/miui/gallery/model/FaceAlbumCover;->coverId:J

    .line 469
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/miui/gallery/model/FaceAlbumCover;->coverPath:Ljava/lang/String;

    .line 470
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/miui/gallery/model/FaceAlbumCover;->coverSha1:Ljava/lang/String;

    .line 471
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v1, Lcom/miui/gallery/model/FaceAlbumCover;->coverSyncState:I

    .line 472
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/miui/gallery/model/FaceAlbumCover;->coverSize:J

    .line 473
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/miui/gallery/model/FaceAlbumCover;->faceRect:Ljava/lang/String;

    .line 474
    iget-object v11, v1, Lcom/miui/gallery/model/FaceAlbumCover;->faceRect:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 475
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 483
    .end local v1    # "cover":Lcom/miui/gallery/model/FaceAlbumCover;
    :cond_2
    if-eqz v7, :cond_4

    .line 484
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v11, "face_album_cover"

    invoke-virtual {v0, v11, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 486
    const-string v11, "face_album_count"

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 493
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "coverIdIndex":I
    .end local v3    # "coverPathIndex":I
    .end local v4    # "coverSha1Index":I
    .end local v5    # "coverSizeIndex":I
    .end local v6    # "coverSyncStateIndex":I
    .end local v7    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    .end local v9    # "faceRectIndex":I
    :cond_3
    :goto_0
    return-object v0

    .line 490
    .restart local v2    # "coverIdIndex":I
    .restart local v3    # "coverPathIndex":I
    .restart local v4    # "coverSha1Index":I
    .restart local v5    # "coverSizeIndex":I
    .restart local v6    # "coverSyncStateIndex":I
    .restart local v7    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    .restart local v9    # "faceRectIndex":I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2    # "coverIdIndex":I
    .end local v3    # "coverPathIndex":I
    .end local v4    # "coverSha1Index":I
    .end local v5    # "coverSizeIndex":I
    .end local v6    # "coverSyncStateIndex":I
    .end local v7    # "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    .end local v9    # "faceRectIndex":I
    :catchall_0
    move-exception v11

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v11
.end method

.method public static getAlbumAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    sget-object v0, Lcom/miui/gallery/provider/AlbumManager;->ALBUM_ATTRIBUTES:Ljava/util/Map;

    return-object v0
.end method

.method private static getAlbumBasicColumns(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludeHiddenAlbums"    # Z
    .param p2, "excludeNonLocalAlbums"    # Z

    .prologue
    .line 556
    sget-object v1, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_BASIC:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_NOT_HIDDEN:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/miui/gallery/provider/AlbumManager;->SQL_EXCLUDE_BABY_ALBUM:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getAlbumSyncAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    sget-object v0, Lcom/miui/gallery/provider/AlbumManager;->ALBUM_SYNC_ATTRIBUTES:Ljava/util/List;

    return-object v0
.end method

.method private static getExcludeEmptyAlbumSelection(Z)Ljava/lang/String;
    .locals 3
    .param p0, "excludeNonLocalAlbums"    # Z

    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(media_count >0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OR ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_USER_CREATE_ALBUM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExcludeEmptyRecentAlbumSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const-string v0, "(media_count > 0 OR _id!=2147483644)"

    return-object v0
.end method

.method private static getExcludeHiddenAlbumSelection(Z)Ljava/lang/String;
    .locals 1
    .param p0, "excludeHiddenAlbums"    # Z

    .prologue
    .line 505
    if-eqz p0, :cond_0

    const-string v0, " AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND attributes&16=0)) "

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getExcludeHiddenShareAlbumSelection(Z)Ljava/lang/String;
    .locals 1
    .param p0, "excludeHiddenAlbums"    # Z

    .prologue
    .line 509
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/AlbumManager;->SQL_SHARE_ALBUM_NOT_HIDDEN:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getExcludeMediaInBabyAlbumSelection(Z)Ljava/lang/String;
    .locals 1
    .param p0, "excludeNonLocalAlbums"    # Z

    .prologue
    .line 513
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/AlbumManager;->SQL_EXCLUDE_MEDIA_IN_BABY_ALBUM:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getExcludeNonLocalSelection(IZ)Ljava/lang/String;
    .locals 4
    .param p0, "serverType"    # I
    .param p1, "excludeNonLocalAlbums"    # Z

    .prologue
    .line 526
    packed-switch p0, :pswitch_data_0

    .line 534
    invoke-static {p1}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeNonLocalSelection(Z)Ljava/lang/String;

    move-result-object v1

    .line 536
    :goto_0
    return-object v1

    .line 528
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_IMAGE:Ljava/lang/String;

    .line 536
    .local v0, "sql":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_0

    const-string v1, " AND %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 531
    .end local v0    # "sql":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_VIDEO:Ljava/lang/String;

    .line 532
    .restart local v0    # "sql":Ljava/lang/String;
    goto :goto_1

    .line 536
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getExcludeNonLocalSelection(Z)Ljava/lang/String;
    .locals 4
    .param p0, "excludeNonLocalAlbums"    # Z

    .prologue
    .line 521
    if-eqz p0, :cond_0

    const-string v0, " AND %s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_MEDIA:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getFaceAlbumColumns(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 569
    const-wide/32 v2, 0x7ffffffe

    const-wide/16 v4, -0x3e5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v0

    .line 571
    .local v0, "dateTaken":J
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " UNION SELECT 2147483646 AS _id, 0 AS attributes, \'FACE\' AS name, NULL AS local_path, 0 AS flag, -997 AS top_time,NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, \'-2147483646\' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS album_unwriteable, COUNT(*) AS media_count, 0 AS size , -1 AS cover_id, NULL AS cover_path, NULL AS cover_sha1, 0 AS cover_sync_state, 0 AS cover_size, NULL AS latest_photo FROM peopleFace WHERE ((localFlag=5 OR (localFlag=0 AND serverStatus=\'movieAssetsNormal\')) AND type = \'FACE\')"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFavoritesAlbumColumns(Ljava/lang/String;ZZLjava/lang/Integer;)Ljava/lang/String;
    .locals 7
    .param p0, "albumCover"    # Ljava/lang/String;
    .param p1, "excludeHiddenAlbums"    # Z
    .param p2, "excludeNonLocalAlbums"    # Z
    .param p3, "mediaType"    # Ljava/lang/Integer;

    .prologue
    .line 609
    const-wide/32 v2, 0x7ffffffa

    const-wide/16 v4, -0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v0

    .line 611
    .local v0, "dateTaken":J
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " UNION SELECT 2147483642 AS _id, 0 AS attributes, \'FAVORITES\' AS name, NULL AS local_path, 0 AS flag, -1000 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, \'-2147483642\' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS album_unwriteable %s %s %sFROM extended_cloud WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (localGroupId!=-1000) AND (serverType IN (1,2) AND isFavorite NOT NULL AND isFavorite > 0) %s%s%s%s"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ", count(DISTINCT sha1) AS media_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    const/4 v5, 0x3

    const-string v6, ", 0 AS size "

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 613
    invoke-static {p3}, Lcom/miui/gallery/provider/AlbumManager;->getMediaTypeSelection(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 614
    invoke-static {p2}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeNonLocalSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 615
    invoke-static {p1}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeHiddenAlbumSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 616
    invoke-static {p2}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeMediaInBabyAlbumSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 611
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getMediaTypeSelection(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .param p0, "mediaType"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 620
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 621
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " AND %s = %s "

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "serverType"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPanoAlbumColumns(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumCover"    # Ljava/lang/String;
    .param p2, "excludeHiddenAlbums"    # Z
    .param p3, "excludeNonLocalAlbums"    # Z

    .prologue
    const/4 v7, 0x1

    .line 583
    const-wide/32 v2, 0x7ffffffd

    const-wide/16 v4, -0x3e2

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v0

    .line 585
    .local v0, "dateTaken":J
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " UNION SELECT 2147483645 AS _id, 0 AS attributes, \'PANO\' AS name, NULL AS local_path, 0 AS flag, -994 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, \'-2147483645\' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS album_unwriteable %s %s %sFROM (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (exifImageWidth > 1080 AND exifImageLength > 0 AND exifImageWidth- 3 * exifImageLength > 0 AND title LIKE \'PANO%%\') AND (localGroupId!=-1000)%s%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, ", count(DISTINCT sha1) AS media_count"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string v6, ", 0 AS size "

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 586
    invoke-static {v7, p3}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeNonLocalSelection(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 587
    invoke-static {p2}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeHiddenAlbumSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 585
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getRecentAlbumColumns(ZZZLjava/lang/Integer;)Ljava/lang/String;
    .locals 7
    .param p0, "excludeHiddenAlbums"    # Z
    .param p1, "excludeNonLocalAlbums"    # Z
    .param p2, "removeDuplicateItems"    # Z
    .param p3, "mediaType"    # Ljava/lang/Integer;

    .prologue
    .line 594
    const-wide/32 v2, 0x7ffffffc

    const-wide/16 v4, -0x3e9

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v0

    .line 596
    .local v0, "dateTaken":J
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, " UNION SELECT 2147483644 AS _id, 0 AS attributes, \'RECENT\' AS name, NULL AS local_path, 0 AS flag, -1001 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, \'-2147483644\' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS album_unwriteable %s %s %sFROM (SELECT mediaId AS _id, sha1, localFlag, dateModified, serverStatus, localGroupId, thumbnailFile, microthumbfile, localFile, serverType, size, babyInfoJson FROM (recentDiscoveredMedia JOIN (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud ON cloud._id = mediaId) WHERE ( CASE WHEN DATE(dateModified/1000, \'unixepoch\', \'localtime\') == DATE(\'now\', \'localtime\') THEN 0 ELSE CAST(JULIANDAY(\'now\', \'localtime\', \'start of day\') - JULIANDAY(dateModified/1000, \'unixepoch\', \'localtime\') AS int) + 1 END < 30)) WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (localGroupId!=-1000)%s%s%s%s"

    const/16 v2, 0x8

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    const-string v2, ", count(DISTINCT sha1) AS media_count"

    :goto_0
    aput-object v2, v5, v6

    const/4 v2, 0x2

    sget-object v6, Lcom/miui/gallery/provider/AlbumManager;->SQL_RECENT_ALBUM_COVER:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, ", 0 AS size "

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 599
    invoke-static {p3}, Lcom/miui/gallery/provider/AlbumManager;->getMediaTypeSelection(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 600
    invoke-static {p1}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeNonLocalSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 601
    invoke-static {p0}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeHiddenAlbumSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    .line 602
    invoke-static {p1}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeMediaInBabyAlbumSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 596
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, ", count(_id) AS media_count"

    goto :goto_0
.end method

.method private static getShareAlbumBasicColumns(Landroid/content/Context;ZZLjava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludeHiddenAlbums"    # Z
    .param p2, "removeDuplicateItems"    # Z
    .param p3, "mediaType"    # Ljava/lang/Integer;

    .prologue
    .line 563
    sget-object v1, Lcom/miui/gallery/provider/AlbumManager;->SQL_UNION_SHARE_ALBUM:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeHiddenShareAlbumSelection(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const-string v0, ", count(DISTINCT sha1) AS media_count"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    .line 565
    invoke-static {p3}, Lcom/miui/gallery/provider/AlbumManager;->getMediaTypeSelection(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 563
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ", count(_id) AS media_count"

    goto :goto_0
.end method

.method private static getVideoAlbumColumns(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumCover"    # Ljava/lang/String;
    .param p2, "excludeHiddenAlbums"    # Z
    .param p3, "excludeNonLocalAlbums"    # Z

    .prologue
    const/4 v7, 0x2

    .line 575
    const-wide/32 v2, 0x7fffffff

    const-wide/16 v4, -0x3e6

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getVirtualAlbumSortBy(JJ)J

    move-result-wide v0

    .line 577
    .local v0, "dateTaken":J
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " UNION SELECT 2147483647 AS _id, 0 AS attributes, \'VIDEO\' AS name, NULL AS local_path, 0 AS flag, -998 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, \'-2147483647\' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS album_unwriteable %s %s %sFROM (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud WHERE serverType=2 AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (localGroupId!=-1000)%s%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ", count(DISTINCT sha1) AS media_count"

    aput-object v6, v4, v5

    aput-object p1, v4, v7

    const/4 v5, 0x3

    const-string v6, ", 0 AS size "

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 578
    invoke-static {v7, p3}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeNonLocalSelection(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 579
    invoke-static {p2}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeHiddenAlbumSelection(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 577
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isDailyAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 686
    const-wide/32 v0, 0x7ffffffb

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFavoritesAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 690
    const-wide/32 v0, 0x7ffffffa

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInLocalMode()Z
    .locals 1

    .prologue
    .line 517
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    return v0
.end method

.method private static isInShowHiddenMode()Z
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;->isShowHiddenAlbum()Z

    move-result v0

    return v0
.end method

.method private static isIncludeFaceAlbum(Z)Z
    .locals 1
    .param p0, "excludeNonLocalAlbums"    # Z

    .prologue
    .line 497
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 670
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

.method private static isQueryColumn([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    if-eqz p0, :cond_2

    array-length v3, p0

    if-lez v3, :cond_2

    .line 423
    const-string v3, "*"

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v1

    .line 426
    :cond_1
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 427
    .local v0, "ss":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ss":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 432
    goto :goto_0
.end method

.method public static isRecentAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 678
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

.method public static isSecretAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 674
    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 666
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

.method public static isVirtualAlbum(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 661
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/AlbumManager;->isVideoAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/AlbumManager;->isPanoAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/AlbumManager;->isSecretAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/AlbumManager;->isRecentAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/AlbumManager;->isDailyAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/provider/AlbumManager;->isFavoritesAlbum(J)Z

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

.method public static packageAttributeBit(JZZ)J
    .locals 6
    .param p0, "attributeBit"    # J
    .param p2, "positive"    # Z
    .param p3, "manual"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 651
    sget-object v2, Lcom/miui/gallery/provider/AlbumManager;->ALBUM_ATTRIBUTES:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 652
    .local v0, "manualBit":J
    if-eqz p2, :cond_0

    .end local p0    # "attributeBit":J
    :goto_0
    if-eqz p3, :cond_1

    .end local v0    # "manualBit":J
    :goto_1
    or-long v2, p0, v0

    return-wide v2

    .restart local v0    # "manualBit":J
    .restart local p0    # "attributeBit":J
    :cond_0
    move-wide p0, v4

    goto :goto_0

    .end local p0    # "attributeBit":J
    :cond_1
    move-wide v0, v4

    goto :goto_1
.end method

.method public static query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZLjava/lang/Integer;)Landroid/database/Cursor;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "joinVideoAlbum"    # Z
    .param p7, "joinFaceAlbum"    # Z
    .param p8, "joinShare"    # Z
    .param p9, "joinPano"    # Z
    .param p10, "joinRecent"    # Z
    .param p11, "joinFavorites"    # Z
    .param p12, "excludeEmptyAlbum"    # Z
    .param p13, "queryAllExceptDeleted"    # Z
    .param p14, "removeDuplicateItems"    # Z
    .param p15, "mediaType"    # Ljava/lang/Integer;

    .prologue
    .line 355
    if-nez p13, :cond_a

    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->isInShowHiddenMode()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v15, 0x1

    .line 356
    .local v15, "excludeHiddenAlbums":Z
    :goto_0
    if-nez p13, :cond_b

    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->isInLocalMode()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v16, 0x1

    .line 358
    .local v16, "excludeNonLocalAlbums":Z
    :goto_1
    const-string v17, ""

    .local v17, "sqlJoinFaceAlbum":Ljava/lang/String;
    const-string v22, ""

    .local v22, "sqlJoinVideoAlbum":Ljava/lang/String;
    const-string v21, ""

    .line 359
    .local v21, "sqlJoinShareAlbum":Ljava/lang/String;
    const-string v19, ""

    .local v19, "sqlJoinPanoAlbum":Ljava/lang/String;
    const-string v20, ""

    .local v20, "sqlJoinRecentAlbum":Ljava/lang/String;
    const-string v18, ""

    .line 361
    .local v18, "sqlJoinFavoritesAlbum":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v3

    sget-object v5, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    .line 362
    invoke-interface {v3, v5}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;->getAlbumPathsBySortDate(Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;)Ljava/util/List;

    move-result-object v14

    .line 363
    .local v14, "albumsOrderByDateModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v14}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 364
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v5, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_COVER_FORMAT:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', \'"

    .line 366
    invoke-static {v9, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 364
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 371
    .local v12, "albumCover":Ljava/lang/String;
    :goto_2
    if-eqz p7, :cond_1

    if-eqz p15, :cond_0

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    :cond_0
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/provider/AlbumManager;->isIncludeFaceAlbum(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/provider/AlbumManager;->getFaceAlbumColumns(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 375
    :cond_1
    if-eqz p6, :cond_3

    if-eqz p15, :cond_2

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 376
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v12, v15, v1}, Lcom/miui/gallery/provider/AlbumManager;->getVideoAlbumColumns(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v22

    .line 379
    :cond_3
    if-eqz p8, :cond_4

    if-nez v16, :cond_4

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, p14

    move-object/from16 v2, p15

    invoke-static {v0, v15, v1, v2}, Lcom/miui/gallery/provider/AlbumManager;->getShareAlbumBasicColumns(Landroid/content/Context;ZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    .line 383
    :cond_4
    if-eqz p9, :cond_6

    if-eqz p15, :cond_5

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 384
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v12, v15, v1}, Lcom/miui/gallery/provider/AlbumManager;->getPanoAlbumColumns(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    .line 387
    :cond_6
    if-eqz p10, :cond_7

    .line 388
    move/from16 v0, v16

    move/from16 v1, p14

    move-object/from16 v2, p15

    invoke-static {v15, v0, v1, v2}, Lcom/miui/gallery/provider/AlbumManager;->getRecentAlbumColumns(ZZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v20

    .line 391
    :cond_7
    if-eqz p11, :cond_8

    .line 392
    move/from16 v0, v16

    move-object/from16 v1, p15

    invoke-static {v12, v15, v0, v1}, Lcom/miui/gallery/provider/AlbumManager;->getFavoritesAlbumColumns(Ljava/lang/String;ZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    .line 395
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/miui/gallery/provider/AlbumManager;->getAlbumBasicColumns(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, "albumBasic":Ljava/lang/String;
    const-string/jumbo v3, "size"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/AlbumManager;->isQueryColumn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v13, ", sum(size) AS size "

    .line 398
    .local v13, "albumSize":Ljava/lang/String;
    :goto_3
    const-string v5, "(SELECT * FROM (%s) LEFT JOIN (SELECT localGroupId AS _id%s%s%sFROM (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) %s%sGROUP BY localGroupId) USING (_id)%s %s %s %s %s %s)"

    const/16 v3, 0xc

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v6, v3

    const/4 v7, 0x1

    if-eqz p14, :cond_e

    const-string v3, ", count(DISTINCT sha1) AS media_count"

    :goto_4
    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object v12, v6, v3

    const/4 v3, 0x3

    aput-object v13, v6, v3

    const/4 v3, 0x4

    .line 400
    invoke-static/range {p15 .. p15}, Lcom/miui/gallery/provider/AlbumManager;->getMediaTypeSelection(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x5

    .line 401
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeNonLocalSelection(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x6

    aput-object v21, v6, v3

    const/4 v3, 0x7

    aput-object v22, v6, v3

    const/16 v3, 0x8

    aput-object v17, v6, v3

    const/16 v3, 0x9

    aput-object v19, v6, v3

    const/16 v3, 0xa

    aput-object v20, v6, v3

    const/16 v3, 0xb

    aput-object v18, v6, v3

    .line 398
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "table":Ljava/lang/String;
    if-eqz p12, :cond_10

    .line 406
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 407
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeEmptyAlbumSelection(Z)Ljava/lang/String;

    move-result-object p3

    .line 418
    :cond_9
    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 355
    .end local v4    # "table":Ljava/lang/String;
    .end local v11    # "albumBasic":Ljava/lang/String;
    .end local v12    # "albumCover":Ljava/lang/String;
    .end local v13    # "albumSize":Ljava/lang/String;
    .end local v14    # "albumsOrderByDateModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "excludeHiddenAlbums":Z
    .end local v16    # "excludeNonLocalAlbums":Z
    .end local v17    # "sqlJoinFaceAlbum":Ljava/lang/String;
    .end local v18    # "sqlJoinFavoritesAlbum":Ljava/lang/String;
    .end local v19    # "sqlJoinPanoAlbum":Ljava/lang/String;
    .end local v20    # "sqlJoinRecentAlbum":Ljava/lang/String;
    .end local v21    # "sqlJoinShareAlbum":Ljava/lang/String;
    .end local v22    # "sqlJoinVideoAlbum":Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 356
    .restart local v15    # "excludeHiddenAlbums":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 369
    .restart local v14    # "albumsOrderByDateModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "excludeNonLocalAlbums":Z
    .restart local v17    # "sqlJoinFaceAlbum":Ljava/lang/String;
    .restart local v18    # "sqlJoinFavoritesAlbum":Ljava/lang/String;
    .restart local v19    # "sqlJoinPanoAlbum":Ljava/lang/String;
    .restart local v20    # "sqlJoinRecentAlbum":Ljava/lang/String;
    .restart local v21    # "sqlJoinShareAlbum":Ljava/lang/String;
    .restart local v22    # "sqlJoinVideoAlbum":Ljava/lang/String;
    :cond_c
    sget-object v12, Lcom/miui/gallery/provider/AlbumManager;->SQL_ALBUM_COVER_DEFAULT:Ljava/lang/String;

    .restart local v12    # "albumCover":Ljava/lang/String;
    goto/16 :goto_2

    .line 396
    .restart local v11    # "albumBasic":Ljava/lang/String;
    :cond_d
    const-string v13, ", 0 AS size "

    goto :goto_3

    .line 398
    .restart local v13    # "albumSize":Ljava/lang/String;
    :cond_e
    const-string v3, ", count(_id) AS media_count"

    goto :goto_4

    .line 409
    .restart local v4    # "table":Ljava/lang/String;
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeEmptyAlbumSelection(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    .line 411
    :cond_10
    if-nez p13, :cond_9

    if-eqz p10, :cond_9

    .line 412
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 413
    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeEmptyRecentAlbumSelection()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    .line 415
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getExcludeEmptyRecentAlbumSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_5
.end method

.method public static queryFaceAlbumCover(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 436
    new-instance v0, Lcom/miui/gallery/provider/AlbumManager$1;

    invoke-direct {v0}, Lcom/miui/gallery/provider/AlbumManager$1;-><init>()V

    .line 448
    .local v0, "cursor":Landroid/database/AbstractCursor;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/provider/AlbumManager;->isIncludeFaceAlbum(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-static {p0}, Lcom/miui/gallery/provider/AlbumManager;->generateFaceAlbumCover(Landroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 451
    :cond_0
    return-object v0
.end method
