.class public Lcom/miui/gallery/util/DecodeRegionImageUtils;
.super Ljava/lang/Object;
.source "DecodeRegionImageUtils.java"


# direct methods
.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DecodeRegionImageUtils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static computeSampleSize(F)I
    .locals 4
    .param p0, "scale"    # F

    .prologue
    .line 237
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 238
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method private static decodeFace(Landroid/graphics/RectF;Landroid/graphics/BitmapRegionDecoder;FIILcom/miui/gallery/util/ReusedBitmapCache;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "posRelative"    # Landroid/graphics/RectF;
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p2, "faceEnlargeFactor"    # F
    .param p3, "preferTargetSize"    # I
    .param p4, "exifOrientation"    # I
    .param p5, "cache"    # Lcom/miui/gallery/util/ReusedBitmapCache;

    .prologue
    const/4 v6, 0x1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 130
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    .line 131
    .local v1, "height":I
    instance-of v5, p0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 132
    check-cast v5, Lcom/miui/gallery/util/face/FaceRegionRectF;

    iget v3, v5, Lcom/miui/gallery/util/face/FaceRegionRectF;->orientation:I

    .line 134
    .local v3, "regionOrientation":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    if-eq v3, v6, :cond_0

    if-eqz v3, :cond_0

    if-eq v3, p4, :cond_0

    .line 138
    invoke-static {v6, v6, p0, v3, v6}, Lcom/miui/gallery/util/ExifUtil;->adjustRectOrientation(IILandroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object p0

    .line 141
    .end local v3    # "regionOrientation":I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/RectF;->left:F

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Landroid/graphics/RectF;->right:F

    int-to-float v8, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v1

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .local v0, "facePos":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    if-lez p3, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 147
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge p3, v5, :cond_1

    .line 149
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 150
    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 152
    int-to-float v5, p3

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 152
    invoke-static {v5}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    if-eqz p5, :cond_1

    .line 155
    invoke-virtual {p5, v2}, Lcom/miui/gallery/util/ReusedBitmapCache;->get(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 160
    :cond_1
    invoke-static {v0, v4, v1, p2}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->roundToSquareAndScale(Landroid/graphics/Rect;IIF)Landroid/graphics/Rect;

    move-result-object v5

    .line 158
    invoke-static {p1, v5, v2}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->safeDecodeRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 163
    .end local v0    # "facePos":Landroid/graphics/Rect;
    .end local v1    # "height":I
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "width":I
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static decodeFaceRegion(Landroid/graphics/RectF;Ljava/io/InputStream;FII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "posRelativeOfRegion"    # Landroid/graphics/RectF;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "faceEnlargeFactor"    # F
    .param p3, "preferTargetSize"    # I
    .param p4, "exifOrientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->requestCreateBitmapRegionDecoder(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 116
    .local v1, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeFace(Landroid/graphics/RectF;Landroid/graphics/BitmapRegionDecoder;FIILcom/miui/gallery/util/ReusedBitmapCache;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 119
    invoke-static {v1}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    throw v0
.end method

.method public static decodeFaceRegion(Landroid/graphics/RectF;Ljava/lang/String;FIILcom/miui/gallery/util/ReusedBitmapCache;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "posRelativeOfRegion"    # Landroid/graphics/RectF;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "faceEnlargeFactor"    # F
    .param p3, "preferTargetSize"    # I
    .param p4, "exifOrientation"    # I
    .param p5, "cache"    # Lcom/miui/gallery/util/ReusedBitmapCache;

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->requestCreateBitmapRegionDecoder(Ljava/lang/String;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .local v1, "decoder":Landroid/graphics/BitmapRegionDecoder;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 100
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeFace(Landroid/graphics/RectF;Landroid/graphics/BitmapRegionDecoder;FIILcom/miui/gallery/util/ReusedBitmapCache;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 103
    invoke-static {v1}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    throw v0
.end method

.method private static decodeRegion(Landroid/graphics/RectF;Landroid/graphics/BitmapRegionDecoder;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "posRelative"    # Landroid/graphics/RectF;
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p2, "preferTargetSize"    # I

    .prologue
    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 75
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 76
    .local v0, "height":I
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/RectF;->left:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .local v2, "regionPos":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    if-lez p2, :cond_0

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 84
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    int-to-float v4, p2

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 85
    invoke-static {v4}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->computeSampleSize(F)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 88
    :cond_0
    invoke-static {p1, v2, v1}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->safeDecodeRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 90
    .end local v0    # "height":I
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "regionPos":Landroid/graphics/Rect;
    .end local v3    # "width":I
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static decodeRegion(Landroid/graphics/RectF;Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "posRelativeOfRegion"    # Landroid/graphics/RectF;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "preferTargetSize"    # I

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->requestCreateBitmapRegionDecoder(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 48
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeRegion(Landroid/graphics/RectF;Landroid/graphics/BitmapRegionDecoder;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 50
    invoke-static {v0}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    throw v1
.end method

.method private static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 256
    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 258
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 259
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 260
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 261
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 262
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 263
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 264
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static requestCreateBitmapRegionDecoder(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 218
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DecodeRegionImageUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static requestCreateBitmapRegionDecoder(Ljava/lang/String;)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 211
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v3, "DecodeRegionImageUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    const/4 v3, 0x0

    .line 211
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 207
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static roundToSquareAndScale(Landroid/graphics/Rect;IIF)Landroid/graphics/Rect;
    .locals 9
    .param p0, "facePos"    # Landroid/graphics/Rect;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "enlargeFactor"    # F

    .prologue
    .line 182
    iget v6, p0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .line 183
    .local v4, "rawWidth":I
    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/graphics/Rect;->top:I

    sub-int v3, v6, v7

    .line 186
    .local v3, "rawHeight":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 188
    .local v2, "prefSize":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v7, p1, v7

    .line 190
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int v8, p2, v8

    .line 189
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 187
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v1, v6, 0x2

    .line 191
    .local v1, "maxSizeWithFaceCentral":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 192
    sub-int v6, v2, v4

    div-int/lit8 v5, v6, 0x2

    .line 193
    .local v5, "widthDelta":I
    sub-int v6, v2, v3

    div-int/lit8 v0, v6, 0x2

    .line 194
    .local v0, "heightDelta":I
    iget v6, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, p0, Landroid/graphics/Rect;->left:I

    .line 195
    iget v6, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v0

    iput v6, p0, Landroid/graphics/Rect;->top:I

    .line 196
    iget v6, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/graphics/Rect;->right:I

    .line 197
    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, p0, Landroid/graphics/Rect;->bottom:I

    .line 198
    return-object p0
.end method

.method private static safeDecodeRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "regionDecoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "DecodeRegionImageUtils"

    const-string v3, "safeDecodeRegion() failed OOM: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "DecodeRegionImageUtils"

    const-string v3, "safeDecodeRegion() failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
