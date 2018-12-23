.class Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeTask"
.end annotation


# instance fields
.field private mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field final synthetic this$0:Lcom/miui/gallery/provider/cache/MediaManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p2, "DBHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 265
    return-void
.end method

.method private getLoadSortBy()Ljava/lang/String;
    .locals 6

    .prologue
    .line 403
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    invoke-interface {v1, v2}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;->getAlbumIdsBySortDate(Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;)Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "sortByModifyAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    const-string v1, "mixedDateTime"

    .line 407
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(case when %s in (%s) then %s else %s end)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "localGroupId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, ","

    .line 408
    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "dateModified"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "mixedDateTime"

    aput-object v5, v3, v4

    .line 407
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private loadFullPart(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 346
    const-string v0, ".provider.cache.MediaManager"

    const-string/jumbo v1, "start load second part"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 348
    .local v10, "begin":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 352
    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->getLoadSortBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " DESC LIMIT -1 OFFSET "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p1

    .line 350
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 359
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 379
    :goto_0
    return-void

    .line 364
    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 365
    const/4 v9, 0x0

    .line 366
    .local v9, "count":I
    :cond_1
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v0, v12}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v9, v9, 0x1

    .line 369
    const/16 v0, 0x1000

    if-eq v9, v0, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_2
    const/4 v9, 0x0

    .line 371
    invoke-direct {p0, v13}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->publishResult(Ljava/util/List;)V

    .line 372
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 376
    .end local v9    # "count":I
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9    # "count":I
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 378
    const-string v0, ".provider.cache.MediaManager"

    const-string v1, "load second part cost: %d. current position = %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 303
    const-string v2, ".provider.cache.MediaManager"

    const-string v3, "read first part"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 305
    .local v16, "start":J
    const/4 v11, 0x0

    .line 309
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "cloud"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v2, v2, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 311
    invoke-interface {v2}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->getProjection()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->getLoadSortBy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " DESC"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x80

    .line 315
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    .line 309
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 327
    if-nez v11, :cond_0

    .line 328
    const-string v2, ".provider.cache.MediaManager"

    const-string v3, "fill provider failed with a null cursor"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v2, 0x0

    .line 341
    :goto_0
    return v2

    .line 316
    :catch_0
    move-exception v12

    .line 317
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v14

    .line 318
    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "dbversion"

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v2, "exception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "db_helper"

    const-string v3, "db_mediamanager_load"

    invoke-static {v2, v3, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gallery/util/DebugUtil;->exportDB(Z)V

    .line 323
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->deleteDatabase()Z

    .line 324
    throw v12

    .line 333
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v13, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v2, v2, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v2, v11}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 341
    .end local v13    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 337
    .restart local v13    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->publishResult(Ljava/util/List;)V

    .line 338
    const-string v2, ".provider.cache.MediaManager"

    const-string v3, "load %d item for the first time, costs %dms"

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    .line 341
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 339
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private lockedLoadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 291
    :try_start_0
    const-string v0, ".provider.cache.MediaManager"

    const-string v2, "read albums"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/AlbumDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->load(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 293
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$700(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->load(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->loadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 296
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$802(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 297
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return v0

    .line 296
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$802(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 297
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0

    .line 299
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private notifyProgressUpdate()V
    .locals 4

    .prologue
    .line 391
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;

    .line 394
    .local v0, "listener":Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;
    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;->onProgressUpdate()V

    goto :goto_0

    .line 399
    .end local v0    # "listener":Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    return-void
.end method

.method private publishResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v2, v1, Lcom/miui/gallery/provider/cache/MediaManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 384
    .local v0, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v3, v3, Lcom/miui/gallery/provider/cache/MediaManager;->mCache:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    .end local v0    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 386
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->notifyProgressUpdate()V

    .line 387
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 269
    const-string v1, ".provider.cache.MediaManager"

    const-string v2, "acquire initialize lock"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    const-string v1, ".provider.cache.MediaManager"

    const-string/jumbo v2, "start initialize"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 273
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->lockedLoadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, ".provider.cache.MediaManager"

    const-string v2, "read second part"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 276
    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->loadFullPart(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$102(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$202(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 281
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$300(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 282
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 284
    monitor-exit v2

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 280
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$202(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 281
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$300(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 282
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 283
    :try_start_2
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 284
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
