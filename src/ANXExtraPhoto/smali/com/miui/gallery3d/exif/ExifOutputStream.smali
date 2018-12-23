.class Lcom/miui/gallery3d/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/miui/gallery3d/exif/ExifData;

.field private final mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 2
    .param p1, "ou"    # Ljava/io/OutputStream;
    .param p2, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .line 86
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    .line 82
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iput-object p2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 88
    return-void
.end method

.method private calculateAllOffset()I
    .locals 11

    .line 435
    const/16 v0, 0x8

    .line 436
    .local v0, "offset":I
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v1

    .line 437
    .local v1, "ifd0":Lcom/miui/gallery3d/exif/IfdData;
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v0

    .line 438
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 440
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    .line 441
    .local v3, "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    invoke-direct {p0, v3, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v0

    .line 443
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    .line 444
    .local v4, "interIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v4, :cond_0

    .line 445
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v5

    .line 446
    invoke-virtual {v5, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 447
    invoke-direct {p0, v4, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v0

    .line 450
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    .line 451
    .local v5, "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v5, :cond_1

    .line 452
    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v6}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v6

    invoke-virtual {v1, v6}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 453
    invoke-direct {p0, v5, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v0

    .line 456
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v6

    .line 457
    .local v6, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v6, :cond_2

    .line 458
    invoke-virtual {v1, v0}, Lcom/miui/gallery3d/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 459
    invoke-direct {p0, v6, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I

    move-result v0

    .line 463
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v7}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 464
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 465
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 466
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 467
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v7}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 468
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v7}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v7

    .line 469
    .local v7, "stripCount":I
    new-array v8, v7, [J

    .line 470
    .local v8, "offsets":[J
    nop

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 471
    int-to-long v9, v0

    aput-wide v9, v8, v2

    .line 472
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v9, v2}, Lcom/miui/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v0, v9

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v2    # "i":I
    :cond_4
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    .line 477
    .end local v7    # "stripCount":I
    .end local v8    # "offsets":[J
    :cond_5
    :goto_1
    return v0
.end method

.method private calculateOffsetOfIfd(Lcom/miui/gallery3d/exif/IfdData;I)I
    .locals 6
    .param p1, "ifd"    # Lcom/miui/gallery3d/exif/IfdData;
    .param p2, "offset"    # I

    .line 310
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 311
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 312
    .local v1, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 313
    .local v4, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 314
    invoke-virtual {v4, p2}, Lcom/miui/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 315
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 312
    .end local v4    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    .line 324
    .local v0, "ifd0":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 325
    new-instance v2, Lcom/miui/gallery3d/exif/IfdData;

    invoke-direct {v2, v1}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    move-object v0, v2

    .line 326
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 329
    .local v2, "exifOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v2, :cond_10

    .line 333
    invoke-virtual {v0, v2}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 336
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    .line 337
    .local v3, "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v3, :cond_1

    .line 338
    new-instance v5, Lcom/miui/gallery3d/exif/IfdData;

    invoke-direct {v5, v4}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    move-object v3, v5

    .line 339
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v4, v3}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    .line 344
    .local v4, "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v4, :cond_3

    .line 345
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v6, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v5, v6}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v5

    .line 346
    .local v5, "gpsOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v5, :cond_2

    .line 350
    invoke-virtual {v0, v5}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .end local v5    # "gpsOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 347
    .restart local v5    # "gpsOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No definition for crucial exif tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    .end local v5    # "gpsOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    .line 355
    .local v5, "interIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v5, :cond_5

    .line 356
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 357
    invoke-virtual {v6, v7}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 358
    .local v6, "interOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v6, :cond_4

    .line 362
    invoke-virtual {v3, v6}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .end local v6    # "interOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_1

    .line 359
    .restart local v6    # "interOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No definition for crucial exif tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    .end local v6    # "interOffsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v6

    .line 368
    .local v6, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v8}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 370
    if-nez v6, :cond_6

    .line 371
    new-instance v1, Lcom/miui/gallery3d/exif/IfdData;

    invoke-direct {v1, v7}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    move-object v6, v1

    .line 372
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1, v6}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 376
    invoke-virtual {v1, v7}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 377
    .local v1, "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v1, :cond_8

    .line 382
    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 383
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 384
    invoke-virtual {v7, v8}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v7

    .line 385
    .local v7, "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v7, :cond_7

    .line 390
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v8}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 391
    invoke-virtual {v6, v7}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 394
    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v8}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v8

    invoke-virtual {v6, v8}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 395
    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v8}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v8

    invoke-virtual {v6, v8}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 396
    .end local v1    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v7    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    goto/16 :goto_3

    .line 386
    .restart local v1    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    .restart local v7    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_7
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No definition for crucial exif tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 378
    .end local v7    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_8
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No definition for crucial exif tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 396
    .end local v1    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_9
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v8}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 397
    if-nez v6, :cond_a

    .line 398
    new-instance v8, Lcom/miui/gallery3d/exif/IfdData;

    invoke-direct {v8, v7}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    move-object v6, v8

    .line 399
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v7, v6}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 401
    :cond_a
    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v7}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v7

    .line 402
    .local v7, "stripCount":I
    iget-object v8, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v8, v9}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v8

    .line 403
    .local v8, "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v8, :cond_d

    .line 407
    iget-object v9, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    sget v10, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 408
    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v9

    .line 409
    .local v9, "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v9, :cond_c

    .line 413
    new-array v10, v7, [J

    .line 414
    .local v10, "lengths":[J
    nop

    .local v1, "i":I
    :goto_2
    iget-object v11, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v11}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v11

    if-ge v1, v11, :cond_b

    .line 415
    iget-object v11, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v11, v1}, Lcom/miui/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v11

    array-length v11, v11

    int-to-long v11, v11

    aput-wide v11, v10, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 417
    .end local v1    # "i":I
    :cond_b
    invoke-virtual {v9, v10}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    .line 418
    invoke-virtual {v6, v8}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 419
    invoke-virtual {v6, v9}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 421
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 422
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 423
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 422
    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 424
    .end local v7    # "stripCount":I
    .end local v8    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v9    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v10    # "lengths":[J
    goto :goto_3

    .line 410
    .restart local v7    # "stripCount":I
    .restart local v8    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    .restart local v9    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No definition for crucial exif tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    .end local v9    # "lengthTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No definition for crucial exif tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    .end local v7    # "stripCount":I
    .end local v8    # "offsetTag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_e
    if-eqz v6, :cond_f

    .line 426
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 427
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 428
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 429
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 430
    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 429
    invoke-virtual {v6, v1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 432
    :cond_f
    :goto_3
    return-void

    .line 330
    .end local v3    # "exifIfd":Lcom/miui/gallery3d/exif/IfdData;
    .end local v4    # "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    .end local v5    # "interIfd":Lcom/miui/gallery3d/exif/IfdData;
    .end local v6    # "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No definition for crucial exif tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1, "requestByteCount"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 107
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    .line 108
    .local v0, "byteNeeded":I
    if-le p4, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p4

    .line 109
    .local v1, "byteToRead":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    return v1
.end method

.method private stripNullValueTags(Lcom/miui/gallery3d/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Lcom/miui/gallery3d/exif/ExifData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery3d/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery3d/exif/ExifTag;

    .line 246
    .local v2, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/miui/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v2    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_0
    goto :goto_0

    .line 251
    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 5
    .param p1, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 266
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 267
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    .line 268
    .local v0, "interoperabilityIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v1

    .line 272
    .local v1, "gpsIfd":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v1, :cond_1

    .line 273
    invoke-direct {p0, v1, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v2

    .line 276
    .local v2, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v2, :cond_2

    .line 277
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v4, v3}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 279
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->stripNullValueTags(Lcom/miui/gallery3d/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 218
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 219
    .local v1, "exifSize":I
    add-int/lit8 v2, v1, 0x8

    const v3, 0xffff

    if-gt v2, v3, :cond_3

    .line 222
    new-instance v2, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    .local v2, "dataOutputStream":Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 224
    const/16 v3, -0x1f

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 225
    add-int/lit8 v3, v1, 0x8

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 226
    const v3, 0x45786966

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 227
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 228
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_1

    .line 229
    const/16 v3, 0x4d4d

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_0

    .line 231
    :cond_1
    const/16 v3, 0x4949

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 233
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 234
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 235
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 236
    invoke-direct {p0, v2}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeAllTags(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 237
    invoke-direct {p0, v2}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeThumbnail(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery3d/exif/ExifTag;

    .line 239
    .local v4, "t":Lcom/miui/gallery3d/exif/ExifTag;
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v5, v4}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 240
    .end local v4    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    goto :goto_1

    .line 241
    :cond_2
    return-void

    .line 220
    .end local v2    # "dataOutputStream":Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exif header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeIfd(Lcom/miui/gallery3d/exif/IfdData;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 8
    .param p1, "ifd"    # Lcom/miui/gallery3d/exif/IfdData;
    .param p2, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 284
    .local v0, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 285
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 286
    .local v5, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 287
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 288
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 292
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 293
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 295
    :cond_0
    invoke-static {v5, p2}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 296
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    sub-int/2addr v4, v7

    .local v4, "n":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 297
    invoke-virtual {p2, v2}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    .line 296
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 285
    .end local v4    # "n":I
    .end local v5    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getOffsetToNextIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 302
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 303
    .local v3, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 304
    invoke-static {v3, p2}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V

    .line 302
    .end local v3    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 307
    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/miui/gallery3d/exif/ExifTag;Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 4
    .param p0, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;
    .param p1, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 501
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 502
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getRational(I)Lcom/miui/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcom/miui/gallery3d/exif/Rational;)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    goto :goto_3

    .line 495
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 496
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    goto :goto_3

    .line 512
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 513
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/miui/gallery3d/exif/OrderedDataOutputStream;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 484
    .end local v0    # "i":I
    .end local v1    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 485
    .local v0, "buf":[B
    array-length v1, v0

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 486
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v3, v0, v1

    .line 487
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 489
    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 490
    invoke-virtual {p1, v3}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    .line 492
    goto :goto_3

    .line 507
    .end local v0    # "buf":[B
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 508
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 509
    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 510
    nop

    .line 517
    .end local v0    # "buf":[B
    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/miui/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .param p1, "dataOutputStream"    # Lcom/miui/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/miui/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getExifData()Lcom/miui/gallery3d/exif/ExifData;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    return-object v0
.end method

.method protected setExifData(Lcom/miui/gallery3d/exif/ExifData;)V
    .locals 0
    .param p1, "exifData"    # Lcom/miui/gallery3d/exif/ExifData;

    .line 95
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/miui/gallery3d/exif/ExifData;

    .line 96
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    const/16 v1, 0xff

    and-int/2addr v1, p1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 198
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->write([B)V

    .line 199
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->write([BII)V

    .line 207
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    :goto_0
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    if-eq v0, v1, :cond_c

    :cond_0
    if-lez p3, :cond_c

    .line 121
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v0, :cond_2

    .line 122
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    goto :goto_1

    :cond_1
    move v0, p3

    .line 123
    .local v0, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v0

    .line 124
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 125
    add-int/2addr p2, v0

    .line 127
    .end local v0    # "byteToProcess":I
    :cond_2
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    .line 128
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_3

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_2

    :cond_3
    move v0, p3

    .line 129
    .restart local v0    # "byteToProcess":I
    :goto_2
    iget-object v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    sub-int/2addr p3, v0

    .line 131
    iget v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    .line 132
    add-int/2addr p2, v0

    .line 134
    .end local v0    # "byteToProcess":I
    :cond_4
    if-nez p3, :cond_5

    .line 135
    return-void

    .line 137
    :cond_5
    iget v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v3

    .line 158
    .local v3, "byteRead":I
    add-int/2addr p2, v3

    .line 159
    sub-int/2addr p3, v3

    .line 161
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 162
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 163
    .local v4, "tag":S
    const/16 v5, -0x27

    if-ne v4, v5, :cond_6

    .line 164
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    .end local v4    # "tag":S
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ge v4, v0, :cond_7

    .line 169
    return-void

    .line 171
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 173
    .local v4, "marker":S
    const/16 v5, -0x1f

    const v6, 0xffff

    if-ne v4, v5, :cond_8

    .line 174
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 175
    iput v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 176
    :cond_8
    invoke-static {v4}, Lcom/miui/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v5

    if-nez v5, :cond_9

    .line 177
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5, v7, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 180
    :cond_9
    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iput v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    .line 183
    :goto_3
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .end local v3    # "byteRead":I
    .end local v4    # "marker":S
    goto/16 :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/miui/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 140
    .local v0, "byteRead":I
    add-int/2addr p2, v0

    .line 141
    sub-int/2addr p3, v0

    .line 142
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ge v3, v1, :cond_a

    .line 143
    return-void

    .line 145
    :cond_a
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_b

    .line 149
    iget-object v3, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mState:I

    .line 151
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-direct {p0}, Lcom/miui/gallery3d/exif/ExifOutputStream;->writeExifData()V

    .line 153
    goto/16 :goto_0

    .line 147
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v0    # "byteRead":I
    :cond_c
    if-lez p3, :cond_d

    .line 187
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
