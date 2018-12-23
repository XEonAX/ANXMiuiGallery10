.class public final Lcom/miui/gallery/editor/photo/utils/Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# direct methods
.method public static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    if-nez p0, :cond_1

    .line 171
    const/4 v0, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 175
    .local v0, "copyBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 184
    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v3, "Graphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureBitmapSize error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string v4, "copy"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v3, "photo_editor"

    const-string v4, "memory_error"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 184
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v3
.end method

.method public static copyBitmapInCaseOfRecycle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 82
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 76
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static joinExif(Landroid/graphics/Bitmap;Lcom/miui/gallery3d/exif/ExifInterface;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 137
    if-nez p1, :cond_1

    .line 165
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 141
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :cond_1
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v9

    .line 142
    .local v9, "rawValue":Ljava/lang/Integer;
    if-eqz v9, :cond_0

    .line 146
    invoke-virtual {v9}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v8

    .line 147
    .local v8, "degree":I
    if-eqz v8, :cond_0

    .line 149
    if-eqz p0, :cond_3

    .line 150
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 151
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v8

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 153
    .local v7, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    if-eqz p2, :cond_2

    rem-int/lit16 v0, v8, 0xb4

    if-eqz v0, :cond_2

    .line 159
    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 160
    .local v10, "width":I
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 161
    iput v10, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .end local v10    # "width":I
    :cond_2
    move-object p0, v7

    .line 163
    goto :goto_0

    .line 155
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static readExif(Landroid/content/Context;Landroid/net/Uri;)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    const-string v1, "Graphics"

    invoke-static {v1, p0, p1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openInputStream(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 109
    .local v0, "in":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    .line 114
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->readExif(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 116
    const-string v2, "Graphics"

    invoke-static {v2, v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Graphics"

    invoke-static {v2, v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v1
.end method

.method public static readExif(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 89
    if-nez p0, :cond_0

    move-object v1, v2

    .line 104
    :goto_0
    return-object v1

    .line 94
    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 95
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 97
    .end local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :try_start_1
    const-string v3, "Graphics"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :goto_1
    move-object v1, v2

    .line 104
    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "Graphics"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static setConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    move-object v0, p0

    .line 126
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 128
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 129
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    return-object v0
.end method
