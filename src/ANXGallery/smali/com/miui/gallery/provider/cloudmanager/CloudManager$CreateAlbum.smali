.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateAlbum"
.end annotation


# instance fields
.field private mAlbumPath:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1964
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1965
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    .line 1966
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->genRelativePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    .line 1967
    return-void
.end method

.method private static regenerateAlbumPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originPath"    # Ljava/lang/String;

    .prologue
    .line 2029
    const/4 v0, 0x3

    .line 2030
    .local v0, "MAX_TRY_COUNT":I
    const/4 v3, 0x0

    .line 2032
    .local v3, "tryCount":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 2033
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

    .line 2034
    .local v1, "finalPath":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->verifyAlbumPath(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tryCount":I
    .local v4, "tryCount":I
    if-lt v3, v0, :cond_2

    move v3, v4

    .line 2035
    .end local v4    # "tryCount":I
    .restart local v3    # "tryCount":I
    :cond_0
    if-lt v3, v0, :cond_1

    .line 2036
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

    .line 2038
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

.method private static verifyAlbumPath(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumPath"    # Ljava/lang/String;

    .prologue
    .line 2047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    const-wide/16 v0, -0x64

    .line 2066
    :goto_0
    return-wide v0

    .line 2050
    :cond_0
    const/4 v6, 0x0

    .line 2052
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "localFile like ?  AND serverType=0 AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2057
    if-nez v6, :cond_1

    .line 2058
    const-string v0, "CloudManager"

    const-string v1, "cursor for albumPath(%s) is null, verify failed"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    const-wide/16 v0, -0x65

    .line 2066
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2060
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2061
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2066
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2063
    :cond_2
    const-wide/16 v0, -0x1

    .line 2066
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2001
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2002
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "serverType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2003
    const-string v5, "fileName"

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const-string v5, "dateModified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2005
    const-string v5, "dateTaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2006
    const-string v5, "localFlag"

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2007
    const-string v5, "localFile"

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    const-wide/16 v0, 0x0

    .line 2009
    .local v0, "attributes":J
    const-wide/16 v6, 0x1

    or-long/2addr v0, v6

    .line 2010
    const-string v5, "attributes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2011
    const-string v5, "cloud"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2012
    .local v2, "id":J
    const-string v5, "CloudManager"

    const-string v6, "album(%s) creation finish with a id(%s) and albumPath(%s)"

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2013
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 2014
    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p2, v2, v3, v6, v7}, Lcom/miui/gallery/provider/cache/MediaManager;->insertAttributes(JJ)V

    .line 2015
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->markAsDirty(J)V

    .line 2019
    :goto_0
    return-wide v2

    .line 2017
    :cond_0
    const-wide/16 v2, -0x65

    goto :goto_0
.end method

.method getConflictAlbumId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2075
    const/4 v2, 0x0

    .line 2077
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    .line 2078
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2079
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2088
    if-eqz v2, :cond_0

    .line 2089
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    .line 2082
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->verifyAlbumPath(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2083
    .local v0, "albumPathVerifyResult":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    .line 2088
    if-eqz v2, :cond_0

    .line 2089
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2086
    :cond_2
    const-wide/16 v0, -0x66

    .line 2088
    .end local v0    # "albumPathVerifyResult":J
    if-eqz v2, :cond_0

    .line 2089
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2088
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 2089
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 1971
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "fileName=? COLLATE NOCASE  AND serverType=0 AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2024
    const-string v0, "CreateAlbum{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v4, -0x1

    .line 1981
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 1982
    .local v2, "result":J
    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 1983
    const-string v4, "CloudManager"

    const-string v5, "album with name(%s) found, exist %d"

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1984
    const-wide/16 v0, -0x67

    .line 1994
    :cond_0
    :goto_0
    return-wide v0

    .line 1985
    :cond_1
    const-wide/16 v6, -0x66

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    .line 1986
    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->verifyAlbumPath(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 1987
    .local v0, "albumPathVerifyResult":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 1988
    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->regenerateAlbumPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CreateAlbum;->mAlbumPath:Ljava/lang/String;

    move-wide v0, v4

    .line 1989
    goto :goto_0

    .end local v0    # "albumPathVerifyResult":J
    :cond_2
    move-wide v0, v2

    .line 1994
    goto :goto_0
.end method
