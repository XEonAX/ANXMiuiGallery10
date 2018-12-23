.class Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
.super Ljava/lang/Object;
.source "GalleryOpenProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryOpenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaInfo"
.end annotation


# instance fields
.field mAlbumName:Ljava/lang/String;

.field mBucketId:J

.field mBucketName:Ljava/lang/String;

.field mDateModified:Ljava/lang/Long;

.field mDateTaken:Ljava/lang/Long;

.field mDuration:Ljava/lang/Long;

.field mFileName:Ljava/lang/String;

.field mHeight:Ljava/lang/Integer;

.field mId:J

.field mLatitude:Ljava/lang/Double;

.field mLongitude:Ljava/lang/Double;

.field mMimeType:Ljava/lang/String;

.field mOrientation:Ljava/lang/Integer;

.field mPath:Ljava/lang/String;

.field mResolution:Ljava/lang/String;

.field mSize:Ljava/lang/Long;

.field mTitle:Ljava/lang/String;

.field mType:I

.field mWidth:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryOpenProvider;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/GalleryOpenProvider;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->this$0:Lcom/miui/gallery/provider/GalleryOpenProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/GalleryOpenProvider;Lcom/miui/gallery/provider/GalleryOpenProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/GalleryOpenProvider;
    .param p2, "x1"    # Lcom/miui/gallery/provider/GalleryOpenProvider$1;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;-><init>(Lcom/miui/gallery/provider/GalleryOpenProvider;)V

    return-void
.end method

.method private decodeBounds(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 488
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 490
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 491
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 492
    return-void
.end method


# virtual methods
.method fillByFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 473
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "try fill with %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    .line 475
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file not exists"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :goto_0
    return v1

    .line 480
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 482
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->decodeBounds(Ljava/lang/String;)V

    .line 483
    const/4 v1, 0x1

    goto :goto_0
.end method

.method init(Landroid/database/Cursor;)Z
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mId:J

    .line 409
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 410
    .local v13, "type":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_6

    .line 411
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    .line 418
    :goto_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "rawLat":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, "refLat":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    .line 421
    invoke-static {v9, v11}, Lcom/miui/gallery3d/exif/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLatitude:Ljava/lang/Double;

    .line 423
    :cond_0
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 424
    .local v10, "rawLon":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 425
    .local v12, "refLon":Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    .line 426
    invoke-static {v10, v12}, Lcom/miui/gallery3d/exif/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLongitude:Ljava/lang/Double;

    .line 428
    :cond_1
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/miui/gallery/util/Numbers;->getLong(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    .line 429
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    .line 430
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    .line 431
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    .line 432
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    .line 433
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->this$0:Lcom/miui/gallery/provider/GalleryOpenProvider;

    invoke-static {v0}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$200(Lcom/miui/gallery/provider/GalleryOpenProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "cloud"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fileName"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    .line 436
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 435
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 438
    .local v8, "album":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 445
    iget v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 446
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    .line 449
    :cond_3
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 450
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    .line 451
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 452
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 453
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 454
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 456
    :cond_4
    iget v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    .line 460
    :cond_5
    const/4 v0, 0x1

    .line 468
    .end local v8    # "album":Landroid/database/Cursor;
    .end local v9    # "rawLat":Ljava/lang/String;
    .end local v10    # "rawLon":Ljava/lang/String;
    .end local v11    # "refLat":Ljava/lang/String;
    .end local v12    # "refLon":Ljava/lang/String;
    :goto_1
    return v0

    .line 412
    :cond_6
    const/4 v0, 0x2

    if-ne v13, v0, :cond_7

    .line 413
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    goto/16 :goto_0

    .line 415
    :cond_7
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d is not a media type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    const/4 v0, 0x0

    goto :goto_1

    .line 442
    .restart local v8    # "album":Landroid/database/Cursor;
    .restart local v9    # "rawLat":Ljava/lang/String;
    .restart local v10    # "rawLon":Ljava/lang/String;
    .restart local v11    # "refLat":Ljava/lang/String;
    .restart local v12    # "refLon":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 461
    :cond_8
    iget v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 462
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current type is video, but no file path"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    goto :goto_1

    .line 464
    :cond_9
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 465
    :cond_a
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->fillByFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 467
    :cond_b
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no path return"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    goto :goto_1
.end method

.method init(Ljava/lang/String;)Z
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide v12, 0x7fffffffffffffffL

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 335
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "query media info for file: %s"

    invoke-static {v10, v11, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v9

    .line 404
    :cond_0
    :goto_0
    return v8

    .line 340
    :cond_1
    iput-wide v12, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mId:J

    .line 342
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 344
    iget-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 345
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeTypeByParseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 346
    iget-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v9

    .line 347
    goto :goto_0

    .line 351
    :cond_2
    iget-object v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v7, v8

    :cond_3
    iput v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    .line 352
    iput-wide v12, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    .line 355
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    .line 356
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    .line 357
    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    .line 358
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    .line 360
    iget v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    if-ne v7, v8, :cond_6

    .line 361
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->hasExif(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 362
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "reading exif"

    invoke-static {v7, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, "exif":Landroid/media/ExifInterface;
    const/4 v7, 0x2

    new-array v3, v7, [F

    .line 366
    .local v3, "latLong":[F
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface;->getLatLong([F)Z

    .line 367
    const/4 v7, 0x0

    aget v7, v3, v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLatitude:Ljava/lang/Double;

    .line 368
    const/4 v7, 0x1

    aget v7, v3, v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLongitude:Ljava/lang/Double;

    .line 369
    const-string v7, "Orientation"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 370
    .local v4, "rawOrientation":I
    int-to-short v7, v4

    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 371
    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getDateTaken(Landroid/media/ExifInterface;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    .line 372
    const-string v7, "ImageWidth"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 373
    const-string v7, "ImageLength"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 374
    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gtz v7, :cond_0

    .line 375
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->decodeBounds(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 377
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "latLong":[F
    .end local v4    # "rawOrientation":I
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "no exif found"

    invoke-static {v7, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->decodeBounds(Ljava/lang/String;)V

    .line 383
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 384
    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    goto/16 :goto_0

    .line 387
    :cond_6
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "is video, reading video info"

    invoke-static {v7, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    .line 390
    :try_start_1
    invoke-static {p1}, Lcom/miui/gallery/util/VideoAttrsReader;->read(Ljava/lang/String;)Lcom/miui/gallery/util/VideoAttrsReader;

    move-result-object v5

    .line 391
    .local v5, "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    invoke-virtual {v5}, Lcom/miui/gallery/util/VideoAttrsReader;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "title":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 393
    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    .line 395
    :cond_7
    invoke-virtual {v5}, Lcom/miui/gallery/util/VideoAttrsReader;->getDateTaken()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    .line 396
    invoke-virtual {v5}, Lcom/miui/gallery/util/VideoAttrsReader;->getDuration()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    .line 397
    invoke-virtual {v5}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 398
    invoke-virtual {v5}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 400
    .end local v5    # "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    .end local v6    # "title":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 401
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method toContentValue()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 495
    new-instance v2, Landroid/content/ContentValues;

    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 496
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 497
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v1

    .line 498
    .local v0, "column":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 562
    :pswitch_0
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 496
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 511
    :pswitch_3
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :pswitch_4
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :pswitch_5
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 520
    :pswitch_6
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 523
    :pswitch_7
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 526
    :pswitch_8
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 529
    :pswitch_9
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 532
    :pswitch_a
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 535
    :pswitch_b
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 538
    :pswitch_c
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 541
    :pswitch_d
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 544
    :pswitch_e
    iget-wide v4, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 547
    :pswitch_f
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 550
    :pswitch_10
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 553
    :pswitch_11
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 556
    :pswitch_12
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 559
    :pswitch_13
    iget v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 565
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trans cursor to %s"

    invoke-static {v2}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$400(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    return-object v2

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDateTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBucketName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMimeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResolution=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
