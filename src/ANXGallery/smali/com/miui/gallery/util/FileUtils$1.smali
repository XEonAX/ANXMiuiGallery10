.class final Lcom/miui/gallery/util/FileUtils$1;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/FileUtils;->copyFileByDocumentProvider(Ljava/io/InputStream;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v4, 0x0

    .line 369
    const/16 v3, 0x1000

    :try_start_0
    new-array v0, v3, [B

    .line 372
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_0

    .line 373
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "FileUtils"

    invoke-static {v3, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v3

    .line 375
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 376
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public bridge synthetic handle(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/FileUtils$1;->handle(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
