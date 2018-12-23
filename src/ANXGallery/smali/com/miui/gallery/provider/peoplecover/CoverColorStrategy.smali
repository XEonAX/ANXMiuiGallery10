.class public Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverColorStrategy.java"


# instance fields
.field private mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;-><init>(I)V

    .line 22
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    invoke-direct {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    .line 26
    return-void
.end method

.method private getCoverBitmap(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v12, 0x0

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v10, v12

    .line 93
    :goto_0
    return-object v10

    .line 79
    :cond_0
    const/4 v8, 0x0

    .line 80
    .local v8, "is":Ljava/io/FileInputStream;
    new-instance v6, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v6}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 83
    .local v6, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6, v9}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 85
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v6, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v7

    .line 86
    .local v7, "exifOrientation":Ljava/lang/Integer;
    if-nez v7, :cond_1

    const/4 v4, 0x1

    .line 87
    .local v4, "orientation":I
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    iget-object v5, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeFaceRegion(Landroid/graphics/RectF;Ljava/lang/String;FIILcom/miui/gallery/util/ReusedBitmapCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 88
    .local v10, "result":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    invoke-virtual {v0, v10}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->put(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 86
    .end local v4    # "orientation":I
    .end local v10    # "result":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    goto :goto_1

    .line 90
    .end local v7    # "exifOrientation":Ljava/lang/Integer;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v11

    .line 93
    .local v11, "t":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v10, v12

    goto :goto_0

    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 90
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getCoverFilePath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 99
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 100
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v4, 0x2

    .line 101
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 102
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x3

    .line 103
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float/2addr v4, v5

    const/16 v5, 0xb

    .line 104
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    return-object v0
.end method

.method public isValid(Landroid/database/Cursor;)Z
    .locals 15
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->getCoverFilePath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->getCoverBitmap(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    .local v1, "coverBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 32
    const/4 v13, 0x0

    .line 55
    :goto_0
    return v13

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 35
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 36
    .local v12, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v12, :cond_4

    .line 37
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 38
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 40
    .local v9, "pixel":I
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 41
    .local v10, "red":I
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 42
    .local v0, "blue":I
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 44
    .local v2, "green":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 45
    .local v7, "max":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 46
    .local v8, "min":I
    if-nez v7, :cond_1

    const/4 v11, 0x0

    .line 47
    .local v11, "saturation":F
    :goto_3
    add-int v13, v7, v8

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v6, v13, v14

    .line 50
    .local v6, "lightness":F
    const/high16 v13, 0x3e800000    # 0.25f

    cmpl-float v13, v11, v13

    if-lez v13, :cond_2

    const/high16 v13, 0x3e800000    # 0.25f

    cmpl-float v13, v6, v13

    if-lez v13, :cond_2

    const/high16 v13, 0x3f400000    # 0.75f

    cmpg-float v13, v6, v13

    if-gez v13, :cond_2

    .line 51
    const/4 v13, 0x1

    goto :goto_0

    .line 46
    .end local v6    # "lightness":F
    .end local v11    # "saturation":F
    :cond_1
    sub-int v13, v7, v8

    int-to-float v13, v13

    int-to-float v14, v7

    div-float v11, v13, v14

    goto :goto_3

    .line 37
    .restart local v6    # "lightness":F
    .restart local v11    # "saturation":F
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 36
    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v6    # "lightness":F
    .end local v7    # "max":I
    .end local v8    # "min":I
    .end local v9    # "pixel":I
    .end local v10    # "red":I
    .end local v11    # "saturation":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .end local v5    # "j":I
    :cond_4
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->clear()V

    .line 61
    return-void
.end method
