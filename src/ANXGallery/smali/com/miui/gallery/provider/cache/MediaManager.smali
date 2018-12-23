.class public Lcom/miui/gallery/provider/cache/MediaManager;
.super Lcom/miui/gallery/provider/cache/CacheManager;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;,
        Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;,
        Lcom/miui/gallery/provider/cache/MediaManager$SingletonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cache/CacheManager",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

.field private mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

.field private mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mInitializeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mIsFullLoadDone:Z

.field private volatile mIsLoadStarted:Z

.field private volatile mIsMinimumLoadDone:Z

.field private final mMinimumLoadLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/CacheManager;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsLoadStarted:Z

    .line 41
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    .line 43
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z

    .line 44
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/AlbumDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    .line 54
    new-instance v0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mCache:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$Generator;

    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/MediaItem$Generator;-><init>(Lcom/miui/gallery/provider/cache/AlbumDelegate;Lcom/miui/gallery/provider/cache/FavoritesDelegate;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 57
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/cache/MediaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/AlbumDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z

    return p1
.end method

.method public static getInstance()Lcom/miui/gallery/provider/cache/MediaManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/provider/cache/MediaManager;

    return-object v0
.end method

.method private transformOrderByColumnIndex(I)I
    .locals 0
    .param p1, "orderByColumnIndex"    # I

    .prologue
    .line 215
    sparse-switch p1, :sswitch_data_0

    .line 226
    :goto_0
    return p1

    .line 217
    :sswitch_0
    const/16 p1, 0x1f

    .line 218
    goto :goto_0

    .line 220
    :sswitch_1
    const/16 p1, 0x13

    .line 221
    goto :goto_0

    .line 223
    :sswitch_2
    const/16 p1, 0x25

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x1e -> :sswitch_0
        0x24 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addInitializeListener(Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;)V
    .locals 2
    .param p1, "initializeListener"    # Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    if-eqz v0, :cond_0

    .line 448
    const-string v0, ".provider.cache.MediaManager"

    const-string v1, "no need to add listener after full load done!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitializeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAttributes(J)V
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->delete(J)V

    .line 250
    return-void
.end method

.method public ensureMinimumPartDone()V
    .locals 8

    .prologue
    .line 430
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z

    if-eqz v1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 434
    .local v2, "start":J
    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 435
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsMinimumLoadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 437
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mMinimumLoadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    const-string v1, ".provider.cache.MediaManager"

    const-string/jumbo v4, "wait for minimum part loading cost : %dms "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 442
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected filterLogInfo(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 114
    .local v0, "filterValues":Landroid/content/ContentValues;
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 115
    const-string v1, "extraGPS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 116
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 117
    const-string v1, "exifGPSLatitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 118
    const-string v1, "exifGPSLongitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 119
    const-string v1, "exifGPSAltitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 123
    .end local v0    # "filterValues":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialized()Z
    .locals 8

    .prologue
    .line 414
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z

    if-eqz v1, :cond_0

    .line 415
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    .line 426
    :goto_0
    return v1

    .line 417
    :cond_0
    const-string v1, ".provider.cache.MediaManager"

    const-string v4, "not initialized, waiting lock from: %s"

    const-string v5, "\n\t"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 420
    .local v2, "start":J
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFullLoadDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 421
    const-string v1, ".provider.cache.MediaManager"

    const-string/jumbo v4, "wait full load done costs %d ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_1
    const-string v1, ".provider.cache.MediaManager"

    const-string v4, "initialization finished: %b"

    iget-boolean v5, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mInitialized:Z

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, ".provider.cache.MediaManager"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 78
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 80
    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v0, "%s AND (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2)"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 81
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 78
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 83
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 84
    .local v9, "count":I
    if-eqz v10, :cond_1

    .line 86
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v0, v10}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 88
    .local v11, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mCache:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v1

    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local v11    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_1
    return v9
.end method

.method public insert(JLandroid/content/ContentValues;)J
    .locals 3
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 102
    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cache/MediaManager;->isItemDeleted(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheManager;->insert(JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 105
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public insertAttributes(JJ)V
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 244
    const-string v0, ".provider.cache.MediaManager"

    const-string v1, "insert attributes[%d] for album[%d]"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->insert(JJ)V

    .line 246
    return-void
.end method

.method public insertToFavorites(Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->insertToFavorites(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public isItemDeleted(Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 135
    const-string v3, "localFlag"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 136
    .local v0, "localFlag":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 139
    :cond_0
    const-string v3, ".provider.cache.MediaManager"

    const-string v4, "find a deleted local flag"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return v2

    .line 143
    :cond_1
    const-string v3, "serverStatus"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    const-string v3, "serverStatus"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "status":Ljava/lang/String;
    const-string v3, "deleted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "purged"

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    :cond_2
    const-string v3, ".provider.cache.MediaManager"

    const-string v4, "find a deleted server type"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v1    # "status":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized load(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsLoadStarted:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsFullLoadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mIsLoadStarted:Z

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;-><init>(Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/sqlite/SQLiteOpenHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onCreateCursor([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 24
    .param p1, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 157
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    new-instance v6, Lcom/miui/gallery/provider/cache/RawCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v6, v0, v1, v2}, Lcom/miui/gallery/provider/cache/RawCursor;-><init>(Ljava/util/List;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;)V

    .line 159
    .local v6, "cursor":Landroid/database/AbstractCursor;
    if-eqz p5, :cond_6

    const-string v19, "extra_generate_header"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 160
    const-string v19, ".provider.cache.MediaManager"

    const-string v20, "caller need a header data, start generate for %d"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const/16 v19, 0x20

    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 163
    .local v15, "spacePos":I
    const/16 v19, 0x0

    if-lez v15, :cond_0

    .end local v15    # "spacePos":I
    :goto_0
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "identifier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mQueryFactory:Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v14

    .line 165
    .local v14, "orderByColumnIndex":I
    if-gez v14, :cond_1

    .line 166
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 163
    .end local v8    # "identifier":Ljava/lang/String;
    .end local v14    # "orderByColumnIndex":I
    .restart local v15    # "spacePos":I
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_0

    .line 168
    .end local v15    # "spacePos":I
    .restart local v8    # "identifier":Ljava/lang/String;
    .restart local v14    # "orderByColumnIndex":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/gallery/provider/cache/MediaManager;->transformOrderByColumnIndex(I)I

    move-result v14

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 171
    .local v16, "start":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v5, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v18, "startPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v13, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v12, "locationTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 176
    .local v11, "last":Lcom/miui/gallery/provider/cache/MediaItem;
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 177
    .local v4, "count":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 178
    .local v9, "index":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 179
    .local v10, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    if-nez v11, :cond_3

    .line 180
    move-object v11, v10

    .line 181
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v10}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 198
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 199
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v10, v11, v14}, Lcom/miui/gallery/provider/cache/MediaItem;->columnEquals(Lcom/miui/gallery/provider/cache/CacheItem;I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 184
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 185
    invoke-virtual {v10}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 190
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 192
    invoke-virtual {v10}, Lcom/miui/gallery/provider/cache/MediaItem;->getLocation()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object v11, v10

    .line 195
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v10    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :cond_5
    const-string v19, ".provider.cache.MediaManager"

    const-string v20, "header generated"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v7, "extras":Landroid/os/Bundle;
    const-string v19, "extra_timeline_item_count_in_group"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 206
    const-string v19, "extra_timeline_group_start_pos"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 207
    const-string v19, "extra_timeline_group_start_locations"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 208
    invoke-virtual {v6, v7}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 209
    const-string v19, ".provider.cache.MediaManager"

    const-string v20, "generate cursor cost: %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    .end local v4    # "count":Ljava/lang/Integer;
    .end local v5    # "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "identifier":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "last":Lcom/miui/gallery/provider/cache/MediaItem;
    .end local v12    # "locationTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "orderByColumnIndex":I
    .end local v16    # "start":J
    .end local v18    # "startPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    return-object v6
.end method

.method public removeFromFavorites(Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mFavoritesDelegate:Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->removeFromFavorites(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 128
    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cache/MediaManager;->isItemDeleted(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cache/CacheManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public updateAttributes(JJ)V
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 239
    const-string v0, ".provider.cache.MediaManager"

    const-string/jumbo v1, "update album[%d]\'s attributes to %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->update(JJ)V

    .line 241
    return-void
.end method

.method public updateAttributes(JJZZ)V
    .locals 11
    .param p1, "albumId"    # J
    .param p3, "attributeBit"    # J
    .param p5, "set"    # Z
    .param p6, "manual"    # Z

    .prologue
    .line 230
    const-string v6, ".provider.cache.MediaManager"

    const-string/jumbo v7, "updating attributesBit[%d] for album[%d] to %s"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    iget-object v6, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v6, p1, p2}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->queryAttributes(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 232
    .local v2, "attributes":J
    invoke-static/range {p3 .. p6}, Lcom/miui/gallery/provider/AlbumManager;->packageAttributeBit(JZZ)J

    move-result-wide v4

    .line 233
    .local v4, "packageAttibuteBit":J
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {p3, p4, v6, v7}, Lcom/miui/gallery/provider/AlbumManager;->packageAttributeBit(JZZ)J

    move-result-wide v0

    .line 234
    .local v0, "attributeBitMask":J
    const-wide/16 v6, -0x1

    xor-long/2addr v6, v0

    and-long/2addr v6, v2

    or-long v2, v6, v4

    .line 235
    iget-object v6, p0, Lcom/miui/gallery/provider/cache/MediaManager;->mAlbumDelegate:Lcom/miui/gallery/provider/cache/AlbumDelegate;

    invoke-virtual {v6, p1, p2, v2, v3}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->update(JJ)V

    .line 236
    return-void
.end method
