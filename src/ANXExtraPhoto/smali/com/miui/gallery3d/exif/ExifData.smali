.class Lcom/miui/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    .line 39
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    .line 42
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery3d/exif/IfdData;

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery3d/exif/IfdData;

    .line 139
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 140
    return-void
.end method

.method protected addTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery3d/exif/ExifData;->addTag(Lcom/miui/gallery3d/exif/ExifTag;I)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1

    .line 173
    .end local v0    # "ifd":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected addTag(Lcom/miui/gallery3d/exif/ExifTag;I)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;
    .param p2, "ifdId"    # I

    .line 181
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/miui/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v0

    .line 183
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 373
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 374
    return v0

    .line 376
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 377
    return v1

    .line 379
    :cond_1
    instance-of v2, p1, Lcom/miui/gallery3d/exif/ExifData;

    if-eqz v2, :cond_8

    .line 380
    move-object v2, p1

    check-cast v2, Lcom/miui/gallery3d/exif/ExifData;

    .line 381
    .local v2, "data":Lcom/miui/gallery3d/exif/ExifData;
    iget-object v3, v2, Lcom/miui/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_7

    iget-object v3, v2, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_7

    iget-object v3, v2, Lcom/miui/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 383
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 386
    :cond_2
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 387
    iget-object v4, v2, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 388
    return v1

    .line 386
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v3    # "i":I
    :cond_4
    move v3, v1

    .restart local v3    # "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_6

    .line 392
    invoke-virtual {v2, v3}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    .line 393
    .local v4, "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    invoke-virtual {p0, v3}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v5

    .line 394
    .local v5, "ifd2":Lcom/miui/gallery3d/exif/IfdData;
    if-eq v4, v5, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Lcom/miui/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 395
    return v1

    .line 391
    .end local v4    # "ifd1":Lcom/miui/gallery3d/exif/IfdData;
    .end local v5    # "ifd2":Lcom/miui/gallery3d/exif/IfdData;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 398
    .end local v3    # "i":I
    :cond_6
    return v0

    .line 384
    :cond_7
    :goto_2
    return v1

    .line 400
    .end local v2    # "data":Lcom/miui/gallery3d/exif/ExifData;
    :cond_8
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 313
    .local v5, "d":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v5, :cond_0

    .line 314
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 315
    .local v6, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v6, :cond_0

    .line 316
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 317
    .local v9, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v9    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 312
    .end local v5    # "d":Lcom/miui/gallery3d/exif/IfdData;
    .end local v6    # "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 323
    const/4 v1, 0x0

    return-object v1

    .line 325
    :cond_2
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 7
    .param p1, "ifd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    .line 334
    .local v0, "d":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    return-object v1

    .line 337
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 338
    .local v2, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v2, :cond_1

    .line 339
    return-object v1

    .line 341
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 343
    .local v6, "t":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v6    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 346
    return-object v1

    .line 348
    :cond_3
    return-object v3
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery3d/exif/ExifTag;>;"
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 358
    .local v4, "d":Lcom/miui/gallery3d/exif/IfdData;
    if-eqz v4, :cond_0

    .line 359
    invoke-virtual {v4, p1}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v5

    .line 360
    .local v5, "t":Lcom/miui/gallery3d/exif/ExifTag;
    if-eqz v5, :cond_0

    .line 361
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v4    # "d":Lcom/miui/gallery3d/exif/IfdData;
    .end local v5    # "t":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 366
    const/4 v1, 0x0

    return-object v1

    .line 368
    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .line 128
    invoke-static {p1}, Lcom/miui/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrCreateIfdData(I)Lcom/miui/gallery3d/exif/IfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .line 147
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    .line 148
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Lcom/miui/gallery3d/exif/IfdData;

    invoke-direct {v1, p1}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    move-object v0, v1

    .line 150
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    .line 152
    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1
    .param p1, "index"    # I

    .line 106
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .line 160
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    aget-object v0, v0, p2

    .line 161
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 9

    .line 217
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 218
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 219
    return-object v2

    .line 221
    :cond_0
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 222
    .local v3, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v3, :cond_1

    .line 223
    return-object v2

    .line 225
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    .line 226
    return-object v2

    .line 229
    :cond_2
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v4, v4, [B

    .line 230
    .local v4, "buf":[B
    invoke-virtual {v3, v4}, Lcom/miui/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 232
    new-array v6, v5, [B

    .line 233
    .local v6, "code":[B
    invoke-static {v4, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 236
    :try_start_0
    sget-object v1, Lcom/miui/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    new-instance v1, Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v5

    const-string v8, "US-ASCII"

    invoke-direct {v1, v4, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 238
    :cond_3
    sget-object v1, Lcom/miui/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    new-instance v1, Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v5

    const-string v8, "EUC-JP"

    invoke-direct {v1, v4, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 240
    :cond_4
    sget-object v1, Lcom/miui/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    new-instance v1, Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v5

    const-string v8, "UTF-16"

    invoke-direct {v1, v4, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 243
    :cond_5
    return-object v2

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "ExifData"

    const-string v7, "Failed to decode the user comment"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v2
.end method

.method protected getUserCommentAsASCII()Ljava/lang/String;
    .locals 8

    .line 253
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 254
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 255
    return-object v2

    .line 257
    :cond_0
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 258
    .local v3, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v3, :cond_1

    .line 259
    return-object v2

    .line 261
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v4

    .line 262
    .local v4, "buf":[B
    if-eqz v4, :cond_3

    array-length v5, v4

    if-lez v5, :cond_3

    .line 264
    :try_start_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v4, v5

    if-nez v5, :cond_2

    .line 265
    new-instance v5, Ljava/lang/String;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    const-string v7, "US-ASCII"

    invoke-direct {v5, v4, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v5

    .line 267
    :cond_2
    new-instance v1, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "ExifData"

    const-string v6, "Failed to decode the usercomment"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    return-object v2
.end method

.method protected getXiaomiComment()Ljava/lang/String;
    .locals 8

    .line 281
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 282
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 283
    return-object v1

    .line 285
    :cond_0
    sget v2, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-static {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery3d/exif/IfdData;->getTag(S)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 286
    .local v2, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    if-nez v2, :cond_1

    .line 287
    return-object v1

    .line 289
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 290
    return-object v1

    .line 293
    :cond_2
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v3

    .line 295
    .local v3, "buf":[B
    :try_start_0
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-byte v5, v3, v5

    if-nez v5, :cond_3

    .line 296
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v3

    sub-int/2addr v7, v4

    const-string v4, "US-ASCII"

    invoke-direct {v5, v3, v6, v7, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v5

    .line 298
    :cond_3
    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 300
    :catch_0
    move-exception v4

    .line 301
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "ExifData"

    const-string v6, "Failed to decode the xiaomicomment"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v1
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .line 205
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    aget-object v0, v0, p2

    .line 206
    .local v0, "ifdData":Lcom/miui/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/IfdData;->removeTag(S)V

    .line 210
    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/miui/gallery3d/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 199
    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .line 69
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 70
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "strip"    # [B

    .line 83
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_1
    return-void
.end method
