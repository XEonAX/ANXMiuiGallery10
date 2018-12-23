.class public Lcom/miui/gallery/discovery/StatisticsJob;
.super Lcom/miui/gallery/discovery/AbstractJob;
.source "StatisticsJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/discovery/AbstractJob;-><init>()V

    return-void
.end method

.method private formatProportion(F)J
    .locals 2
    .param p1, "proportion"    # F

    .prologue
    .line 520
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    return-wide v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 11
    .param p1, "size"    # J

    .prologue
    .line 513
    const-wide/32 v2, 0x1dcd6500

    .line 514
    .local v2, "unit":J
    div-long v4, p1, v2

    .line 515
    .local v4, "value":J
    const/high16 v1, 0x3f800000    # 1.0f

    long-to-float v6, v4

    mul-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v1, v6

    .line 516
    .local v0, "result":F
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1fG"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isEverSynced()Z
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT COUNT(*)  FROM cloud WHERE serverType IN (1,2) AND (localFlag = 0 AND serverStatus = \'custom\')"

    .line 120
    .local v1, "querySql":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryAlbumAttributes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT attributes FROM cloud WHERE serverType=0 AND localFile LIKE \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 448
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 457
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 459
    :goto_0
    return v3

    .line 451
    :cond_0
    if-eqz v0, :cond_1

    .line 457
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 459
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method private queryAlbumCountOfCloudBackup(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 251
    const-string v0, "SELECT COUNT(*) FROM cloud WHERE serverType=0 AND (attributes & 1 != 0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    .line 256
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private queryAlbumCountOfOtherShare(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 292
    const-string v0, "SELECT COUNT(*)FROM shareAlbum WHERE serverId IS NOT NULL"

    .line 295
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private queryAlbumCountOfOwnerCreate(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 283
    const-string v0, "SELECT COUNT(*) FROM cloud WHERE serverType=0 AND localFile like \'%MIUI/Gallery/cloud/owner%\' AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    .line 288
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private queryMediaCountByAlbumLocalFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumLocalFile"    # Ljava/lang/String;
    .param p3, "onlyVideo"    # Z

    .prologue
    .line 218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const/4 v1, -0x1

    .line 229
    :goto_0
    return v1

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM cloud WHERE localGroupId = (SELECT _id FROM cloud WHERE LOWER(localFile) = ? LIMIT 1) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v1, " AND serverType=2"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 221
    .end local v0    # "querySql":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private queryMediaCountOfAllAlbums(Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "includeHideMedia"    # Z

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*)  FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 209
    .end local v0    # "querySql":Ljava/lang/String;
    :cond_0
    const-string v1, " AND attributes&16=0"

    goto :goto_0
.end method

.method private queryMediaCountOfFavoritesAlbum(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 233
    const-string v0, "SELECT COUNT(*) FROM extended_cloud WHERE (isFavorite NOT NULL AND isFavorite > 0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    .line 238
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private queryMediaSpace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "appendSelection"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v2, "SELECT SUM(size) FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (localGroupId NOT IN (SELECT _id FROM cloud WHERE serverType=0 AND attributes&64!=0))"

    .line 421
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 426
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 435
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 437
    :goto_0
    return-wide v4

    .line 429
    :cond_1
    if-eqz v0, :cond_2

    .line 430
    const-wide/16 v4, 0x0

    .line 435
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 437
    :goto_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method private querySpecialMediaCountOfSortByModifyAlbum(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 260
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    .line 261
    invoke-interface {v2, v3}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;->getAlbumPathsBySortDate(Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "albumsOrderByDateModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    const/4 v2, -0x1

    .line 279
    :goto_0
    return v2

    .line 265
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND STRFTIME(\'%Y%m%d\',dateModified/1000, \'unixepoch\', \'localtime\')>STRFTIME(\'%Y%m%d\', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, \'unixepoch\', \'localtime\') AND localGroupId IN (   SELECT _id   FROM cloud   WHERE serverType=0   AND (attributes & 4 != 0)   AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_NON_SYSTEM_ALBUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "localFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " COLLATE NOCASE IN (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    .line 277
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "querySql":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private queryVideoCountOfAll(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 242
    const-string v0, "SELECT COUNT(*)  FROM cloud WHERE serverType = 2 AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND attributes&16=0"

    .line 247
    .local v0, "querySql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private recordAlbumsAndImagesCount()V
    .locals 18

    .prologue
    .line 325
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 326
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountOfAllAlbums(Landroid/database/sqlite/SQLiteDatabase;Z)I

    move-result v6

    .line 327
    .local v6, "mediaCountOfAllAlbums":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->queryVideoCountOfAll(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v12

    .line 328
    .local v12, "videoCountOfAllAlbums":I
    const-string v14, "DCIM/Camera"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountByAlbumLocalFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v7

    .line 329
    .local v7, "mediaCountOfCameraAlbum":I
    const-string v14, "DCIM/Camera"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountByAlbumLocalFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v13

    .line 330
    .local v13, "videoCountOfCameraAlbum":I
    const-string v14, "DCIM/Screenshots"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountByAlbumLocalFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v10

    .line 331
    .local v10, "mediaCountOfScreenshotAlbum":I
    const-string v14, "Download"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountByAlbumLocalFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v8

    .line 332
    .local v8, "mediaCountOfDownloadAlbum":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->queryAlbumCountOfCloudBackup(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    .line 333
    .local v2, "albumCountOfCloudBackup":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->queryAlbumCountOfOwnerCreate(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v4

    .line 334
    .local v4, "albumCountOfOwnerCreate":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->queryAlbumCountOfOtherShare(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    .line 335
    .local v3, "albumCountOfOtherShare":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountOfFavoritesAlbum(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v9

    .line 336
    .local v9, "mediaCountOfFavoritesAlbum":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->querySpecialMediaCountOfSortByModifyAlbum(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v11

    .line 338
    .local v11, "specialMediaCountOfSortByModifyAlbum":I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_0

    .line 339
    const-string v14, "albums_and_images_count"

    const-string v15, "image_count_of_all_albums"

    int-to-long v0, v6

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 345
    :cond_0
    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    .line 346
    const-string v14, "albums_and_images_count"

    const-string/jumbo v15, "video_count_of_all_albums"

    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 352
    :cond_1
    const/4 v14, -0x1

    if-eq v7, v14, :cond_2

    .line 353
    const-string v14, "albums_and_images_count"

    const-string v15, "image_count_of_camera_album"

    int-to-long v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 359
    :cond_2
    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 360
    const-string v14, "albums_and_images_count"

    const-string/jumbo v15, "video_count_of_camera_album"

    int-to-long v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 365
    :cond_3
    const/4 v14, -0x1

    if-eq v10, v14, :cond_4

    .line 366
    const-string v14, "albums_and_images_count"

    const-string v15, "image_count_of_screenshot_album"

    int-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 372
    :cond_4
    const/4 v14, -0x1

    if-eq v8, v14, :cond_5

    .line 373
    const-string v14, "albums_and_images_count"

    const-string v15, "image_count_of_download_album"

    int-to-long v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 379
    :cond_5
    const/4 v14, -0x1

    if-eq v2, v14, :cond_6

    .line 380
    const-string v14, "albums_and_images_count"

    const-string v15, "album_count_of_cloud_backup"

    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 386
    :cond_6
    const/4 v14, -0x1

    if-eq v4, v14, :cond_7

    .line 387
    const-string v14, "albums_and_images_count"

    const-string v15, "album_count_of_owner_create"

    int-to-long v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 393
    :cond_7
    const/4 v14, -0x1

    if-eq v3, v14, :cond_8

    .line 394
    const-string v14, "albums_and_images_count"

    const-string v15, "album_count_of_other_share"

    int-to-long v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 400
    :cond_8
    const/4 v14, -0x1

    if-eq v9, v14, :cond_9

    .line 401
    const-string v14, "albums_and_images_count"

    const-string v15, "image_count_of_favorites_album"

    int-to-long v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 407
    :cond_9
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    .line 408
    const-string v14, "albums_and_images_count"

    const-string/jumbo v15, "special_image_count_of_sort_by_modify_and_show_in_home_album"

    int-to-long v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 414
    :cond_a
    return-void
.end method

.method private recordGallerySettings()V
    .locals 15

    .prologue
    .line 38
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 39
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 40
    .local v2, "hasXiaomiAccount":Z
    :goto_0
    const-string v12, "settings"

    const-string v13, "has_xiaomi_account"

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 40
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz v2, :cond_1

    .line 47
    const-string v12, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v12}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 48
    .local v6, "isCloudBackupOn":Z
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v8

    .line 49
    .local v8, "isLocalModeOn":Z
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isAIAlbumEnabled()Z

    move-result v3

    .line 50
    .local v3, "isAIAlbumOn":Z
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v7

    .line 51
    .local v7, "isFaceAlbumOn":Z
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getBackupOnlyInWifi()Z

    move-result v5

    .line 52
    .local v5, "isBackupOnlyWifi":Z
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v11

    .line 53
    .local v11, "isSearchUserSwitchOn":Z
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchBarOpen()Z

    move-result v10

    .line 54
    .local v10, "isSearchBarEnabled":Z
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchAIAlbumOpen()Z

    move-result v9

    .line 55
    .local v9, "isSearchAIAlbumEnabled":Z
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v4

    .line 56
    .local v4, "isAutoDownload":Z
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    .line 57
    .local v1, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    const-string v12, "settings"

    const-string v13, "is_cloud_backup_on_c"

    .line 60
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 57
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v12, "settings"

    const-string v13, "is_local_mode_on_c"

    .line 65
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 62
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v12, "settings"

    const-string v13, "is_face_album_on_c"

    .line 70
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 67
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v12, "settings"

    const-string v13, "is_backup_only_wifi_on_c"

    .line 75
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 72
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v12, "settings"

    const-string v13, "is_ai_album_on_c"

    .line 80
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v12, "settings"

    const-string v13, "is_search_ai_album_enabled_c"

    .line 85
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 82
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v12, "settings"

    const-string v13, "is_search_bar_enabled_c"

    .line 90
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 87
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz v9, :cond_0

    .line 93
    const-string v12, "settings"

    const-string v13, "is_search_user_switch_on_c"

    .line 96
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 93
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v12, "settings"

    const-string v13, "auto_download_on_c"

    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 99
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v4, :cond_1

    .line 105
    const-string v12, "settings"

    const-string v13, "download_type_c"

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 105
    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v1    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v3    # "isAIAlbumOn":Z
    .end local v4    # "isAutoDownload":Z
    .end local v5    # "isBackupOnlyWifi":Z
    .end local v6    # "isCloudBackupOn":Z
    .end local v7    # "isFaceAlbumOn":Z
    .end local v8    # "isLocalModeOn":Z
    .end local v9    # "isSearchAIAlbumEnabled":Z
    .end local v10    # "isSearchBarEnabled":Z
    .end local v11    # "isSearchUserSwitchOn":Z
    :cond_1
    return-void

    .line 39
    .end local v2    # "hasXiaomiAccount":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private recordMediasSpace()V
    .locals 23

    .prologue
    .line 463
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 464
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaSpace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v12

    .line 465
    .local v12, "totalSpace":J
    const-wide/16 v18, -0x1

    cmp-long v18, v12, v18

    if-nez v18, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string v18, "medias_space"

    const-string v19, "medias_space_of_all"

    .line 471
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/miui/gallery/discovery/StatisticsJob;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    .line 468
    invoke-static/range {v18 .. v20}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v4, "localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE \'%s\')"

    .line 477
    .local v4, "albumFormat":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "serverType=1 AND "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "DCIM/Camera"

    aput-object v22, v20, v21

    .line 478
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "appendSelection":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaSpace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    .line 480
    .local v10, "photoSpace":J
    const-wide/16 v18, -0x1

    cmp-long v18, v10, v18

    if-eqz v18, :cond_2

    .line 481
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "medias_space_ratio_of_album_%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Camera-Image"

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, "event":Ljava/lang/String;
    const-string v18, "medias_space"

    const/high16 v19, 0x3f800000    # 1.0f

    long-to-float v0, v10

    move/from16 v20, v0

    mul-float v19, v19, v20

    long-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->formatProportion(F)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v9, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 485
    .end local v9    # "event":Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "serverType=2 AND "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "DCIM/Camera"

    aput-object v22, v20, v21

    .line 486
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaSpace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    .line 488
    const-wide/16 v18, -0x1

    cmp-long v18, v10, v18

    if-eqz v18, :cond_3

    .line 489
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "medias_space_ratio_of_album_%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Camera-Video"

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 490
    .restart local v9    # "event":Ljava/lang/String;
    const-string v18, "medias_space"

    const/high16 v19, 0x3f800000    # 1.0f

    long-to-float v0, v10

    move/from16 v20, v0

    mul-float v19, v19, v20

    long-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->formatProportion(F)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v9, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 493
    .end local v9    # "event":Ljava/lang/String;
    :cond_3
    const-string v6, "serverType=2"

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaSpace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v14

    .line 495
    .local v14, "videoSpace":J
    const-wide/16 v18, -0x1

    cmp-long v18, v14, v18

    if-eqz v18, :cond_4

    .line 496
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "medias_space_ratio_of_album_%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Video"

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 497
    .restart local v9    # "event":Ljava/lang/String;
    const-string v18, "medias_space"

    const/high16 v19, 0x3f800000    # 1.0f

    long-to-float v0, v14

    move/from16 v20, v0

    mul-float v19, v19, v20

    long-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->formatProportion(F)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v9, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 500
    .end local v9    # "event":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "tencent/micromsg/weixin"

    .line 501
    .local v5, "albumPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Lcom/miui/gallery/discovery/StatisticsJob;->queryAlbumAttributes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v7

    .line 502
    .local v7, "attributes":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_0

    int-to-long v0, v7

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x40

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_0

    .line 503
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 504
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaSpace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v16

    .line 505
    .local v16, "weChatSpace":J
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    .line 506
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "medias_space_ratio_of_album_%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "weixin"

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 507
    .restart local v9    # "event":Ljava/lang/String;
    const-string v18, "medias_space"

    const/high16 v19, 0x3f800000    # 1.0f

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    long-to-float v0, v12

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->formatProportion(F)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v9, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private recordOtherProperties()V
    .locals 6

    .prologue
    .line 171
    const-string v3, "Sync"

    const-string/jumbo v4, "sync_auto_downloaded_property"

    .line 174
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isEverAutoDownloaded()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 178
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v2

    .line 179
    .local v2, "hasExternalSDCard":Z
    const-string/jumbo v3, "storage"

    const-string/jumbo v4, "storage_has_external_sd_card"

    .line 180
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz v2, :cond_0

    .line 182
    const-string/jumbo v3, "storage"

    const-string/jumbo v4, "storage_is_external_sd_card_prior_storage"

    .line 183
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->isExternalSDCardPriorStorage()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/gallery/util/StorageUtils;->canWrite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 186
    .local v0, "canWriteSecondaryStorage":Z
    const-string/jumbo v3, "storage"

    const-string/jumbo v4, "storage_can_write_external_sd_card"

    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "canWriteSecondaryStorage":Z
    :cond_0
    return-void
.end method

.method private recordPeopleProperties()V
    .locals 5

    .prologue
    .line 525
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 526
    invoke-virtual {v2}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v2

    .line 525
    invoke-static {v1, v2}, Lcom/miui/gallery/provider/FaceManager;->queryPeopleIdOfRelation(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 527
    .local v0, "peopleUnderMyself":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v1, "people"

    const-string v4, "people_count_under_myself"

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v1, v4, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 529
    return-void

    .line 528
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method private recordSyncState()V
    .locals 18

    .prologue
    .line 124
    const/4 v5, 0x1

    .line 125
    .local v5, "isEverSynced":Z
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 127
    .local v2, "account":Landroid/accounts/Account;
    const-string/jumbo v15, "sync_state_analysis"

    const-string v16, "login_account"

    if-eqz v2, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz v2, :cond_4

    .line 129
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    .line 130
    .local v6, "masterSync":Z
    const-string v14, "com.miui.gallery.cloud.provider"

    invoke-static {v2, v14}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 132
    .local v3, "gallerySync":Z
    const-string/jumbo v14, "sync_state_analysis"

    const-string v15, "master_sync"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz v6, :cond_0

    .line 135
    const-string/jumbo v14, "sync_state_analysis"

    const-string v15, "gallery_sync"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    if-nez v3, :cond_1

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/discovery/StatisticsJob;->isEverSynced()Z

    move-result v5

    .line 141
    const-string/jumbo v14, "sync_state_analysis"

    const-string/jumbo v15, "sync_off_ever_synced"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getCloudSpaceInfo(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;

    move-result-object v4

    .line 143
    .local v4, "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    invoke-virtual {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getTotal()J

    move-result-wide v10

    .line 144
    .local v10, "total":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_1

    .line 145
    invoke-virtual {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getUsed()J

    move-result-wide v12

    .line 146
    .local v12, "used":J
    const/high16 v14, 0x42c80000    # 100.0f

    sub-long v16, v10, v12

    move-wide/from16 v0, v16

    long-to-float v15, v0

    mul-float/2addr v14, v15

    long-to-float v15, v10

    div-float/2addr v14, v15

    float-to-int v8, v14

    .line 148
    .local v8, "percent":I
    const-string/jumbo v14, "sync_state_analysis"

    const-string/jumbo v15, "sync_off_cloud_space_state"

    int-to-long v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 154
    .end local v3    # "gallerySync":Z
    .end local v4    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    .end local v6    # "masterSync":Z
    .end local v8    # "percent":I
    .end local v10    # "total":J
    .end local v12    # "used":J
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 156
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "DCIM/Camera"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/miui/gallery/discovery/StatisticsJob;->queryMediaCountByAlbumLocalFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v7

    .line 158
    .local v7, "mediaCountOfCameraAlbum":I
    const-string/jumbo v14, "sync_state_analysis"

    const-string/jumbo v15, "sync_off_media_count"

    int-to-long v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 159
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "primaryVolume":Ljava/lang/String;
    invoke-static {v9}, Lcom/miui/gallery/util/StorageUtils;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v10

    .line 161
    .restart local v10    # "total":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_2

    .line 162
    const/high16 v14, 0x42c80000    # 100.0f

    invoke-static {v9}, Lcom/miui/gallery/util/StorageUtils;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    mul-float/2addr v14, v15

    long-to-float v15, v10

    div-float/2addr v14, v15

    float-to-int v8, v14

    .line 164
    .restart local v8    # "percent":I
    const-string/jumbo v14, "sync_state_analysis"

    const-string/jumbo v15, "sync_off_local_space_state"

    int-to-long v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 167
    .end local v7    # "mediaCountOfCameraAlbum":I
    .end local v8    # "percent":I
    .end local v9    # "primaryVolume":Ljava/lang/String;
    .end local v10    # "total":J
    :cond_2
    return-void

    .line 127
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 152
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private safeQueryCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 203
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    :goto_0
    return v2

    .line 197
    :cond_0
    if-eqz v0, :cond_1

    .line 203
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method


# virtual methods
.method public execJob()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordGallerySettings()V

    .line 534
    invoke-direct {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordAlbumsAndImagesCount()V

    .line 535
    invoke-virtual {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordMediaTypes()V

    .line 536
    invoke-direct {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordMediasSpace()V

    .line 537
    invoke-direct {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordSyncState()V

    .line 538
    invoke-direct {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordOtherProperties()V

    .line 539
    invoke-direct {p0}, Lcom/miui/gallery/discovery/StatisticsJob;->recordPeopleProperties()V

    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 545
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget v1, p0, Lcom/miui/gallery/discovery/StatisticsJob;->mJobId:I

    invoke-direct {v0, v1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x2

    .line 546
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/32 v2, 0x240c8400

    .line 547
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordMediaTypes()V
    .locals 8

    .prologue
    .line 299
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 300
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT mimeType, COUNT(*)  FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND attributes&16=0 GROUP BY mimeType"

    .line 306
    .local v3, "querySql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 308
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    :cond_0
    const-string v4, "media_type_count"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media_count_of_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .line 313
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 314
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 311
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 320
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 322
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4
.end method
