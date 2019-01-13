.class Lmiui/util/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static HJ:[B


# instance fields
.field private HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field private HM:B

.field private HO:B

.field private HP:B

.field private HQ:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 116
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    return-void
.end method

.method private constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .registers 7

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 145
    iput-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HM:B

    .line 146
    iput-byte p3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    .line 147
    iput-byte p4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    .line 148
    iput-wide p5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HQ:J

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V
    .registers 8

    .line 103
    invoke-direct/range {p0 .. p6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-void
.end method

.method private static W(I)[B
    .registers 3

    .line 125
    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 126
    :try_start_3
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    if-eqz v1, :cond_c

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    array-length v1, v1

    if-ge v1, p0, :cond_10

    .line 127
    :cond_c
    new-array p0, p0, [B

    sput-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    .line 129
    :cond_10
    sget-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    .line 131
    monitor-exit v0

    return-object p0

    .line 132
    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private static X(I)B
    .registers 5

    .line 484
    nop

    .line 485
    const/4 v0, 0x2

    mul-int/2addr v0, p0

    int-to-long v0, v0

    const/4 p0, 0x0

    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    if-lez v2, :cond_12

    .line 486
    add-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    .line 485
    shr-long/2addr v0, v3

    goto :goto_5

    .line 489
    :cond_12
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p0, v0, :cond_19

    .line 490
    nop

    .line 495
    move p0, v1

    goto :goto_1f

    .line 491
    :cond_19
    if-le p0, v1, :cond_1f

    if-ge p0, v3, :cond_1f

    .line 492
    nop

    .line 495
    move p0, v3

    :cond_1f
    :goto_1f
    return p0
.end method

.method static synthetic Y(I)B
    .registers 1

    .line 103
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->X(I)B

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B
    .registers 1

    .line 103
    iget-byte p0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HM:B

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B
    .registers 2

    .line 103
    iput-byte p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HM:B

    return p1
.end method

.method private a(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eqz p1, :cond_e

    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    if-eqz v3, :cond_e

    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    if-nez v3, :cond_71

    .line 173
    :cond_e
    nop

    .line 174
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    .line 175
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 176
    nop

    .line 177
    sget-object v8, Lmiui/util/DirectIndexedFile$1;->Hr:[I

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_d0

    .line 199
    move v7, v5

    goto :goto_58

    .line 195
    :pswitch_35
    check-cast v7, [J

    array-length v7, v7

    .line 196
    mul-int v8, v1, v7

    add-int/2addr v6, v8

    goto :goto_58

    .line 191
    :pswitch_3c
    check-cast v7, [I

    array-length v7, v7

    .line 192
    mul-int v8, v2, v7

    add-int/2addr v6, v8

    .line 193
    goto :goto_58

    .line 187
    :pswitch_43
    check-cast v7, [S

    array-length v7, v7

    .line 188
    mul-int v8, v0, v7

    add-int/2addr v6, v8

    .line 189
    goto :goto_58

    .line 183
    :pswitch_4a
    check-cast v7, [B

    array-length v7, v7

    .line 184
    add-int/2addr v6, v7

    .line 185
    goto :goto_58

    .line 179
    :pswitch_4f
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    .line 180
    add-int/2addr v6, v7

    .line 181
    nop

    .line 199
    :goto_58
    if-ge v3, v7, :cond_5c

    .line 200
    nop

    .line 202
    move v3, v7

    :cond_5c
    goto :goto_1b

    .line 203
    :cond_5d
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->X(I)B

    move-result v3

    iput-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    .line 204
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v6, v3

    .line 205
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->X(I)B

    move-result v3

    iput-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    .line 208
    :cond_71
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    .line 209
    if-eqz p1, :cond_ce

    .line 210
    nop

    .line 211
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_80
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 212
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    int-to-long v7, v4

    invoke-static {p1, v6, v7, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 213
    sget-object v6, Lmiui/util/DirectIndexedFile$1;->Hr:[I

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_de

    goto :goto_cd

    .line 227
    :pswitch_9e
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    check-cast v5, [J

    array-length v5, v5

    mul-int/2addr v5, v1

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    goto :goto_cd

    .line 224
    :pswitch_a7
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    check-cast v5, [I

    array-length v5, v5

    mul-int/2addr v5, v2

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 225
    goto :goto_cd

    .line 221
    :pswitch_b0
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    check-cast v5, [S

    array-length v5, v5

    mul-int/2addr v5, v0

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 222
    goto :goto_cd

    .line 218
    :pswitch_b9
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 219
    goto :goto_cd

    .line 215
    :pswitch_c1
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 216
    nop

    .line 230
    :goto_cd
    goto :goto_80

    .line 232
    :cond_ce
    return v3

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4a
        :pswitch_43
        :pswitch_3c
        :pswitch_35
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_b9
        :pswitch_b0
        :pswitch_a7
        :pswitch_9e
    .end packed-switch
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/DataInput;I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x4

    if-eq p1, v0, :cond_32

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2d

    packed-switch p1, :pswitch_data_3a

    .line 478
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuppoert size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 469
    :pswitch_21
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result p0

    int-to-long p0, p0

    .line 470
    goto :goto_38

    .line 466
    :pswitch_27
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    int-to-long p0, p0

    .line 467
    goto :goto_38

    .line 475
    :cond_2d
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide p0

    .line 476
    goto :goto_38

    .line 472
    :cond_32
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 473
    nop

    .line 480
    :goto_38
    return-wide p0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J
    .registers 3

    .line 103
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HQ:J

    return-wide p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    nop

    .line 359
    nop

    .line 361
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v0

    .line 362
    if-eqz p2, :cond_10

    .line 363
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    mul-int/2addr v2, p2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 365
    :cond_10
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 367
    sget-object p2, Lmiui/util/DirectIndexedFile$1;->Hr:[I

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_98

    .line 406
    move-object p2, v0

    goto :goto_94

    .line 398
    :pswitch_2b
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    new-array p2, p2, [J

    .line 399
    nop

    .line 400
    :goto_35
    array-length v2, p2

    if-ge v1, v2, :cond_41

    .line 401
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 403
    :cond_41
    goto :goto_94

    .line 390
    :pswitch_42
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    new-array p2, p2, [I

    .line 391
    nop

    .line 392
    :goto_4c
    array-length v2, p2

    if-ge v1, v2, :cond_58

    .line 393
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v2

    aput v2, p2, v1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 395
    :cond_58
    goto :goto_94

    .line 382
    :pswitch_59
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    new-array p2, p2, [S

    .line 383
    nop

    .line 384
    :goto_63
    array-length v2, p2

    if-ge v1, v2, :cond_6f

    .line 385
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v2

    aput-short v2, p2, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 387
    :cond_6f
    goto :goto_94

    .line 376
    :pswitch_70
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v1

    long-to-int p2, v1

    new-array p2, p2, [B

    .line 377
    invoke-interface {p1, p2}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([B)V

    .line 378
    nop

    .line 379
    nop

    .line 380
    goto :goto_94

    .line 369
    :pswitch_7f
    iget-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-static {p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide v2

    long-to-int p2, v2

    .line 370
    invoke-static {p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->W(I)[B

    move-result-object v0

    .line 371
    invoke-interface {p1, v0, v1, p2}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([BII)V

    .line 372
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 373
    nop

    .line 406
    move-object p2, p1

    :goto_94
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->b([B)V

    .line 407
    return-object p2

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_70
        :pswitch_59
        :pswitch_42
        :pswitch_2b
    .end packed-switch
.end method

.method private static a(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    aget-object v3, v0, v1

    .line 153
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    .line 154
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    .line 155
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v6

    .line 156
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v7

    .line 157
    new-instance p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-object p0
.end method

.method private static a(Ljava/io/DataOutput;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2b

    packed-switch p1, :pswitch_data_36

    .line 458
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsuppoert size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 449
    :pswitch_21
    long-to-int p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 450
    goto :goto_34

    .line 446
    :pswitch_26
    long-to-int p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 447
    goto :goto_34

    .line 455
    :cond_2b
    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 456
    goto :goto_34

    .line 452
    :cond_2f
    long-to-int p1, p2

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 453
    nop

    .line 460
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_26
        :pswitch_21
    .end packed-switch
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    nop

    .line 412
    sget-object v0, Lmiui/util/DirectIndexedFile$1;->Hr:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_54

    .line 440
    const/4 v0, 0x0

    goto :goto_53

    .line 426
    :pswitch_12
    new-array v0, v1, [Ljava/lang/Object;

    .line 427
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    .line 428
    goto :goto_53

    .line 422
    :pswitch_1f
    new-array v0, v1, [Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 424
    goto :goto_53

    .line 418
    :pswitch_2c
    new-array v0, v1, [Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v0, v2

    .line 420
    goto :goto_53

    .line 414
    :pswitch_39
    new-array v0, v1, [Ljava/lang/Object;

    .line 415
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v2

    .line 416
    goto :goto_53

    .line 434
    :pswitch_46
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 435
    invoke-direct {p0, p1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    .line 436
    nop

    .line 440
    :goto_53
    return-object v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
        :pswitch_12
    .end packed-switch
.end method

.method private b(Ljava/io/DataOutput;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    if-eqz p1, :cond_1f

    .line 162
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 163
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HM:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 164
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 165
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HP:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 166
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HQ:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 168
    :cond_1f
    const/16 p1, 0xc

    return p1
.end method

.method private b(Ljava/io/DataOutput;Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    nop

    .line 237
    sget-object v0, Lmiui/util/DirectIndexedFile$1;->Hr:[I

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_192

    .line 354
    move v1, v4

    goto/16 :goto_190

    .line 257
    :pswitch_16
    if-eqz p1, :cond_25

    .line 258
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 260
    :cond_25
    nop

    .line 261
    nop

    .line 354
    move v1, v2

    goto/16 :goto_190

    .line 251
    :pswitch_2a
    if-eqz p1, :cond_39

    .line 252
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 254
    :cond_39
    nop

    .line 255
    nop

    .line 354
    :goto_3b
    move v1, v3

    goto/16 :goto_190

    .line 245
    :pswitch_3e
    if-eqz p1, :cond_4d

    .line 246
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeShort(I)V

    .line 248
    :cond_4d
    nop

    .line 249
    goto/16 :goto_190

    .line 239
    :pswitch_50
    if-eqz p1, :cond_5f

    .line 240
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 242
    :cond_5f
    nop

    .line 243
    nop

    .line 354
    const/4 v1, 0x1

    goto/16 :goto_190

    .line 334
    :pswitch_64
    if-eqz p1, :cond_6d

    .line 335
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 337
    :cond_6d
    nop

    .line 338
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 340
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_78
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 341
    check-cast v0, [J

    .line 342
    if-eqz p1, :cond_99

    .line 343
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 344
    array-length v3, v0

    move v5, v4

    :goto_8f
    if-ge v5, v3, :cond_99

    aget-wide v6, v0, v5

    .line 345
    invoke-interface {p1, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 348
    :cond_99
    iget-byte v3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v0, v0

    mul-int/2addr v0, v2

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 349
    goto :goto_78

    .line 350
    :cond_a0
    goto/16 :goto_190

    .line 316
    :pswitch_a2
    if-eqz p1, :cond_ab

    .line 317
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    :cond_ab
    nop

    .line 320
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v0, v3

    .line 322
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_b6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 323
    check-cast v0, [I

    .line 324
    if-eqz p1, :cond_d7

    .line 325
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p1, v2, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 326
    array-length v2, v0

    move v5, v4

    :goto_cd
    if-ge v5, v2, :cond_d7

    aget v6, v0, v5

    .line 327
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    .line 330
    :cond_d7
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v0, v0

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 331
    goto :goto_b6

    .line 332
    :cond_de
    goto/16 :goto_190

    .line 298
    :pswitch_e0
    if-eqz p1, :cond_e9

    .line 299
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 301
    :cond_e9
    nop

    .line 302
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 305
    check-cast v0, [S

    .line 306
    if-eqz p1, :cond_114

    .line 307
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p1, v2, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 308
    array-length v2, v0

    move v5, v4

    :goto_10a
    if-ge v5, v2, :cond_114

    aget-short v6, v0, v5

    .line 309
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_10a

    .line 312
    :cond_114
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v0, v0

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    add-int/2addr v3, v2

    .line 313
    goto :goto_f3

    .line 314
    :cond_11b
    goto/16 :goto_3b

    .line 282
    :pswitch_11d
    if-eqz p1, :cond_126

    .line 283
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 285
    :cond_126
    nop

    .line 286
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 288
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_131
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 289
    check-cast v0, [B

    .line 290
    if-eqz p1, :cond_149

    .line 291
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v3, v0

    int-to-long v3, v3

    invoke-static {p1, v2, v3, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 292
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 294
    :cond_149
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 295
    goto :goto_131

    .line 296
    :cond_14f
    goto :goto_190

    .line 263
    :pswitch_150
    if-eqz p1, :cond_159

    .line 264
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 266
    :cond_159
    nop

    .line 267
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    add-int/2addr v3, v0

    .line 269
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_164
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 272
    if-eqz p1, :cond_189

    .line 273
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v3, v0

    int-to-long v5, v3

    invoke-static {p1, v2, v5, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataOutput;IJ)V

    .line 274
    array-length v2, v0

    move v3, v4

    :goto_17f
    if-ge v3, v2, :cond_189

    aget-byte v5, v0, v3

    .line 275
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_17f

    .line 278
    :cond_189
    iget-byte v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HO:B

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 279
    goto :goto_164

    .line 280
    :cond_18f
    nop

    .line 354
    :goto_190
    return v1

    nop

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_150
        :pswitch_11d
        :pswitch_e0
        :pswitch_a2
        :pswitch_64
        :pswitch_50
        :pswitch_3e
        :pswitch_2a
        :pswitch_16
    .end packed-switch
.end method

.method static synthetic b(Ljava/io/DataInput;I)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J
    .registers 3

    .line 103
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HQ:J

    return-wide v0
.end method

.method static synthetic b(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static b([B)V
    .registers 4

    .line 136
    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v0

    .line 137
    if-eqz p0, :cond_14

    :try_start_5
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    if-eqz v1, :cond_f

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    array-length v1, v1

    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 138
    :cond_f
    sput-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HJ:[B

    goto :goto_14

    .line 140
    :catchall_12
    move-exception p0

    goto :goto_16

    :cond_14
    :goto_14
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_12

    throw p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .registers 1

    .line 103
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->HL:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method
