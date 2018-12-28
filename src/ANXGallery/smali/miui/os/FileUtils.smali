.class public Lmiui/os/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DY:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/os/FileUtils;->DY:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static H(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    nop

    .line 468
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_32

    .line 469
    :try_start_9
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 470
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 472
    :goto_17
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 473
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    .line 474
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_30

    .line 480
    nop

    .line 481
    :try_start_23
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_29

    .line 483
    :catch_27
    move-exception v0

    goto :goto_2a

    .line 485
    :goto_29
    nop

    .line 474
    :goto_2a
    return-object p0

    .line 476
    :cond_2b
    const/4 v3, 0x0

    :try_start_2c
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 477
    goto :goto_17

    .line 479
    :catchall_30
    move-exception p0

    goto :goto_34

    :catchall_32
    move-exception p0

    move-object v1, v0

    .line 480
    :goto_34
    if-eqz v1, :cond_3c

    .line 481
    :try_start_36
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3c

    .line 483
    :catch_3a
    move-exception v0

    nop

    .line 485
    :cond_3c
    :goto_3c
    throw p0
.end method

.method public static addNoMedia(Ljava/lang/String;)Z
    .registers 3

    .line 414
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 417
    :try_start_b
    new-instance p0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    return p0

    .line 418
    :catch_17
    move-exception p0

    .line 422
    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 305
    nop

    .line 308
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2a

    .line 309
    const/16 p0, 0x80

    :try_start_13
    new-array p0, p0, [B

    .line 310
    :goto_15
    invoke-virtual {v2, p0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1c

    goto :goto_15

    .line 313
    :cond_1c
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_27

    .line 315
    nop

    .line 317
    :try_start_21
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 320
    goto :goto_26

    .line 318
    :catch_25
    move-exception p0

    .line 313
    :goto_26
    return-wide v0

    .line 315
    :catchall_27
    move-exception p0

    move-object v1, v2

    goto :goto_2b

    :catchall_2a
    move-exception p0

    :goto_2b
    if-eqz v1, :cond_32

    .line 317
    :try_start_2d
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 320
    goto :goto_32

    .line 318
    :catch_31
    move-exception v0

    .line 320
    :cond_32
    :goto_32
    throw p0
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .registers 3

    .line 83
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 87
    :cond_9
    const/4 v0, 0x1

    if-gez p1, :cond_d

    .line 88
    return v0

    .line 91
    :cond_d
    invoke-static {p0, p1, v0}, Lcom/miui/internal/os/Native;->chmod(Ljava/lang/String;II)Z

    move-result p0

    return p0

    .line 84
    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .registers 5

    .line 103
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1e

    .line 107
    :cond_9
    const/4 v0, 0x1

    if-gez p1, :cond_f

    if-gez p2, :cond_f

    .line 108
    return v0

    .line 111
    :cond_f
    const/4 v1, -0x1

    if-gez p1, :cond_15

    .line 112
    nop

    .line 117
    move p1, v1

    goto :goto_19

    .line 113
    :cond_15
    if-gez p2, :cond_19

    .line 114
    nop

    .line 117
    move p2, v1

    :cond_19
    :goto_19
    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/os/Native;->chown(Ljava/lang/String;III)Z

    move-result p0

    return p0

    .line 104
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    .line 151
    nop

    .line 153
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_14

    .line 155
    :try_start_6
    invoke-static {v0, p1}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 157
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 158
    nop

    .line 161
    goto :goto_16

    .line 157
    :catchall_f
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_14

    .line 159
    :catch_14
    move-exception p0

    .line 160
    const/4 p0, 0x0

    .line 162
    :goto_16
    return p0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 5

    .line 172
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_e

    .line 174
    return v0

    .line 177
    :cond_e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_44

    .line 179
    const/16 p1, 0x1000

    :try_start_15
    new-array p1, p1, [B

    .line 181
    :goto_17
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_21

    .line 182
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_33

    goto :goto_17

    .line 185
    :cond_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_44

    .line 187
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 190
    goto :goto_2d

    .line 188
    :catch_2c
    move-exception p0

    .line 191
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 192
    nop

    .line 193
    const/4 p0, 0x1

    return p0

    .line 185
    :catchall_33
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_44

    .line 187
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 190
    goto :goto_40

    .line 188
    :catch_3f
    move-exception p1

    .line 191
    :goto_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 194
    :catch_44
    move-exception p0

    .line 195
    return v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 365
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 368
    :cond_9
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 369
    const/4 v1, -0x1

    if-le v0, v1, :cond_19

    .line 370
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 372
    :cond_19
    const-string p0, ""

    return-object p0

    .line 366
    :cond_1c
    :goto_1c
    const-string p0, ""

    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 399
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 402
    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 403
    const/4 v1, -0x1

    if-le v0, v1, :cond_19

    .line 404
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 406
    :cond_19
    return-object p0

    .line 400
    :cond_1a
    :goto_1a
    const-string p0, ""

    return-object p0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .registers 7

    .line 440
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    .line 441
    return-wide v1

    .line 444
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 445
    nop

    .line 446
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 447
    if-eqz p0, :cond_24

    .line 448
    array-length v0, p0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_24

    aget-object v4, p0, v3

    .line 449
    invoke-static {v4}, Lmiui/os/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 452
    :cond_24
    return-wide v1

    .line 454
    :cond_25
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 381
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 384
    :cond_9
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 385
    if-gez v0, :cond_12

    .line 386
    const/4 v0, -0x1

    .line 388
    :cond_12
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 389
    if-gez v1, :cond_21

    .line 390
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    :cond_21
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 389
    :goto_27
    return-object p0

    .line 382
    :cond_28
    :goto_28
    const-string p0, ""

    return-object p0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 2

    .line 209
    sget-object v0, Lmiui/os/FileUtils;->DY:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .registers 6

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0

    .line 341
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 342
    invoke-static {v0, p1, p2, p3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 343
    return v1

    .line 347
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lmiui/os/FileUtils;->chown(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 v1, 0x1

    nop

    :cond_33
    return v1
.end method

.method public static normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_f

    goto :goto_20

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_20
    return-object p0
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lmiui/os/FileUtils;->H(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 225
    const-wide/16 v3, 0x0

    const/4 p0, 0x0

    if-gtz p1, :cond_9a

    cmp-long v5, v1, v3

    if-lez v5, :cond_16

    if-nez p1, :cond_16

    goto/16 :goto_9a

    .line 237
    :cond_16
    if-gez p1, :cond_7d

    .line 239
    nop

    .line 240
    nop

    .line 242
    const/4 v1, 0x0

    move v3, p0

    move-object v2, v1

    :goto_1d
    const/4 v4, 0x1

    if-eqz v1, :cond_22

    .line 243
    nop

    .line 244
    move v3, v4

    .line 245
    :cond_22
    nop

    .line 246
    nop

    .line 247
    if-nez v1, :cond_29

    .line 248
    neg-int v1, p1

    new-array v1, v1, [B

    .line 249
    :cond_29
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 250
    array-length v6, v1

    if-eq v5, v6, :cond_79

    .line 252
    if-nez v2, :cond_3a

    if-gtz v5, :cond_3a

    .line 253
    const-string p0, ""
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 253
    return-object p0

    .line 254
    :cond_3a
    if-nez v2, :cond_45

    .line 255
    :try_start_3c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, p0, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 255
    return-object p1

    .line 256
    :cond_45
    if-lez v5, :cond_53

    .line 257
    nop

    .line 258
    :try_start_48
    array-length p1, v2

    sub-int/2addr p1, v5

    invoke-static {v2, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    array-length p1, v2

    sub-int/2addr p1, v5

    invoke-static {v1, p0, v2, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    move v3, v4

    :cond_53
    if-eqz p2, :cond_70

    if-nez v3, :cond_58

    goto :goto_70

    .line 263
    :cond_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6c
    .catchall {:try_start_48 .. :try_end_6c} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 263
    return-object p0

    .line 262
    :cond_70
    :goto_70
    :try_start_70
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 262
    return-object p0

    .line 242
    :cond_79
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1d

    .line 265
    :cond_7d
    :try_start_7d
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 269
    :cond_86
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 270
    if-lez v1, :cond_8f

    .line 271
    invoke-virtual {p1, p2, p0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 272
    :cond_8f
    array-length v2, p2

    if-eq v1, v2, :cond_86

    .line 273
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 273
    return-object p0

    .line 226
    :cond_9a
    :goto_9a
    cmp-long v3, v1, v3

    if-lez v3, :cond_a6

    if-eqz p1, :cond_a5

    int-to-long v3, p1

    cmp-long v3, v1, v3

    if-gez v3, :cond_a6

    .line 227
    :cond_a5
    long-to-int p1, v1

    .line 228
    :cond_a6
    add-int/lit8 v1, p1, 0x1

    :try_start_a8
    new-array v1, v1, [B

    .line 229
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 230
    if-gtz v2, :cond_b6

    .line 231
    const-string p0, ""
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 231
    return-object p0

    .line 232
    :cond_b6
    if-gt v2, p1, :cond_c1

    .line 233
    :try_start_b8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, p0, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_bd
    .catchall {:try_start_b8 .. :try_end_bd} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 233
    return-object p1

    .line 234
    :cond_c1
    if-nez p2, :cond_cc

    .line 235
    :try_start_c3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1, p0, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 235
    return-object p2

    .line 236
    :cond_cc
    :try_start_cc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, p0, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e0
    .catchall {:try_start_cc .. :try_end_e0} :catchall_e4

    .line 276
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 236
    return-object p0

    .line 276
    :catchall_e4
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static rm(Ljava/lang/String;)Z
    .registers 2

    .line 356
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/internal/os/Native;->rm(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 290
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 292
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 293
    nop

    .line 294
    return-void

    .line 292
    :catchall_d
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw p0
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 1

    .line 135
    if-eqz p0, :cond_d

    .line 136
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_d

    .line 139
    :catch_a
    move-exception p0

    .line 142
    const/4 p0, 0x0

    return p0

    .line 138
    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static umask(I)I
    .registers 1

    .line 126
    invoke-static {p0}, Lcom/miui/internal/os/Native;->umask(I)I

    move-result p0

    return p0
.end method
