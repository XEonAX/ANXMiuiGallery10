.class public Lcom/miui/gallery/collage/CollageUtils;
.super Ljava/lang/Object;
.source "CollageUtils.java"


# direct methods
.method public static generateCustomGson()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 85
    .local v0, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-class v1, Lcom/miui/gallery/collage/CollagePositionModel;

    new-instance v2, Lcom/miui/gallery/collage/CollagePositionModel$CustomDeserializer;

    invoke-direct {v2}, Lcom/miui/gallery/collage/CollagePositionModel$CustomDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 86
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableByAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 33
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 34
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 39
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "CollageUtils"

    invoke-static {v3, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 41
    :goto_0
    return-object v0

    .line 35
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 37
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    const-string v3, "CollageUtils"

    const-string v4, "load poster element img fail ! path %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const-string v3, "CollageUtils"

    invoke-static {v3, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    const-string v4, "CollageUtils"

    invoke-static {v4, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v3
.end method

.method static loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 49
    const-string v3, "CollageUtils"

    invoke-static {v3, v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 53
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    .line 55
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "CollageUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static loadSuitableBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 62
    .local v1, "dm":Landroid/util/DisplayMetrics;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v4, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    invoke-static {p0, p1, v4}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 65
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 66
    .local v5, "scale":I
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 69
    invoke-static {p0, p1}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->readExif(Landroid/content/Context;Landroid/net/Uri;)Lcom/miui/gallery3d/exif/ExifInterface;

    move-result-object v3

    .line 70
    .local v3, "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-static {p0, p1, v4}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v3, v4}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->joinExif(Landroid/graphics/Bitmap;Lcom/miui/gallery3d/exif/ExifInterface;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "exifInterface":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v6, "CollageUtils"

    invoke-static {v6, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
