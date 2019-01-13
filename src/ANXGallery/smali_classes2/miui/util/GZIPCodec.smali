.class public final Lmiui/util/GZIPCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    nop

    .line 76
    nop

    .line 78
    const/4 p0, 0x0

    :try_start_8
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1a

    .line 79
    :try_start_d
    invoke-static {v1}, Lmiui/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_16

    .line 81
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 82
    nop

    .line 83
    return-object p0

    .line 81
    :catchall_16
    move-exception p0

    move-object v0, p0

    move-object p0, v1

    goto :goto_1b

    :catchall_1a
    move-exception v0

    :goto_1b
    invoke-static {p0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static encode([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    nop

    .line 57
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1b

    .line 58
    :try_start_c
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    .line 60
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 61
    nop

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 60
    :catchall_18
    move-exception p0

    move-object v1, v2

    goto :goto_1c

    :catchall_1b
    move-exception p0

    :goto_1c
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw p0
.end method

.method public static getID()Ljava/lang/String;
    .registers 1

    .line 43
    const-string v0, "gzip"

    return-object v0
.end method
