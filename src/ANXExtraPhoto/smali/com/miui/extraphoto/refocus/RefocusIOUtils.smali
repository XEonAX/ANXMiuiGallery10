.class public Lcom/miui/extraphoto/refocus/RefocusIOUtils;
.super Ljava/lang/Object;
.source "RefocusIOUtils.java"


# static fields
.field private static final EXTERNAL_SDCARD_PREFIX:Ljava/lang/String; = "/storage/%s"

.field private static final TAG:Ljava/lang/String; = "RefocusIOUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/lang/String;Ljava/io/Closeable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "closable"    # Ljava/io/Closeable;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_1

    .line 65
    :cond_0
    const-string v0, "res is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    goto :goto_2

    .line 67
    :goto_1
    nop

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public static dumpBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    move-object v1, v0

    .line 75
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 76
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    const-string v0, "RefocusIOUtils"

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 81
    nop

    .line 82
    return-void

    .line 80
    :goto_1
    const-string v2, "RefocusIOUtils"

    invoke-static {v2, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getWritablePath(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 86
    return-object p0

    .line 88
    :cond_0
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 89
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v0, :cond_1

    .line 90
    return-object p0

    .line 92
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 93
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    return-object p0

    .line 100
    :cond_3
    invoke-static {p0, v2}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->getWritablePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 94
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object p0
.end method

.method private static getWritablePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;

    .line 104
    const-string v0, "/storage/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "externalPrefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "targetPrefix":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    .end local v1    # "targetPrefix":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 31
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 32
    const-string v2, "RefocusIOUtils"

    const-string v3, "UTF-8"

    invoke-static {v2, v1, v3}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 36
    :goto_0
    const-string v2, "RefocusIOUtils"

    invoke-static {v2, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 37
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "RefocusIOUtils"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 38
    :goto_1
    return-object v0

    .line 36
    :goto_2
    const-string v3, "RefocusIOUtils"

    invoke-static {v3, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v2
.end method

.method private static readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v1, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 47
    .local v2, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "length":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 54
    .end local v4    # "length":I
    :goto_1
    invoke-static {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 55
    invoke-static {p0, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 56
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, ""

    invoke-static {p0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 57
    :goto_2
    return-object v0

    .line 54
    :goto_3
    invoke-static {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 55
    invoke-static {p0, v1}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v3
.end method
