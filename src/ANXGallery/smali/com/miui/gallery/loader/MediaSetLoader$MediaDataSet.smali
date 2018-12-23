.class Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;
.super Lcom/miui/gallery/model/CursorDataSet;
.source "MediaSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/MediaSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDataSet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/loader/MediaSetLoader;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/loader/MediaSetLoader;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    .line 238
    invoke-direct {p0, p2}, Lcom/miui/gallery/model/CursorDataSet;-><init>(Landroid/database/Cursor;)V

    .line 239
    return-void
.end method

.method private isFromCamera()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    invoke-static {v0}, Lcom/miui/gallery/loader/MediaSetLoader;->access$100(Lcom/miui/gallery/loader/MediaSetLoader;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addToAlbum(Landroid/app/Activity;IZZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "operateSync"    # Z
    .param p4, "showSecret"    # Z
    .param p5, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .prologue
    const/4 v4, 0x1

    .line 311
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 312
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->isFromCamera()Z

    move-result v2

    invoke-static {p1, p5, v1, v2, p4}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;Ljava/util/ArrayList;ZZ)V

    .line 317
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    return v4
.end method

.method public addToFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v4, 0x1

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 341
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p3, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToFavoritesByPath(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[Ljava/lang/String;)V

    .line 344
    :cond_0
    return v4
.end method

.method protected bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    .line 250
    invoke-virtual {p0, p2}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->isValidate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 252
    iget-object v1, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v0}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Lcom/miui/gallery/model/BaseDataItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    .line 256
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setSize(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    .line 257
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->setMimeType(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    .line 258
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->setLatitude(F)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    .line 259
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->setLongitude(F)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    .line 260
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setCreateTime(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    .line 261
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->setDuration(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    .line 262
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->setWidth(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    .line 263
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->setHeight(I)Lcom/miui/gallery/model/BaseDataItem;

    .line 265
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 243
    new-instance v0, Lcom/miui/gallery/model/MediaItem;

    invoke-direct {v0}, Lcom/miui/gallery/model/MediaItem;-><init>()V

    .line 244
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    .line 245
    return-object v0
.end method

.method protected doDelete(Lcom/miui/gallery/model/BaseDataItem;)I
    .locals 11
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/16 v10, 0x1e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "rows":I
    if-eqz p1, :cond_1

    .line 286
    iget-object v4, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    invoke-virtual {v4}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/16 v2, -0x70

    .line 306
    :goto_0
    return v2

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    invoke-virtual {v4}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    invoke-virtual {v5}, Lcom/miui/gallery/loader/MediaSetLoader;->getUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id=?"

    new-array v7, v3, [Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 289
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/SafeDBUtil;->safeDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 291
    if-lez v1, :cond_3

    .line 293
    invoke-direct {p0}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->isFromCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 296
    .local v0, "deleteOptions":I
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    invoke-virtual {v4}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 296
    invoke-static {v4, v0, v10, v3}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->deleteInService(Landroid/content/Context;II[Ljava/lang/String;)V

    .line 299
    new-instance v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    .line 300
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaSetLoader"

    invoke-direct {v2, v10, v3, v4}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .end local v0    # "deleteOptions":I
    :cond_1
    :goto_2
    move v2, v1

    .line 306
    goto :goto_0

    :cond_2
    move v0, v3

    .line 293
    goto :goto_1

    .line 302
    :cond_3
    const-string v2, "MediaSetLoader"

    const-string v3, "Delete %s, no row affected"

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected getDeleteDialogMessage(Lcom/miui/gallery/model/BaseDataItem;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 273
    invoke-direct {p0}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->isFromCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->this$0:Lcom/miui/gallery/loader/MediaSetLoader;

    invoke-virtual {v1}, Lcom/miui/gallery/loader/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0d001c

    .line 276
    .local v0, "messageRes":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .end local v0    # "messageRes":I
    :goto_1
    return-object v1

    .line 274
    :cond_0
    const v0, 0x7f0d0019

    goto :goto_0

    .line 278
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/model/CursorDataSet;->getDeleteDialogMessage(Lcom/miui/gallery/model/BaseDataItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->isValidate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 326
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getItemPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->isValidate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFromFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v4, 0x1

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/loader/MediaSetLoader$MediaDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 350
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p3, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->removeFromFavoritesByPath(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[Ljava/lang/String;)V

    .line 353
    :cond_0
    return v4
.end method
