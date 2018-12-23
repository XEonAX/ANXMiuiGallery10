.class public Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ResourceManager"

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadResourceFileString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_0
    new-array v3, v6, [B

    .line 117
    .local v3, "buffer":[B
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .line 119
    .local v5, "readLength":I
    :goto_0
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 120
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 121
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 127
    sget-object v7, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 128
    sget-object v7, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    move-object v1, v2

    .line 130
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buffer":[B
    .end local v5    # "readLength":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    return-object v6

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load resource file failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 128
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 130
    const/4 v6, 0x0

    goto :goto_1

    .line 127
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    sget-object v7, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 128
    sget-object v7, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v6

    .line 127
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 124
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method


# virtual methods
.method public loadAllResourceFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    if-eqz p1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "indexFiles":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 42
    array-length v7, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    move-object v5, v4

    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :goto_0
    if-ge v6, v7, :cond_3

    :try_start_1
    aget-object v1, v2, v6

    .line 43
    .local v1, "indexFile":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->loadResourceFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, "object":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 45
    if-nez v5, :cond_1

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v5, v4

    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    goto :goto_0

    .line 52
    .end local v1    # "indexFile":Ljava/lang/String;
    .end local v2    # "indexFiles":[Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAllResourceFromAssetsF failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_4
    return-object v4

    .line 52
    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v2    # "indexFiles":[Ljava/lang/String;
    .restart local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    goto :goto_3

    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v1    # "indexFile":Ljava/lang/String;
    .restart local v3    # "object":Lorg/json/JSONObject;
    .restart local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :cond_1
    move-object v4, v5

    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    goto :goto_1

    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :cond_2
    move-object v4, v5

    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    goto :goto_2

    .end local v1    # "indexFile":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :cond_3
    move-object v4, v5

    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    goto :goto_4
.end method

.method public loadResourceFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->loadResourceFileString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "indexJsonString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .end local v1    # "indexJsonString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 66
    .restart local v1    # "indexJsonString":Ljava/lang/String;
    :cond_0
    const-string v2, "loadResourceFromAssets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "indexJsonString":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadResourceFromAssets error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
