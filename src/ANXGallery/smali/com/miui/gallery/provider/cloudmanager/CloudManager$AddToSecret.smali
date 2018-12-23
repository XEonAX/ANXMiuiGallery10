.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddToSecret"
.end annotation


# instance fields
.field private mMediaId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2206
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2207
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    .line 2208
    return-void
.end method

.method private addFilePath(Landroid/content/ContentValues;Z)V
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "nameConflict"    # Z

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2362
    const-string v5, "microthumbfile"

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0xc

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    if-eqz p2, :cond_6

    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2364
    .local v3, "tarName":Ljava/lang/String;
    :goto_0
    const-string v5, "fileName"

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2366
    .local v0, "localPath":Ljava/lang/String;
    const-string v5, "MIUI/Gallery/cloud/.secretAlbum"

    invoke-static {v5}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2367
    .local v2, "secretAlbumPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2368
    if-eqz p2, :cond_0

    .line 2369
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    .local v1, "rename":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 2371
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2373
    .end local v1    # "rename":Ljava/io/File;
    :cond_0
    invoke-static {v0, v2}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2374
    invoke-static {v0, v2, v8}, Lcom/miui/gallery/cloud/CloudUtils;->moveImageToFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2376
    :cond_1
    const-string v5, "localFile"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2378
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2380
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v6, v8, [Ljava/lang/String;

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 2383
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2384
    .local v4, "thumbPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2385
    if-eqz p2, :cond_3

    .line 2386
    new-instance v1, Ljava/io/File;

    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    .restart local v1    # "rename":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 2388
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 2390
    .end local v1    # "rename":Ljava/io/File;
    :cond_3
    invoke-static {v4, v2}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2391
    invoke-static {v4, v2, v8}, Lcom/miui/gallery/cloud/CloudUtils;->moveImageToFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 2393
    :cond_4
    const-string/jumbo v5, "thumbnailFile"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2395
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2397
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v6, v8, [Ljava/lang/String;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 2400
    :cond_5
    return-void

    .line 2363
    .end local v0    # "localPath":Ljava/lang/String;
    .end local v2    # "secretAlbumPath":Ljava/lang/String;
    .end local v3    # "tarName":Ljava/lang/String;
    .end local v4    # "thumbPath":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method static canAddSecret(Landroid/content/Context;Landroid/database/Cursor;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    const/16 v1, -0x6b

    const/4 v6, 0x4

    .line 2403
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2404
    const/16 v1, -0x6a

    .line 2426
    :cond_0
    :goto_0
    return v1

    .line 2406
    :cond_1
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2409
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2410
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2411
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2412
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;)I

    move-result v2

    .line 2413
    .local v2, "result":I
    if-ne v2, v6, :cond_2

    .line 2414
    const/16 v1, -0x6c

    goto :goto_0

    .line 2415
    :cond_2
    if-nez v2, :cond_0

    .line 2420
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2421
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v2

    .line 2422
    .local v2, "result":J
    const-wide/16 v4, -0x6f

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 2423
    const/16 v1, -0x6f

    goto :goto_0

    .line 2426
    .end local v2    # "result":J
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkConflict(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x0

    .line 2325
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2326
    .local v11, "sha1":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2327
    .local v10, "fileName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2328
    const/4 v8, 0x0

    .line 2330
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "sha1"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "fileName"

    aput-object v3, v2, v0

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (sha1 = ? OR fileName = ?) AND localGroupId=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0

    const/4 v0, 0x1

    aput-object v10, v4, v0

    const/4 v0, 0x2

    const-wide/16 v6, -0x3e8

    .line 2338
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 2330
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2340
    if-eqz v8, :cond_3

    .line 2341
    const/4 v9, 0x0

    .line 2342
    .local v9, "fileConflict":Z
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2343
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2344
    const/16 v0, -0x68

    .line 2355
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2358
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "fileConflict":Z
    :goto_1
    return v0

    .line 2346
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "fileConflict":Z
    :cond_1
    if-nez v9, :cond_0

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    const/4 v9, 0x1

    goto :goto_0

    .line 2350
    :cond_2
    if-eqz v9, :cond_3

    .line 2351
    const/16 v0, -0x69

    .line 2355
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v9    # "fileConflict":Z
    :cond_3
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v0, v12

    .line 2358
    goto :goto_1

    .line 2355
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private deleteAllWithSameSha1(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Z)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "deleteTarget"    # Z

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2296
    .local v13, "sha1":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2298
    .local v14, "subNotDeleteTar":Ljava/lang/String;
    const-string v3, "sha1=? AND localGroupId!=-1000"

    .line 2300
    .local v3, "where":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2304
    :cond_0
    const/4 v10, 0x0

    .line 2306
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2307
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2308
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [J

    .line 2309
    .local v8, "ids":[J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 2310
    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2311
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v8, v12

    .line 2309
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2313
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v7

    const/16 v9, 0x24

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    .end local v8    # "ids":[J
    .end local v12    # "i":I
    :cond_2
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2322
    .end local v3    # "where":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "subNotDeleteTar":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 2316
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "subNotDeleteTar":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 2317
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CloudManager"

    invoke-static {v0, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2319
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v13, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->canAddSecret(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v9

    .line 2224
    .local v9, "result":I
    if-gez v9, :cond_1

    .line 2225
    int-to-long v6, v9

    .line 2290
    :cond_0
    :goto_0
    return-wide v6

    .line 2227
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    .line 2228
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->checkConflict(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v4

    .line 2229
    .local v4, "check":I
    const/16 v13, -0x68

    if-ne v4, v13, :cond_2

    .line 2230
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->deleteAllWithSameSha1(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Z)V

    .line 2231
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    goto :goto_0

    .line 2233
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2234
    .local v8, "localFlag":I
    const-wide/16 v6, -0x65

    .line 2235
    .local v6, "id":J
    const/4 v13, 0x7

    if-eq v8, v13, :cond_3

    const/16 v13, 0x8

    if-ne v8, v13, :cond_6

    .line 2237
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2238
    .local v12, "targetInserts":Landroid/content/ContentValues;
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v13, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2239
    const-string v13, "localFlag"

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2240
    const/16 v13, -0x69

    if-ne v4, v13, :cond_5

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->addFilePath(Landroid/content/ContentValues;Z)V

    .line 2241
    const-string v13, "localGroupId"

    const-wide/16 v14, -0x3e8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2243
    const-string v13, "cloud"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2244
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_4

    .line 2245
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v12}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 2246
    const-string v13, "cloud"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2247
    .local v5, "count":I
    if-lez v5, :cond_4

    .line 2248
    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 2286
    .end local v5    # "count":I
    .end local v12    # "targetInserts":Landroid/content/ContentValues;
    :cond_4
    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_0

    .line 2288
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->deleteAllWithSameSha1(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Z)V

    goto/16 :goto_0

    .line 2240
    .restart local v12    # "targetInserts":Landroid/content/ContentValues;
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 2251
    .end local v12    # "targetInserts":Landroid/content/ContentValues;
    :cond_6
    if-eqz v8, :cond_9

    .line 2254
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2255
    .local v10, "srcUpdates":Landroid/content/ContentValues;
    const-string v13, "localGroupId"

    const-wide/16 v14, -0x3e8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2256
    const/16 v13, -0x69

    if-ne v4, v13, :cond_8

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->addFilePath(Landroid/content/ContentValues;Z)V

    .line 2257
    const-string v13, "cloud"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2258
    .restart local v5    # "count":I
    if-lez v5, :cond_4

    .line 2259
    if-eqz p2, :cond_7

    .line 2260
    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v10}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2262
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    goto :goto_2

    .line 2256
    .end local v5    # "count":I
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 2266
    .end local v10    # "srcUpdates":Landroid/content/ContentValues;
    :cond_9
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2267
    .restart local v10    # "srcUpdates":Landroid/content/ContentValues;
    const-string v13, "localFlag"

    const/16 v14, 0xb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2268
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2269
    .local v11, "targInserts":Landroid/content/ContentValues;
    const-string v13, "localFlag"

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2270
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v13, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2271
    const/16 v13, -0x69

    if-ne v4, v13, :cond_a

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->addFilePath(Landroid/content/ContentValues;Z)V

    .line 2272
    const-string v13, "fromLocalGroupId"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2273
    const-string v13, "localGroupId"

    const-wide/16 v14, -0x3e8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2274
    const-string v13, "localImageId"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2276
    const-string v13, "cloud"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2277
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_4

    .line 2278
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v11}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 2279
    const-string v13, "cloud"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v18, v0

    .line 2280
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 2279
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2281
    .restart local v5    # "count":I
    if-lez v5, :cond_4

    .line 2282
    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2271
    .end local v5    # "count":I
    :cond_a
    const/4 v13, 0x0

    goto :goto_4
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2212
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2213
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    .line 2215
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2213
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2218
    :cond_0
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2431
    const-string v0, "AddToSecret{%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
