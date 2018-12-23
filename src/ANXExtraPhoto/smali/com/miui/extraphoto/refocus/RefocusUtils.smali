.class public Lcom/miui/extraphoto/refocus/RefocusUtils;
.super Ljava/lang/Object;
.source "RefocusUtils.java"


# static fields
.field public static final ALGORITHM_NAME_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ALGORITHM_NAME_SOFT_PORTRAIT:Ljava/lang/String; = "soft-portrait"

.field private static final EXIF_AI_FILTER:S = -0x776bs

.field private static final EXIF_BLUR_LEVEL:S = -0x776fs

.field public static final EXIF_FOCUS_POINT:S = -0x7770s

.field private static final EXIF_MIRROR:S = -0x776as

.field private static final EXIF_PORTRAIT_TYPE:S = -0x7777s

.field private static final EXIF_RELIGHTING_TYPE:S = -0x776cs

.field private static final EXIF_WATER_MARK:S = -0x776es

.field private static final EXIF_WATER_MARK_TIME:S = -0x776ds

.field private static final REGEX:Ljava/lang/String; = "(Point\\()([\\S\\s]+)(\\))"

.field private static final TAG:Ljava/lang/String; = "RefocusUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFileForSave(Ljava/lang/String;ZLandroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p0, "parent"    # Ljava/lang/String;
    .param p1, "video"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 234
    invoke-static {p0, p2}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->getWritablePath(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 235
    const-string v0, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 237
    .local v0, "stamp":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 238
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "VID_%s.%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v2, "mp4"

    aput-object v2, v3, v1

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "IMG_%s.%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v2, "jpg"

    aput-object v2, v3, v1

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .restart local v1    # "name":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static decodeOriginBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "dataSeparation"    # [I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 54
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 55
    aget v2, p1, v1

    add-int/2addr v2, v0

    aget v0, p1, v0

    aget v1, p1, v1

    sub-int/2addr v0, v1

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    aget v2, p1, v1

    add-int/2addr v2, v0

    aget v0, p1, v0

    aget v1, p1, v1

    sub-int/2addr v0, v1

    invoke-static {p0, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static decodeUserDisplayBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "dataSeparation"    # [I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 46
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 47
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static getAllExifTag([B[I)Ljava/util/List;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "dataSeparation"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 65
    .local v1, "exifTags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery3d/exif/ExifTag;>;"
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    aget v4, p1, v3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v0, v2

    .line 66
    new-instance v2, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 67
    .local v2, "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .end local v2    # "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;->printStackTrace()V

    .end local v2    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    goto :goto_0

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    const-string v2, "RefocusUtils"

    invoke-static {v2, v0}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 75
    nop

    .line 76
    return-object v1

    .line 74
    :goto_1
    const-string v3, "RefocusUtils"

    invoke-static {v3, v0}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v2
.end method

.method public static getBitmapForYUV(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 250
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 251
    .local v1, "height":I
    rem-int/lit8 v2, v0, 0x8

    sub-int v2, v0, v2

    .line 252
    .local v2, "newWidth":I
    int-to-float v3, v2

    int-to-float v4, v1

    int-to-float v5, v0

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 253
    .local v3, "newHeight":I
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 254
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    if-eq v4, p0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    :cond_0
    return-object v4
.end method

.method static getDataSeparation([B)[I
    .locals 12
    .param p0, "data"    # [B

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v1, p0

    .line 156
    .local v1, "length":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "separationStart":J
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 158
    const/16 v6, 0xd9

    const/16 v7, 0xff

    invoke-static {p0, v5, v7, v6}, Lcom/miui/extraphoto/refocus/RefocusUtils;->isEqual([BIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v8, 0xd8

    const/4 v9, 0x1

    if-nez v6, :cond_0

    .line 160
    add-int/lit8 v6, v5, 0x2

    invoke-static {p0, v6, v7, v8}, Lcom/miui/extraphoto/refocus/RefocusUtils;->isEqual([BIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    const-string v6, "RefocusUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find end : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    add-int/lit8 v6, v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_0
    const-string v6, "RefocusUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_1

    .line 167
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v6, v5, 0x2

    invoke-static {p0, v6, v7, v8}, Lcom/miui/extraphoto/refocus/RefocusUtils;->isEqual([BIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    add-int/lit8 v6, v5, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    goto :goto_2

    .line 157
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 177
    .end local v5    # "i":I
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 178
    .local v5, "separationEnd":J
    const-string v7, "RefocusUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "search coast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v5, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 180
    const/4 v4, 0x0

    return-object v4

    .line 182
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [I

    .line 183
    .local v7, "separation":[I
    nop

    .local v4, "i":I
    :goto_3
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 184
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v4

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 186
    .end local v4    # "i":I
    :cond_5
    return-object v7
.end method

.method static getDeepData([B[I)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "dataSeparation"    # [I

    .line 147
    array-length v0, p0

    const/4 v1, 0x1

    aget v2, p1, v1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 148
    .local v0, "deepData":[B
    aget v2, p1, v1

    add-int/2addr v2, v1

    array-length v1, v0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 149
    return-object v0
.end method

.method static getNecessaryExif(Ljava/util/List;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V
    .locals 12
    .param p1, "imageExif"    # Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;",
            "Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;",
            ")V"
        }
    .end annotation

    .line 80
    .local p0, "exifTags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery3d/exif/ExifTag;>;"
    if-nez p0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery3d/exif/ExifTag;

    .line 85
    .local v2, "exifTag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v4

    .line 86
    .local v4, "tag":S
    sget v5, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    if-ne v4, v5, :cond_1

    .line 87
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInt(I)I

    move-result v3

    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->orientation:I

    goto/16 :goto_4

    .line 88
    :cond_1
    const/16 v5, -0x776f

    if-ne v4, v5, :cond_2

    .line 89
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInt(I)I

    move-result v3

    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    goto/16 :goto_4

    .line 90
    :cond_2
    const/16 v5, -0x7770

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    .line 91
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "point":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 93
    const-string v7, "(Point\\()([\\S\\s]+)(\\))"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 94
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 95
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 96
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "split":[Ljava/lang/String;
    array-length v11, v10

    if-ne v11, v9, :cond_3

    .line 100
    :try_start_0
    aget-object v3, v10, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusX:I

    .line 101
    aget-object v3, v10, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusY:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/NumberFormatException;
    iput v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusX:I

    .line 104
    iput v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusY:I

    .line 105
    const-string v6, "RefocusUtils"

    const-string v9, ""

    invoke-static {v6, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "point":Ljava/lang/String;
    .end local v7    # "pattern":Ljava/util/regex/Pattern;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "split":[Ljava/lang/String;
    :cond_3
    :goto_1
    goto/16 :goto_4

    :cond_4
    const/16 v5, -0x776e

    const/4 v7, 0x0

    if-ne v4, v5, :cond_6

    .line 111
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v5

    .line 112
    .local v5, "values":[B
    if-eqz v5, :cond_5

    array-length v6, v5

    if-lez v6, :cond_5

    .line 113
    array-length v6, v5

    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->waterMark:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 115
    :cond_5
    iput-object v7, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->waterMark:Landroid/graphics/Bitmap;

    .line 117
    .end local v5    # "values":[B
    :goto_2
    goto :goto_4

    :cond_6
    const/16 v5, -0x776d

    if-ne v4, v5, :cond_8

    .line 118
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v5

    .line 119
    .restart local v5    # "values":[B
    if-eqz v5, :cond_7

    array-length v6, v5

    if-lez v6, :cond_7

    .line 120
    array-length v6, v5

    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->waterMarkTime:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 122
    :cond_7
    iput-object v7, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->waterMarkTime:Landroid/graphics/Bitmap;

    .line 124
    .end local v5    # "values":[B
    :goto_3
    goto :goto_4

    :cond_8
    const/16 v5, -0x776c

    if-ne v4, v5, :cond_9

    .line 125
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInt(I)I

    move-result v3

    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    goto :goto_4

    .line 126
    :cond_9
    const/16 v5, -0x7777

    if-ne v4, v5, :cond_b

    .line 127
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v7, "soft-portrait"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v3, v6

    nop

    :cond_a
    iput-boolean v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->isSoftBokeh:Z

    .line 129
    .end local v5    # "type":Ljava/lang/String;
    goto :goto_4

    :cond_b
    const/16 v5, -0x776b

    if-ne v4, v5, :cond_c

    .line 130
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInt(I)I

    move-result v3

    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->filter:I

    goto :goto_4

    .line 131
    :cond_c
    const/16 v5, -0x776a

    if-ne v4, v5, :cond_e

    .line 132
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getValueAsInt(I)I

    move-result v5

    if-ne v5, v6, :cond_d

    move v3, v6

    nop

    :cond_d
    iput-boolean v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->mirror:Z

    .line 134
    .end local v2    # "exifTag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v4    # "tag":S
    :cond_e
    :goto_4
    goto/16 :goto_0

    .line 135
    :cond_f
    iget-boolean v1, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->isSoftBokeh:Z

    if-eqz v1, :cond_10

    .line 136
    iget v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    if-gez v0, :cond_11

    .line 137
    iput v3, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    goto :goto_5

    .line 140
    :cond_10
    iget v1, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    if-nez v1, :cond_11

    .line 141
    iput v0, p1, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->relightingType:I

    .line 144
    :cond_11
    :goto_5
    return-void
.end method

.method static getTempPath(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "origin"    # Ljava/io/File;

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".refocusTemp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 230
    :cond_0
    return-object v0
.end method

.method public static isDeviceSupportRefocus()Z
    .locals 5

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "isSupport":Z
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 263
    .local v1, "device":Ljava/lang/String;
    const-string v2, "polaris"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    const/4 v2, 0x0

    return v2

    .line 268
    :cond_0
    :try_start_0
    const-string v2, "refocus"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 269
    const-string v2, "arcsoft_dualcam_refocus"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 270
    const-string v2, "mpbase"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "RefocusUtils"

    const-string v4, "load refocus so failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v0, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 271
    :catch_1
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "RefocusUtils"

    const-string v4, "load refocus so failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v0, 0x0

    .line 277
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 278
    :goto_1
    return v0
.end method

.method private static isEqual([BII)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "target"    # I

    .line 197
    array-length v0, p0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    aget-byte v0, p0, p1

    .line 201
    .local v0, "next":I
    and-int/lit16 v0, v0, 0xff

    .line 202
    if-ne v0, p2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private static isEqual([BIII)Z
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "height"    # I
    .param p3, "low"    # I

    .line 190
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 191
    return v2

    .line 193
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusUtils;->isEqual([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p3}, Lcom/miui/extraphoto/refocus/RefocusUtils;->isEqual([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method static loadData(Ljava/lang/String;)[B
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 208
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 210
    .local v2, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 211
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 212
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    move-object v2, v3

    .line 213
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 214
    :catch_1
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    const-string v3, "RefocusUtils"

    invoke-static {v3, v0}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 220
    const-string v3, "RefocusUtils"

    invoke-static {v3, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 221
    nop

    .line 222
    return-object v2

    .line 219
    :goto_1
    const-string v4, "RefocusUtils"

    invoke-static {v4, v0}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 220
    const-string v4, "RefocusUtils"

    invoke-static {v4, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v3
.end method
