.class Lcom/miui/gallery/collage/CollageActivity$SaveTask;
.super Landroid/os/AsyncTask;
.source "CollageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/collage/render/CollageRender$RenderData;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 1

    .prologue
    .line 290
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->mSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/CollageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p2, "x1"    # Lcom/miui/gallery/collage/CollageActivity$1;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$SaveTask;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/gallery/collage/render/CollageRender$RenderData;)Ljava/io/File;
    .locals 14
    .param p1, "params"    # [Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .prologue
    .line 297
    const/4 v10, 0x0

    aget-object v8, p1, v10

    .line 299
    .local v8, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    const-string v10, "CollageActivity"

    const-string v11, "begin save task %s"

    invoke-static {v10, v11, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    iget v10, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    iget v11, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-static {v1, v8}, Lcom/miui/gallery/collage/render/CollageRender;->doRender(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V

    .line 304
    const-string/jumbo v10, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 305
    .local v9, "stamp":Ljava/lang/CharSequence;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "IMG_%s.jpg"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/collage/CollageResourcesManager;->getCreativePath()Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "parentPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 311
    :cond_0
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->mPath:Ljava/lang/String;

    .line 313
    const/4 v5, 0x0

    .line 315
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 317
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    iget-object v10, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    iget-object v10, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    const/4 v11, 0x1

    invoke-static {v10, v3, v11}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/io/File;I)Landroid/net/Uri;

    .line 320
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->mSuccess:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    invoke-static {v6}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 326
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :goto_0
    const-string v10, "CollageActivity"

    const-string v11, "save task generate file %s"

    invoke-static {v10, v11, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-object v3

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v10, "CollageActivity"

    const-string v11, "save task IOException %s"

    invoke-static {v10, v11, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v10

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 321
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    check-cast p1, [Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->doInBackground([Lcom/miui/gallery/collage/render/CollageRender$RenderData;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->mSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/CollageActivity;->access$100(Lcom/miui/gallery/collage/CollageActivity;Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/CollageActivity;->setResult(I)V

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/CollageActivity;->finish()V

    .line 337
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 290
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
