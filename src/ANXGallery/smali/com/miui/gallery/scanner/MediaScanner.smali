.class public Lcom/miui/gallery/scanner/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;,
        Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;,
        Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;,
        Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;
    }
.end annotation


# static fields
.field private static final ALBUM_NAME_CONFLICT_PROJECTION:[Ljava/lang/String;

.field private static final ALBUM_PROJECTION:[Ljava/lang/String;

.field private static final POST_SCAN_PROJECTION:[Ljava/lang/String;

.field private static final SPECIAL_TYPE_FLAGS_PROJECTION:[Ljava/lang/String;

.field private static final SPECIAL_TYPE_FLAGS_WHERE:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

.field private static sServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "serverId"

    aput-object v1, v0, v4

    const-string v1, "dateModified"

    aput-object v1, v0, v5

    const-string v1, "localFlag"

    aput-object v1, v0, v6

    const-string v1, "serverStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attributes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_NAME_CONFLICT_PROJECTION:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sha1"

    aput-object v1, v0, v4

    const-string v1, "localFile"

    aput-object v1, v0, v5

    const-string v1, "localFlag"

    aput-object v1, v0, v6

    const-string v1, "localFile"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->POST_SCAN_PROJECTION:[Ljava/lang/String;

    .line 164
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "localFile"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->SPECIAL_TYPE_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id > ? AND serverType = 1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_ORIGIN_FILE_VALID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->SPECIAL_TYPE_FLAGS_WHERE:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/database/Cursor;JLcom/miui/gallery/provider/ContentProviderBatchOperator;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/miui/gallery/provider/ContentProviderBatchOperator;
    .param p5, "x4"    # Ljava/util/ArrayList;

    .prologue
    .line 66
    invoke-static/range {p0 .. p5}, Lcom/miui/gallery/scanner/MediaScanner;->checkAndUpdateFileInfo(Landroid/content/Context;Landroid/database/Cursor;JLcom/miui/gallery/provider/ContentProviderBatchOperator;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->queryAndUpdateAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->updateAlbumDateModified(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->insertAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScanner;->recordHiddenAlbum(Ljava/lang/String;)V

    return-void
.end method

.method private static albumQueryOrInsert(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->queryAndUpdateAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v0

    .line 1038
    .local v0, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->insertAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v0

    .end local v0    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :cond_0
    return-object v0
.end method

.method private static checkAlbumNameConflict(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 1222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1244
    :goto_0
    return v0

    .line 1225
    :cond_0
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner;->getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->containsName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1226
    goto :goto_0

    .line 1228
    :cond_1
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner;->getServerReservedAlbumNamesStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->containsName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1229
    goto :goto_0

    .line 1231
    :cond_2
    const/4 v6, 0x0

    .line 1233
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_NAME_CONFLICT_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverType=0 AND fileName = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1236
    if-nez v6, :cond_3

    .line 1237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query album cursor null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1239
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 1240
    const/4 v0, 0x3

    .line 1244
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move v0, v7

    goto :goto_0
.end method

.method private static checkAndUpdateFileInfo(Landroid/content/Context;Landroid/database/Cursor;JLcom/miui/gallery/provider/ContentProviderBatchOperator;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "id"    # J
    .param p4, "batchOperator"    # Lcom/miui/gallery/provider/ContentProviderBatchOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "J",
            "Lcom/miui/gallery/provider/ContentProviderBatchOperator;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/deleterecorder/DeleteRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    const/16 v5, 0xd

    .line 377
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "thumbnail":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    const-string/jumbo v3, "thumbnailFile"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v3, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const-string v4, "MediaScanner"

    invoke-direct {v3, v5, v1, v4}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "localFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    const-string v3, "localFile"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v3, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const-string v4, "MediaScanner"

    invoke-direct {v3, v5, v0, v4}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 391
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$CloudWriteBulkNotify;->CLOUD_WRITE_BULK_NOTIFY_URI:Landroid/net/Uri;

    .line 392
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 393
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 394
    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 395
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 391
    invoke-virtual {p4, p0, v3}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->add(Landroid/content/Context;Landroid/content/ContentProviderOperation;)V

    .line 398
    :cond_2
    return-void
.end method

.method private static cleanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const-string v0, "MediaScanner"

    const-string v1, "delete %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v1, "localFile = ? COLLATE NOCASE AND (serverType=1 OR serverType=2) AND (localFlag=7 OR localFlag=8) AND serverStatus IS NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/util/SafeDBUtil;->safeDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    new-instance v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v1, 0xe

    const-string v2, "MediaScanner"

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 304
    :cond_0
    return-void
.end method

.method public static cleanup(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 210
    .local v18, "start":J
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, ""

    aput-object v5, v12, v3

    .line 211
    .local v12, "selectionArgs":[Ljava/lang/String;
    new-instance v7, Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-direct {v7, v3}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;-><init>(Ljava/lang/String;)V

    .line 212
    .local v7, "batchOperator":Lcom/miui/gallery/provider/ContentProviderBatchOperator;
    new-instance v4, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v5, "_id"

    invoke-direct {v4, v3, v5}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 213
    .local v4, "deleter":Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->getEverCleanUnsupportUploadItems()Z

    move-result v6

    .line 214
    .local v6, "everCleanUnsupportedItems":Z
    const/4 v15, 0x1

    .line 215
    .local v15, "isCleanSuccess":Z
    const/high16 v16, -0x80000000

    .line 217
    .local v16, "lastId":I
    :try_start_0
    new-instance v2, Lcom/miui/gallery/scanner/MediaScanner$1;

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/scanner/MediaScanner$1;-><init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;Landroid/content/Context;ZLcom/miui/gallery/provider/ContentProviderBatchOperator;)V

    .line 268
    .local v2, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/lang/Integer;>;"
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    const/4 v15, 0x0

    .line 284
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->flushForResult(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    .line 285
    :goto_0
    if-eqz v15, :cond_1

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    .line 287
    if-nez v6, :cond_1

    .line 288
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverCleanUnsupportUploadItems()V

    .line 295
    :cond_1
    :goto_1
    return-void

    .line 284
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 272
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v3

    .line 273
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/16 v5, 0x3e8

    .line 274
    invoke-static {v3, v5}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/scanner/MediaScanner;->POST_SCAN_PROJECTION:[Ljava/lang/String;

    const-string v11, "_id>? AND (serverType=1 OR serverType=2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (localGroupId!=-1000)"

    sget-object v3, Lcom/miui/gallery/scanner/MediaScanner;->POST_SCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v13, v3, v5

    move-object/from16 v8, p0

    move-object v14, v2

    .line 273
    invoke-static/range {v8 .. v14}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .local v17, "result":Ljava/lang/Integer;
    if-nez v17, :cond_5

    .line 277
    const/4 v15, 0x0

    .line 278
    const v16, 0x7fffffff

    .line 282
    :goto_2
    const v3, 0x7fffffff

    move/from16 v0, v16

    if-lt v0, v3, :cond_0

    .line 284
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->flushForResult(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v15, 0x1

    .line 285
    :goto_3
    if-eqz v15, :cond_4

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    .line 287
    if-nez v6, :cond_4

    .line 288
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverCleanUnsupportUploadItems()V

    .line 292
    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/miui/gallery/scanner/MediaScanner;->scannerCorrectLogic(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 293
    invoke-static/range {p0 .. p1}, Lcom/miui/gallery/scanner/MediaScanner;->fillSpecialTypeFlags(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 294
    const-string v3, "MediaScanner"

    const-string v5, "cleanup costs: %d"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 280
    :cond_5
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    goto :goto_2

    .line 284
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .end local v2    # "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/lang/Integer;>;"
    .end local v17    # "result":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->flushForResult(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v15, 0x1

    .line 285
    :goto_4
    if-eqz v15, :cond_7

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    .line 287
    if-nez v6, :cond_7

    .line 288
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverCleanUnsupportUploadItems()V

    :cond_7
    throw v3

    .line 284
    :cond_8
    const/4 v15, 0x0

    goto :goto_4
.end method

.method private static doScanSingleFile(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isInternalScanRequest"    # Z

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 555
    .local v11, "parentPath":Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-static {v11}, Lcom/miui/gallery/scanner/MediaScanner;->isScannableDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    .end local v7    # "file":Ljava/io/File;
    .end local v11    # "parentPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local v7    # "file":Ljava/io/File;
    .restart local v11    # "parentPath":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getSupportUploadMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 559
    .local v10, "mimeType":Ljava/lang/String;
    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/scanner/MediaScanner;->albumQueryOrInsert(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v6

    .line 562
    .local v6, "album":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    if-eqz v6, :cond_0

    .line 565
    new-instance v0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v3, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;-><init>(ZLcom/miui/gallery/scanner/MediaBulkInserter;Lcom/miui/gallery/provider/ContentProviderBatchOperator;ZZ)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0, p0, v1, v6}, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->scanFile(Landroid/content/Context;Ljava/io/File;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)J

    move-result-wide v8

    .line 567
    .local v8, "mediaId":J
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->cleanFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 568
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 569
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/data/LocationManager;->loadLocationAsync(J)V

    goto :goto_0

    .line 574
    .end local v6    # "album":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .end local v8    # "mediaId":J
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "parentPath":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->cleanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static fillSpecialTypeFlags(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 401
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->isEverFillSpecialTypeFlags()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 405
    .local v16, "start":J
    const/4 v12, 0x1

    .line 406
    .local v12, "isSucceed":Z
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v6, v2

    .line 407
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/high16 v13, -0x80000000

    .line 409
    .local v13, "lastId":I
    new-instance v8, Lcom/miui/gallery/scanner/MediaScanner$3;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v8, v0, v1}, Lcom/miui/gallery/scanner/MediaScanner$3;-><init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Landroid/content/Context;)V

    .line 441
    .local v8, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    const/4 v12, 0x0

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v16

    .line 463
    .local v10, "cost":J
    if-eqz v12, :cond_2

    .line 464
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverFillSpecialTypeFlags()V

    .line 465
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v14, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cost(ms)"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v2, "media_scanner"

    const-string v3, "fill_special_type_flags"

    invoke-static {v2, v3, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v3, "MediaScanner"

    const-string v4, "fill special type flags [%s], costs [%d] ms"

    if-eqz v12, :cond_3

    const-string/jumbo v2, "succeed"

    .line 474
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 473
    invoke-static {v3, v4, v2, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "failed"

    goto :goto_1

    .line 445
    .end local v10    # "cost":J
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 446
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/16 v3, 0x3e8

    .line 447
    invoke-static {v2, v3}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/scanner/MediaScanner;->SPECIAL_TYPE_FLAGS_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/miui/gallery/scanner/MediaScanner;->SPECIAL_TYPE_FLAGS_WHERE:Ljava/lang/String;

    const-string v7, "_id ASC"

    move-object/from16 v2, p0

    .line 446
    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .local v15, "result":Ljava/lang/Integer;
    if-nez v15, :cond_6

    .line 452
    const/4 v12, 0x0

    .line 453
    const v13, 0x7fffffff

    .line 457
    :goto_2
    const v2, 0x7fffffff

    if-lt v13, v2, :cond_1

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v16

    .line 463
    .restart local v10    # "cost":J
    if-eqz v12, :cond_5

    .line 464
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverFillSpecialTypeFlags()V

    .line 465
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 466
    .restart local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cost(ms)"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v2, "media_scanner"

    const-string v3, "fill_special_type_flags"

    invoke-static {v2, v3, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v3, "MediaScanner"

    const-string v4, "fill special type flags [%s], costs [%d] ms"

    if-eqz v12, :cond_7

    const-string/jumbo v2, "succeed"

    .line 474
    :goto_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 473
    invoke-static {v3, v4, v2, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 455
    .end local v10    # "cost":J
    :cond_6
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    goto :goto_2

    .line 473
    .restart local v10    # "cost":J
    :cond_7
    const-string v2, "failed"

    goto :goto_3

    .line 458
    .end local v10    # "cost":J
    .end local v15    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 459
    .local v9, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 460
    :try_start_3
    const-string v2, "MediaScanner"

    const-string v3, "Encounter error when fill special type flags: [%s]"

    invoke-static {v2, v3, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v16

    .line 463
    .restart local v10    # "cost":J
    if-eqz v12, :cond_8

    .line 464
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverFillSpecialTypeFlags()V

    .line 465
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 466
    .restart local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cost(ms)"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v2, "media_scanner"

    const-string v3, "fill_special_type_flags"

    invoke-static {v2, v3, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v3, "MediaScanner"

    const-string v4, "fill special type flags [%s], costs [%d] ms"

    if-eqz v12, :cond_9

    const-string/jumbo v2, "succeed"

    .line 474
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 473
    invoke-static {v3, v4, v2, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "failed"

    goto :goto_4

    .line 462
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v10    # "cost":J
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v10, v4, v16

    .line 463
    .restart local v10    # "cost":J
    if-eqz v12, :cond_a

    .line 464
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setEverFillSpecialTypeFlags()V

    .line 465
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 466
    .restart local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cost(ms)"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v2, "media_scanner"

    const-string v4, "fill_special_type_flags"

    invoke-static {v2, v4, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string v4, "MediaScanner"

    const-string v5, "fill special type flags [%s], costs [%d] ms"

    if-eqz v12, :cond_b

    const-string/jumbo v2, "succeed"

    .line 474
    :goto_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 473
    invoke-static {v4, v5, v2, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 475
    throw v3

    .line 473
    :cond_b
    const-string v2, "failed"

    goto :goto_5
.end method

.method private static findAlbumByLocalPath(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1109
    const/4 v6, 0x0

    .line 1111
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverType=0 AND localFile = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1113
    if-nez v6, :cond_0

    .line 1114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query album cursor null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1116
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    new-instance v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;-><init>(Lcom/miui/gallery/scanner/MediaScanner$1;)V

    .line 1118
    .local v7, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    .line 1119
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerID:Ljava/lang/String;

    .line 1120
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    .line 1121
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mLocalFlag:I

    .line 1122
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerStatus:Ljava/lang/String;

    .line 1123
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    .line 1124
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v7    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :goto_0
    return-object v7

    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method private static findAlbumByName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1159
    const/4 v6, 0x0

    .line 1161
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverType=0 AND fileName = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1163
    if-nez v6, :cond_0

    .line 1164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query album cursor null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1166
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    new-instance v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;-><init>(Lcom/miui/gallery/scanner/MediaScanner$1;)V

    .line 1168
    .local v7, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    .line 1169
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerID:Ljava/lang/String;

    .line 1170
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    .line 1171
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mLocalFlag:I

    .line 1172
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerStatus:Ljava/lang/String;

    .line 1173
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    .line 1174
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1179
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v7    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :goto_0
    return-object v7

    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method private static findAlbumByServerId(Landroid/content/Context;J)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # J

    .prologue
    const/4 v7, 0x0

    .line 1134
    const/4 v6, 0x0

    .line 1136
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1137
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 1136
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1138
    if-nez v6, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query album cursor null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1141
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    new-instance v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;-><init>(Lcom/miui/gallery/scanner/MediaScanner$1;)V

    .line 1143
    .local v7, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    .line 1144
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerID:Ljava/lang/String;

    .line 1145
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    .line 1146
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mLocalFlag:I

    .line 1147
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerStatus:Ljava/lang/String;

    .line 1148
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    .line 1149
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v7    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :goto_0
    return-object v7

    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method private static generatorValuesForSpecialAlbum(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 1092
    const/4 v2, 0x0

    .line 1093
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1094
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraRecordValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1105
    :cond_0
    :goto_0
    return-object v2

    .line 1095
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1096
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsRecordValues()Landroid/content/ContentValues;

    move-result-object v2

    goto :goto_0

    .line 1097
    :cond_2
    const-string v3, "MIUI/Gallery/cloud"

    invoke-static {p1, v3}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1098
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "values":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1099
    .restart local v2    # "values":Landroid/content/ContentValues;
    const-wide/16 v0, 0x0

    .line 1100
    .local v0, "attributes":J
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1101
    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    .line 1103
    :cond_3
    const-string v3, "attributes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static getServerReservedAlbumNamesStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;
    .locals 2

    .prologue
    .line 200
    sget-object v1, Lcom/miui/gallery/scanner/MediaScanner;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getServerReservedAlbumNamesStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    .line 204
    :cond_0
    sget-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sServerReservedAlbumNamesStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
    .locals 2

    .prologue
    .line 191
    sget-object v1, Lcom/miui/gallery/scanner/MediaScanner;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    sget-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    .line 195
    :cond_0
    sget-object v0, Lcom/miui/gallery/scanner/MediaScanner;->sServerUnModifyAlbumsStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static insertAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 827
    invoke-static/range {p0 .. p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 828
    .local v24, "relativePath":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->isOnlyLinkFileFolder(Ljava/lang/String;)Z

    move-result v17

    .line 829
    .local v17, "isOnlyLinkFolder":Z
    if-eqz v17, :cond_0

    const/4 v14, 0x0

    .line 948
    :goto_0
    return-object v14

    .line 830
    :cond_0
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    .line 831
    .local v18, "lastModified":J
    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/scanner/MediaScanner;->tryGetSystemAlbumServerId(Ljava/lang/String;)J

    move-result-wide v26

    .line 833
    .local v26, "serverId":J
    new-instance v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;-><init>(Lcom/miui/gallery/scanner/MediaScanner$1;)V

    .line 834
    .local v14, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    const/16 v22, 0x1

    .line 836
    .local v22, "needApplyBlacklist":Z
    const/4 v9, 0x0

    .line 838
    .local v9, "attributes":I
    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v6

    .line 839
    .local v6, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    const/4 v12, 0x0

    .line 840
    .local v12, "convertedName":Ljava/lang/String;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v30

    if-eqz v30, :cond_8

    .line 841
    const/16 v22, 0x0

    .line 842
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getBestName()Ljava/lang/String;

    move-result-object v12

    .line 843
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isAutoUpload()Z

    move-result v30

    if-eqz v30, :cond_4

    const-wide/16 v30, 0x1

    :goto_1
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 845
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isInWhiteList()Z

    move-result v30

    if-eqz v30, :cond_5

    const-wide/16 v30, 0x0

    :goto_2
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 846
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isShowInPhotosTab()Z

    move-result v30

    if-eqz v30, :cond_6

    const-wide/16 v30, 0x4

    :goto_3
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 847
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isHide()Z

    move-result v30

    if-eqz v30, :cond_7

    const-wide/16 v30, 0x10

    :goto_4
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 862
    :goto_5
    if-eqz v22, :cond_1

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->isInBlackList(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 863
    int-to-long v0, v9

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x10

    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 865
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 866
    sget-object v30, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 867
    const-string v20, "sdcard"

    .line 875
    .local v20, "name":Ljava/lang/String;
    :goto_6
    const-wide/16 v30, 0x0

    cmp-long v30, v26, v30

    if-lez v30, :cond_11

    .line 878
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner;->getServerUnModifyAlbumsStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->getServerAlbumName(J)Ljava/lang/String;

    move-result-object v7

    .line 879
    .local v7, "albumName":Ljava/lang/String;
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/miui/gallery/scanner/MediaScanner;->findAlbumByName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v11

    .line 880
    .local v11, "conflict":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :goto_7
    if-eqz v11, :cond_2

    .line 881
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 882
    .local v29, "values":Landroid/content/ContentValues;
    const-string v30, "fileName"

    iget-object v0, v11, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->renameAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    sget-object v30, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v31, "_id=?"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    iget-wide v0, v11, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    move-wide/from16 v34, v0

    .line 885
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    .line 883
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    .end local v7    # "albumName":Ljava/lang/String;
    .end local v11    # "conflict":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 911
    .local v15, "groupValue":Landroid/content/ContentValues;
    const-string v30, "fileName"

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v30, "dateTaken"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    const-string v30, "localFile"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v30, "serverType"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v30, "localFlag"

    const/16 v31, 0x7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string v30, "attributes"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->generatorValuesForSpecialAlbum(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v25

    .line 920
    .local v25, "specialValues":Landroid/content/ContentValues;
    if-eqz v25, :cond_3

    .line 921
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 923
    :cond_3
    invoke-static {v9}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isSyncable(I)Z

    move-result v8

    .line 924
    .local v8, "albumSyncable":Z
    sget-object v30, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v30

    const-string v31, "URI_PARAM_REQUEST_SYNC"

    .line 925
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v30

    .line 926
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 927
    .local v16, "insertUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v15}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v28

    .line 928
    .local v28, "uri":Landroid/net/Uri;
    if-nez v28, :cond_13

    .line 930
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 843
    .end local v8    # "albumSyncable":Z
    .end local v15    # "groupValue":Landroid/content/ContentValues;
    .end local v16    # "insertUri":Landroid/net/Uri;
    .end local v20    # "name":Ljava/lang/String;
    .end local v25    # "specialValues":Landroid/content/ContentValues;
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_4
    const-wide/16 v30, 0x0

    goto/16 :goto_1

    .line 845
    :cond_5
    const-wide/16 v30, 0x40

    goto/16 :goto_2

    .line 846
    :cond_6
    const-wide/16 v30, 0x0

    goto/16 :goto_3

    .line 847
    :cond_7
    const-wide/16 v30, 0x0

    goto/16 :goto_4

    .line 849
    :cond_8
    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getAttributesByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v10

    .line 850
    .local v10, "attrs":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    if-eqz v10, :cond_d

    .line 851
    const/16 v22, 0x0

    .line 852
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v10}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isAutoUpload()Z

    move-result v30

    if-eqz v30, :cond_9

    const-wide/16 v30, 0x1

    :goto_8
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 854
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v10}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isInWhiteList()Z

    move-result v30

    if-eqz v30, :cond_a

    const-wide/16 v30, 0x0

    :goto_9
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 855
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v10}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isShowInPhotosTab()Z

    move-result v30

    if-eqz v30, :cond_b

    const-wide/16 v30, 0x4

    :goto_a
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    .line 856
    int-to-long v0, v9

    move-wide/from16 v32, v0

    invoke-virtual {v10}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isHide()Z

    move-result v30

    if-eqz v30, :cond_c

    const-wide/16 v30, 0x10

    :goto_b
    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    goto/16 :goto_5

    .line 852
    :cond_9
    const-wide/16 v30, 0x0

    goto :goto_8

    .line 854
    :cond_a
    const-wide/16 v30, 0x40

    goto :goto_9

    .line 855
    :cond_b
    const-wide/16 v30, 0x0

    goto :goto_a

    .line 856
    :cond_c
    const-wide/16 v30, 0x0

    goto :goto_b

    .line 859
    :cond_d
    int-to-long v0, v9

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x40

    or-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v9, v0

    goto/16 :goto_5

    .line 869
    .end local v10    # "attrs":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    :cond_e
    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "name":Ljava/lang/String;
    goto/16 :goto_6

    .line 872
    .end local v20    # "name":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v12

    .restart local v20    # "name":Ljava/lang/String;
    goto/16 :goto_6

    .line 879
    .restart local v7    # "albumName":Ljava/lang/String;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 888
    .end local v7    # "albumName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 889
    .local v13, "e":Ljava/lang/Exception;
    const-string v30, "MediaScanner"

    move-object/from16 v0, v30

    invoke-static {v0, v13}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 890
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 897
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->checkAlbumNameConflict(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v30

    if-eqz v30, :cond_12

    const/16 v21, 0x1

    .line 902
    .local v21, "nameConflict":Z
    :goto_c
    if-eqz v21, :cond_2

    .line 903
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->renameAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 904
    const-string v30, "MediaScanner"

    const-string v31, "album name conflict %s, rename %s"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 905
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 906
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 897
    .end local v21    # "nameConflict":Z
    :cond_12
    const/16 v21, 0x0

    goto :goto_c

    .line 898
    :catch_1
    move-exception v13

    .line 899
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v30, "MediaScanner"

    move-object/from16 v0, v30

    invoke-static {v0, v13}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 900
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 932
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v8    # "albumSyncable":Z
    .restart local v15    # "groupValue":Landroid/content/ContentValues;
    .restart local v16    # "insertUri":Landroid/net/Uri;
    .restart local v25    # "specialValues":Landroid/content/ContentValues;
    .restart local v28    # "uri":Landroid/net/Uri;
    :cond_13
    invoke-static/range {v28 .. v28}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    .line 933
    iget-wide v0, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-gtz v30, :cond_14

    .line 935
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v23

    .line 936
    .local v23, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v30, "path"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v30, "media_scanner"

    const-string v31, "insert_album_error"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 941
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 943
    .end local v23    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    .line 944
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isModified:Z

    .line 945
    iput v9, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    .line 946
    const/16 v30, 0x0

    move/from16 v0, v30

    iput-boolean v0, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isOnlyLinkFolder:Z

    .line 947
    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/cloud/DownloadPathHelper;->isShareFolderRelativePath(Ljava/lang/String;)Z

    move-result v30

    move/from16 v0, v30

    iput-boolean v0, v14, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isShareAlbum:Z

    goto/16 :goto_0
.end method

.method public static isScannableDirectory(Ljava/io/File;)Z
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 483
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScannableDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 479
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/scanner/MediaScanner;->isScannableDirectory(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapAttributeBit(Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;J)J
    .locals 11
    .param p0, "attrs"    # Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    .param p1, "attributeBit"    # J

    .prologue
    const-wide/16 v6, 0x10

    const-wide/16 v4, 0x4

    const-wide/16 v0, 0x1

    const-wide/16 v8, -0x1

    const-wide/16 v2, 0x0

    .line 1042
    if-nez p0, :cond_1

    move-wide v2, v8

    .line 1057
    :cond_0
    :goto_0
    return-wide v2

    .line 1045
    :cond_1
    cmp-long v10, p1, v0

    if-nez v10, :cond_3

    .line 1046
    invoke-virtual {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isAutoUpload()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    .line 1048
    :cond_3
    cmp-long v0, p1, v4

    if-nez v0, :cond_4

    .line 1049
    invoke-virtual {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isShowInPhotosTab()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v2, v4

    goto :goto_0

    .line 1051
    :cond_4
    cmp-long v0, p1, v6

    if-nez v0, :cond_5

    .line 1052
    invoke-virtual {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isHide()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v2, v6

    goto :goto_0

    .line 1054
    :cond_5
    const-wide/16 v0, 0x40

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 1055
    invoke-virtual {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isInWhiteList()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x40

    goto :goto_0

    :cond_6
    move-wide v2, v8

    .line 1057
    goto :goto_0
.end method

.method private static mergeAttribute(Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;JJ)J
    .locals 9
    .param p0, "attrs"    # Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    .param p1, "attributes"    # J
    .param p3, "attributeBit"    # J

    .prologue
    .line 1061
    invoke-static {p0, p3, p4}, Lcom/miui/gallery/scanner/MediaScanner;->mapAttributeBit(Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;J)J

    move-result-wide v2

    .line 1062
    .local v2, "updateAttribute":J
    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getAlbumAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1063
    .local v0, "manualBit":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 1064
    and-long v4, p1, v0

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 1066
    and-long v4, p1, p3

    or-long v2, v0, v4

    .line 1073
    .end local v2    # "updateAttribute":J
    :cond_0
    :goto_0
    return-wide v2

    .restart local v2    # "updateAttribute":J
    :cond_1
    and-long v4, p1, v0

    and-long v6, p1, p3

    or-long v2, v4, v6

    goto :goto_0
.end method

.method private static prescan(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM ((SELECT _id, localFlag FROM cloud WHERE serverType=0) AS Album LEFT JOIN (SELECT localGroupId, count(_id) AS media_count FROM cloud WHERE serverType!=0 GROUP BY localGroupId) AS MediaCount ON Album._id=MediaCount.localGroupId) WHERE localFlag=7 AND (media_count IS NULL OR media_count=0))"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/util/SafeDBUtil;->safeDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 490
    .local v0, "rows":I
    const-string v1, "MediaScanner"

    const-string v2, "delete empty albums %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method private static queryAndUpdateAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 792
    invoke-static {p0, p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "relativePath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 794
    const-string v5, "MediaScanner"

    const-string v8, "Couldn\'t get relative path from %s"

    invoke-static {v5, v8, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    :cond_0
    :goto_0
    return-object v1

    .line 800
    :cond_1
    :try_start_0
    invoke-static {v4}, Lcom/miui/gallery/scanner/MediaScanner;->tryGetSystemAlbumServerId(Ljava/lang/String;)J

    move-result-wide v6

    .line 801
    .local v6, "serverId":J
    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 803
    invoke-static {p0, v6, v7}, Lcom/miui/gallery/scanner/MediaScanner;->findAlbumByServerId(Landroid/content/Context;J)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 812
    .local v1, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :goto_1
    if-eqz v1, :cond_0

    .line 813
    invoke-static {v4}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->isOnlyLinkFileFolder(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isOnlyLinkFolder:Z

    .line 814
    invoke-static {v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->isShareFolderRelativePath(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isShareAlbum:Z

    .line 815
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 816
    .local v2, "fileModified":J
    iget-wide v8, v1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    cmp-long v5, v8, v2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isModified:Z

    .line 817
    iput-wide v2, v1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    .line 819
    cmp-long v5, v6, v10

    if-gtz v5, :cond_0

    .line 820
    invoke-static {p0, v1, v4}, Lcom/miui/gallery/scanner/MediaScanner;->updateAlbumByServerConfig(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    .end local v1    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .end local v2    # "fileModified":J
    :cond_2
    :try_start_1
    invoke-static {p0, v4}, Lcom/miui/gallery/scanner/MediaScanner;->findAlbumByLocalPath(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    goto :goto_1

    .line 808
    .end local v1    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .end local v6    # "serverId":J
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MediaScanner"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 816
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .restart local v2    # "fileModified":J
    .restart local v6    # "serverId":J
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static recordHiddenAlbum(Ljava/lang/String;)V
    .locals 3
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 1614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1615
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "album_relative_path"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string v1, "media_scanner"

    const-string v2, "scanner_directory_regard_as_hidden"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1621
    return-void
.end method

.method private static renameAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1078
    const/4 v1, 0x0

    .line 1079
    .local v1, "tarName":Ljava/lang/String;
    const/4 v0, 0x3

    .line 1080
    .local v0, "MAX_TRY_COUNT":I
    const/4 v3, 0x0

    .line 1082
    .local v3, "tryCount":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "time":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-static {p0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->checkAlbumNameConflict(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tryCount":I
    .local v4, "tryCount":I
    if-lt v3, v0, :cond_2

    move v3, v4

    .line 1085
    .end local v4    # "tryCount":I
    .restart local v3    # "tryCount":I
    :cond_0
    if-lt v3, v0, :cond_1

    .line 1086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1088
    :cond_1
    return-object v1

    .end local v3    # "tryCount":I
    .restart local v4    # "tryCount":I
    :cond_2
    move v3, v4

    .end local v4    # "tryCount":I
    .restart local v3    # "tryCount":I
    goto :goto_0
.end method

.method public static scanDirectories(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;ZZ)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
    .param p3, "recursiveScan"    # Z
    .param p4, "bulkNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
            "ZZ)I"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "directories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    const/4 v8, 0x0

    .line 531
    :goto_0
    return v8

    .line 500
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScanner;->prescan(Landroid/content/Context;)V

    .line 501
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    const/4 v8, 0x0

    goto :goto_0

    .line 504
    :cond_2
    new-instance v2, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;-><init>(Z)V

    .line 505
    .local v2, "inserter":Lcom/miui/gallery/scanner/MediaBulkInserter;
    new-instance v3, Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    const-string v0, "com.miui.gallery.cloud.provider"

    invoke-direct {v3, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, "batchOperator":Lcom/miui/gallery/provider/ContentProviderBatchOperator;
    new-instance v7, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;

    new-instance v0, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;-><init>(ZLcom/miui/gallery/scanner/MediaBulkInserter;Lcom/miui/gallery/provider/ContentProviderBatchOperator;ZZ)V

    invoke-direct {v7, v0, p2}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;-><init>(Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 511
    .local v7, "folderClient":Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 512
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 513
    .local v9, "path":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {v2, p0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 529
    invoke-virtual {v3, p0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    goto :goto_0

    .line 516
    :cond_3
    :try_start_1
    invoke-static {v9}, Lcom/miui/gallery/scanner/MediaScanner;->isScannableDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 511
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 520
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 521
    .local v10, "start":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0, v0, p3}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->scanFolder(Landroid/content/Context;Ljava/io/File;Z)V

    .line 522
    const-string v0, "MediaScanner"

    const-string v1, "scan folder [%s] costs [%d]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v9, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 523
    .end local v10    # "start":J
    :catch_0
    move-exception v6

    .line 524
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v1, "scan folder %s %s"

    invoke-static {v0, v1, v9, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 528
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v2, p0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 529
    invoke-virtual {v3, p0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    throw v0

    .line 528
    :cond_5
    invoke-virtual {v2, p0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 529
    invoke-virtual {v3, p0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    goto/16 :goto_0
.end method

.method public static scanFiles(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)I
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
            ")I"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    const/4 v13, 0x0

    .line 684
    :goto_0
    return v13

    .line 586
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    const/4 v13, 0x0

    goto :goto_0

    .line 590
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/scanner/MediaScanner;->prescan(Landroid/content/Context;)V

    .line 591
    new-instance v4, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;-><init>(Z)V

    .line 592
    .local v4, "inserter":Lcom/miui/gallery/scanner/MediaBulkInserter;
    new-instance v5, Lcom/miui/gallery/provider/ContentProviderBatchOperator;

    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-direct {v5, v3}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;-><init>(Ljava/lang/String;)V

    .line 593
    .local v5, "batchOperator":Lcom/miui/gallery/provider/ContentProviderBatchOperator;
    new-instance v2, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;-><init>(ZLcom/miui/gallery/scanner/MediaBulkInserter;Lcom/miui/gallery/provider/ContentProviderBatchOperator;ZZ)V

    .line 594
    .local v2, "fileClient":Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v9, "albumMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;>;"
    const/4 v15, 0x0

    .line 600
    .local v15, "needTriggerSync":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_f

    .line 601
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 602
    if-eqz v15, :cond_2

    .line 603
    new-instance v3, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v6, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 604
    invoke-virtual {v3, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 605
    invoke-virtual {v3, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 606
    invoke-virtual {v3, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    .line 607
    invoke-virtual {v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v18

    .line 608
    .local v18, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    .end local v18    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 682
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    goto :goto_0

    .line 612
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 613
    .local v16, "path":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 600
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 616
    :cond_5
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 618
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 621
    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    .line 622
    .local v10, "albumPath":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 625
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/FileMimeUtil;->getSupportUploadMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 626
    .local v14, "mimeType":Ljava/lang/String;
    invoke-static {v14}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v14}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 627
    const-string v3, "MediaScanner"

    const-string v6, "Unsupported MimeType: [%s], path: [%s]"

    move-object/from16 v0, v16

    invoke-static {v3, v6, v14, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 681
    .end local v10    # "albumPath":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 682
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    throw v3

    .line 630
    .restart local v10    # "albumPath":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "mimeType":Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 631
    .local v17, "relativePath":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->isOnlyLinkFileFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 634
    invoke-static {v10}, Lcom/miui/gallery/scanner/MediaScanner;->isScannableDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 635
    const-string v3, "MediaScanner"

    const-string v6, "Album directory is hidden or contains \".nomedia\" file: [%s]"

    invoke-static {v3, v6, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 638
    :cond_7
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    .line 639
    .local v8, "album":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    if-nez v8, :cond_9

    .line 640
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/gallery/scanner/MediaScanner;->albumQueryOrInsert(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v8

    .line 641
    if-nez v8, :cond_8

    .line 642
    const-string v3, "MediaScanner"

    const-string v6, "album query failed: [%s]"

    invoke-static {v3, v6, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 645
    :cond_8
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_9
    iget-boolean v3, v8, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isModified:Z

    if-eqz v3, :cond_c

    invoke-static {v8}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->shouldScan(Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_c

    const/16 v19, 0x1

    .line 649
    .local v19, "shouldScan":Z
    :goto_3
    if-eqz v19, :cond_4

    .line 651
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 652
    .local v22, "start":J
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v8}, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->scanFile(Landroid/content/Context;Ljava/io/File;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)J

    move-result-wide v20

    .line 656
    .local v20, "result":J
    const-wide/16 v6, -0x1

    cmp-long v3, v6, v20

    if-nez v3, :cond_a

    .line 657
    const-string v3, "MediaScanner"

    const-string v6, "scan [%s] fail"

    move-object/from16 v0, v16

    invoke-static {v3, v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v3, v20, v6

    if-gtz v3, :cond_b

    const-wide/16 v6, -0x4

    cmp-long v3, v6, v20

    if-eqz v3, :cond_b

    const-wide/16 v6, -0x7

    cmp-long v3, v6, v20

    if-nez v3, :cond_4

    .line 661
    :cond_b
    iget v3, v8, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v6, v3

    const-wide/16 v24, 0x1

    and-long v6, v6, v24

    const-wide/16 v24, 0x0

    cmp-long v3, v6, v24

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_4
    or-int/2addr v15, v3

    goto/16 :goto_2

    .line 648
    .end local v19    # "shouldScan":Z
    .end local v20    # "result":J
    .end local v22    # "start":J
    :cond_c
    const/16 v19, 0x0

    goto :goto_3

    .line 661
    .restart local v19    # "shouldScan":Z
    .restart local v20    # "result":J
    .restart local v22    # "start":J
    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    .line 663
    .end local v20    # "result":J
    .end local v22    # "start":J
    :catch_0
    move-exception v11

    .line 664
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "MediaScanner"

    const-string v6, "scan file [%s] failed with exception: [%s]"

    move-object/from16 v0, v16

    invoke-static {v3, v6, v0, v11}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 668
    .end local v8    # "album":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .end local v10    # "albumPath":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v17    # "relativePath":Ljava/lang/String;
    .end local v19    # "shouldScan":Z
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->cleanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 671
    .end local v12    # "file":Ljava/io/File;
    .end local v16    # "path":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 672
    if-eqz v15, :cond_10

    .line 673
    new-instance v3, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v6, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 674
    invoke-virtual {v3, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 675
    invoke-virtual {v3, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    const/4 v6, 0x1

    .line 676
    invoke-virtual {v3, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    .line 677
    invoke-virtual {v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v18

    .line 678
    .restart local v18    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    .end local v18    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 682
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/miui/gallery/provider/ContentProviderBatchOperator;->apply(Landroid/content/Context;)V

    .line 684
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    goto/16 :goto_0
.end method

.method public static scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 546
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/scanner/MediaScanner;->doScanSingleFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 547
    return-void
.end method

.method static scanSingleFileForExternal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/scanner/MediaScanner;->doScanSingleFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 540
    return-void
.end method

.method private static scannerCorrectLogic(Landroid/content/Context;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 313
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getSyncCompletelyFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->isEverRestoreSecretItems()Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v2, "MIUI/Gallery/cloud/.secretAlbum"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 319
    .local v16, "secretFolders":[Ljava/lang/String;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_4

    .line 320
    const-string v2, "^[0-9a-zA-Z]+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 321
    .local v14, "pattern":Ljava/util/regex/Pattern;
    new-instance v11, Lcom/miui/gallery/scanner/MediaScanner$2;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v14}, Lcom/miui/gallery/scanner/MediaScanner$2;-><init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;Ljava/util/regex/Pattern;)V

    .line 337
    .local v11, "filter":Ljava/io/FilenameFilter;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v15, v16, v18

    .line 338
    .local v15, "secretFolder":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-static {v15}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    .line 343
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_3

    .line 344
    array-length v0, v10

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v3, v10, v17

    .line 345
    .local v3, "file":Ljava/io/File;
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const-string v2, "MediaScanner"

    const-string v4, "secret item %s"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    new-instance v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    const-wide/16 v4, -0x3e8

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JZIZZ)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v12

    .line 355
    .local v12, "id":J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-lez v2, :cond_2

    .line 356
    const-string v2, "MediaScanner"

    const-string v4, "secret item restore %s"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_2
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_2

    .line 337
    .end local v3    # "file":Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v12    # "id":J
    :cond_3
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    .line 363
    .end local v11    # "filter":Ljava/io/FilenameFilter;
    .end local v14    # "pattern":Ljava/util/regex/Pattern;
    .end local v15    # "secretFolder":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setHasRestoredSecretItems()V

    goto/16 :goto_0
.end method

.method private static tryGetSystemAlbumServerId(Ljava/lang/String;)J
    .locals 2
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-wide/16 v0, 0x1

    .line 788
    :goto_0
    return-wide v0

    .line 785
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 788
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static tryRenameConflictAlbums(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 1189
    const/4 v8, 0x0

    .line 1191
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/scanner/MediaScanner;->ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverType=0 AND fileName = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1194
    if-nez v8, :cond_0

    .line 1195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query album cursor null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1197
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1198
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 1199
    .local v10, "serverId":J
    const-wide/16 v0, 0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    .line 1201
    :cond_1
    const/4 v0, 0x0

    .line 1217
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v10    # "serverId":J
    :goto_1
    return v0

    .line 1203
    .restart local v10    # "serverId":J
    :cond_2
    const/4 v0, 0x3

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1204
    .local v9, "localFlag":I
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1206
    .local v6, "albumId":J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1207
    .local v12, "values":Landroid/content/ContentValues;
    const-string v0, "fileName"

    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScanner;->renameAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    if-nez v9, :cond_3

    .line 1209
    const-string v0, "localFlag"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1211
    :cond_3
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1212
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1211
    invoke-static {p0, v0, v12, v1, v2}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1213
    const-string v0, "MediaScanner"

    const-string v1, "Rename conflict album according to server config file: %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1215
    .end local v6    # "albumId":J
    .end local v9    # "localFlag":I
    .end local v10    # "serverId":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v0, 0x1

    .line 1217
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method private static updateAlbumByServerConfig(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .param p2, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 952
    if-nez p1, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 954
    .local v19, "values":Landroid/content/ContentValues;
    const-wide/16 v16, 0x0

    .line 955
    .local v16, "mergeAttributes":J
    const/4 v15, 0x1

    .line 957
    .local v15, "needApplyBlacklist":Z
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v6

    .line 958
    .local v6, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    if-eqz v6, :cond_b

    .line 959
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 960
    const/4 v15, 0x0

    .line 963
    :cond_2
    sget-object v20, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 964
    const-string v11, "sdcard"

    .line 973
    .local v11, "fileName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 974
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isManualRenameRestricted()Z

    move-result v20

    if-eqz v20, :cond_9

    const/4 v13, 0x1

    .line 975
    .local v13, "isManualRenameRestricted":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    if-eqz v13, :cond_7

    .line 976
    :cond_3
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getBestName()Ljava/lang/String;

    move-result-object v10

    .line 977
    .local v10, "convertName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 978
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 979
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 981
    :cond_4
    const-string v20, "MediaScanner"

    const-string v21, "Rename album according to server config file: %s"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/gallery/scanner/MediaScanner;->checkAlbumNameConflict(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 983
    .local v9, "conflict":I
    if-eqz v9, :cond_5

    .line 985
    if-eqz v13, :cond_a

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v9, v0, :cond_a

    .line 986
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/gallery/scanner/MediaScanner;->tryRenameConflictAlbums(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    .line 987
    .local v18, "success":Z
    if-nez v18, :cond_5

    .line 988
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/gallery/scanner/MediaScanner;->renameAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 994
    .end local v18    # "success":Z
    :cond_5
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 995
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mLocalFlag:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 996
    const-string v20, "localFlag"

    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    :cond_6
    const-string v20, "fileName"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .end local v9    # "conflict":I
    .end local v10    # "convertName":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getAlbumAttributes()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1003
    .local v7, "attributeBit":Ljava/lang/Long;
    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v21 .. v25}, Lcom/miui/gallery/scanner/MediaScanner;->mergeAttribute(Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;JJ)J

    move-result-wide v22

    or-long v16, v16, v22

    .line 1004
    goto :goto_4

    .line 966
    .end local v7    # "attributeBit":Ljava/lang/Long;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v13    # "isManualRenameRestricted":Z
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .line 974
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 991
    .restart local v9    # "conflict":I
    .restart local v10    # "convertName":Ljava/lang/String;
    .restart local v13    # "isManualRenameRestricted":Z
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/gallery/scanner/MediaScanner;->renameAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 1006
    .end local v9    # "conflict":I
    .end local v10    # "convertName":Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v13    # "isManualRenameRestricted":Z
    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getAttributesByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v8

    .line 1007
    .local v8, "attrs":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    if-eqz v8, :cond_c

    .line 1008
    const/4 v15, 0x0

    .line 1009
    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getAlbumAttributes()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1010
    .restart local v7    # "attributeBit":Ljava/lang/Long;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-static {v8, v0, v1, v2, v3}, Lcom/miui/gallery/scanner/MediaScanner;->mergeAttribute(Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;JJ)J

    move-result-wide v22

    or-long v16, v16, v22

    .line 1011
    goto :goto_5

    .line 1013
    .end local v7    # "attributeBit":Ljava/lang/Long;
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1016
    .end local v8    # "attrs":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    :cond_d
    if-eqz v15, :cond_e

    .line 1017
    const-wide/16 v20, 0x10

    and-long v20, v20, v16

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_10

    const/4 v12, 0x1

    .line 1018
    .local v12, "isHidden":Z
    :goto_6
    if-nez v12, :cond_e

    .line 1019
    const-wide/16 v20, 0x20

    and-long v20, v20, v16

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_11

    const/4 v14, 0x1

    .line 1020
    .local v14, "isManualUnHidden":Z
    :goto_7
    if-nez v14, :cond_e

    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->isInBlackList(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1021
    const-string v20, "MediaScanner"

    const-string/jumbo v21, "update server config file: %s, set album as hidden."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1022
    const-wide/16 v20, 0x10

    or-long v16, v16, v20

    .line 1026
    .end local v12    # "isHidden":Z
    .end local v14    # "isManualUnHidden":Z
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mAttributes:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_f

    .line 1027
    const-string v20, "MediaScanner"

    const-string/jumbo v21, "update server config file: %s, attributes: %s"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1028
    const-string v20, "attributes"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1030
    :cond_f
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 1031
    sget-object v20, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v21, "_id=?"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    move-wide/from16 v24, v0

    .line 1032
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 1031
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1017
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1019
    .restart local v12    # "isHidden":Z
    :cond_11
    const/4 v14, 0x0

    goto :goto_7
.end method

.method private static updateAlbumDateModified(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    .prologue
    .line 1379
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1380
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "dateModified"

    iget-wide v2, p1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mID:J

    .line 1382
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1381
    invoke-static {p0, v1, v0, v2, v3}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1383
    return-void
.end method
