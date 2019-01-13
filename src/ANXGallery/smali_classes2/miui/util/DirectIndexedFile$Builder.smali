.class public Lmiui/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Builder$IndexData;,
        Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiui/util/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private Hs:Lmiui/util/DirectIndexedFile$FileHeader;

.field private Ht:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field

.field private Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

.field private Hv:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Ht:Ljava/util/ArrayList;

    .line 1190
    iput p1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hv:I

    .line 1191
    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .registers 3

    .line 1110
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private a(Ljava/io/DataOutput;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    nop

    .line 1437
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->Hs:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1a7

    .line 1438
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->Hs:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v3, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1439
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->Hs:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    aget-object v3, v3, v1

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lmiui/util/DirectIndexedFile$DescriptionPair;->a(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    .line 1441
    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->Ht:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1442
    if-eqz p1, :cond_32

    .line 1443
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1445
    :cond_32
    add-int/lit8 v2, v2, 0x4

    .line 1446
    move v4, v2

    move v2, v0

    :goto_36
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_4b

    .line 1447
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->a(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1446
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1450
    :cond_4b
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hs:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v2

    aget-object v2, v2, v1

    int-to-long v5, v4

    invoke-static {v2, v5, v6}, Lmiui/util/DirectIndexedFile$DescriptionPair;->b(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    .line 1451
    if-eqz p1, :cond_61

    .line 1452
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    array-length v2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1454
    :cond_61
    add-int/lit8 v4, v4, 0x4

    .line 1455
    move v2, v0

    :goto_64
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_79

    .line 1456
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1455
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1459
    :cond_79
    move v2, v0

    :goto_7a
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_a7

    .line 1460
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J

    .line 1461
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->b(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1459
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 1464
    :cond_a7
    move v2, v0

    :goto_a8
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_1a2

    .line 1465
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    int-to-long v6, v4

    iput-wide v6, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->HQ:J

    .line 1466
    if-nez p1, :cond_e7

    .line 1467
    nop

    .line 1468
    move v5, v0

    move v6, v5

    :goto_bd
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_d2

    .line 1469
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    add-int/2addr v6, v7

    .line 1468
    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    .line 1471
    :cond_d2
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    iget v5, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Il:I

    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v7

    aget-object v7, v7, v2

    iget v7, v7, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Ik:I

    sub-int/2addr v5, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1473
    goto/16 :goto_19e

    .line 1474
    :cond_e7
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v2

    iget v5, v5, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Ik:I

    :goto_ef
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v2

    iget v6, v6, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Il:I

    if-ge v5, v6, :cond_19e

    .line 1475
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->d(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/util/DirectIndexedFile$Builder$Item;

    .line 1476
    if-nez v6, :cond_10d

    .line 1477
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->f(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;

    move-result-object v6

    .line 1479
    :cond_10d
    move v7, v4

    move v4, v0

    :goto_10f
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_199

    .line 1480
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_133

    .line 1481
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->c(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_18a

    .line 1482
    :cond_133
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_150

    .line 1483
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->c(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_18a

    .line 1484
    :cond_150
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_16d

    .line 1485
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->c(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_18a

    .line 1486
    :cond_16d
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_18a

    .line 1487
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->c(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v4

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1489
    :cond_18a
    :goto_18a
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v7, v8

    .line 1479
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10f

    .line 1474
    :cond_199
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto/16 :goto_ef

    .line 1464
    :cond_19e
    :goto_19e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a8

    .line 1437
    :cond_1a2
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto/16 :goto_4

    .line 1495
    :cond_1a7
    return v2
.end method

.method private build()V
    .registers 15

    .line 1403
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Ht:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1404
    new-instance v1, Lmiui/util/DirectIndexedFile$FileHeader;

    iget v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hv:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(IILmiui/util/DirectIndexedFile$1;)V

    iput-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hs:Lmiui/util/DirectIndexedFile$FileHeader;

    .line 1406
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_9a

    .line 1407
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Ht:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1408
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Builder;->Hs:Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->a(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    new-instance v12, Lmiui/util/DirectIndexedFile$DescriptionPair;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiui/util/DirectIndexedFile$1;)V

    aput-object v12, v5, v2

    .line 1411
    move v5, v1

    :goto_30
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4e

    .line 1412
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4b

    .line 1413
    goto :goto_4e

    .line 1411
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1417
    :cond_4e
    :goto_4e
    new-array v5, v5, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 1418
    move v5, v1

    :goto_54
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_96

    .line 1419
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1420
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1422
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/util/DirectIndexedFile$Builder$Item;

    invoke-static {v7}, Lmiui/util/DirectIndexedFile$Builder$Item;->b(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v9

    .line 1423
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/util/DirectIndexedFile$Builder$Item;

    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Builder$Item;->b(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    .line 1424
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    new-instance v7, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiui/util/DirectIndexedFile$1;)V

    aput-object v7, v6, v5

    .line 1418
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 1406
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 1429
    :cond_9a
    :try_start_9a
    invoke-direct {p0, v3}, Lmiui/util/DirectIndexedFile$Builder;->a(Ljava/io/DataOutput;)I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 1432
    goto :goto_9f

    .line 1430
    :catch_9e
    move-exception v0

    .line 1433
    :goto_9f
    return-void
.end method

.method private dk()V
    .registers 3

    .line 1390
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    if-eqz v0, :cond_5

    .line 1393
    return-void

    .line 1391
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dl()V
    .registers 3

    .line 1396
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->dk()V

    .line 1397
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1400
    return-void

    .line 1398
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .registers 6

    .line 1282
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->dl()V

    .line 1284
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2cc

    .line 1289
    const/4 v0, 0x0

    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_29d

    .line 1290
    sget-object v1, Lmiui/util/DirectIndexedFile$1;->Hr:[I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2f0

    .line 1352
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type of objects "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1353
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->c(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expected"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1307
    :pswitch_58
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_60

    goto/16 :goto_27d

    .line 1308
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1302
    :pswitch_7c
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_84

    goto/16 :goto_27d

    .line 1303
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be int"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1297
    :pswitch_a0
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_a8

    goto/16 :goto_27d

    .line 1298
    :cond_a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be short"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1292
    :pswitch_c4
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_cc

    goto/16 :goto_27d

    .line 1293
    :cond_cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be byte"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1344
    :pswitch_e8
    aget-object v1, p2, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_123

    .line 1347
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1348
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1349
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v2

    .line 1348
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 1350
    goto/16 :goto_27d

    .line 1345
    :cond_123
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be long[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1336
    :pswitch_13f
    aget-object v1, p2, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_17a

    .line 1339
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1340
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1341
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v2

    .line 1340
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 1342
    goto/16 :goto_27d

    .line 1337
    :cond_17a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be int[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1328
    :pswitch_196
    aget-object v1, p2, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_1d1

    .line 1331
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1332
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1333
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v2

    .line 1332
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 1334
    goto/16 :goto_27d

    .line 1329
    :cond_1d1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be short[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1320
    :pswitch_1ed
    aget-object v1, p2, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_227

    .line 1323
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1324
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1325
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v2

    .line 1324
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 1326
    goto :goto_27d

    .line 1321
    :cond_227
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be byte[]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1312
    :pswitch_243
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_281

    .line 1315
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1316
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1317
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->Y(I)B

    move-result v2

    .line 1316
    invoke-static {v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->a(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 1318
    nop

    .line 1289
    :goto_27d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1313
    :cond_281
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] should be String"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1357
    :cond_29d
    new-instance v0, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    .line 1358
    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->d(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object p1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    return-void

    .line 1285
    :cond_2cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Different number of objects inputted, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1286
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    const-string v1, " data expected"

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_2f0
    .packed-switch 0x1
        :pswitch_243
        :pswitch_1ed
        :pswitch_196
        :pswitch_13f
        :pswitch_e8
        :pswitch_c4
        :pswitch_a0
        :pswitch_7c
        :pswitch_58
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .registers 6

    .line 1264
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->dk()V

    .line 1266
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_19

    .line 1267
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Builder;->newGroup()V

    .line 1268
    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 1269
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1274
    :cond_18
    return-void

    .line 1272
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Different number between indexes and objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .registers 15

    .line 1198
    new-instance v0, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {v0, v3, v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiui/util/DirectIndexedFile$1;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1199
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Ht:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    :goto_11
    array-length v0, p1

    if-ge v2, v0, :cond_15c

    .line 1202
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v3, p0, v1}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    nop

    .line 1206
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Byte;

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    .line 1207
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->HS:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1208
    nop

    .line 1209
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 1241
    :goto_3e
    move-object v6, v0

    move v7, v3

    goto/16 :goto_129

    .line 1210
    :cond_42
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_5d

    .line 1211
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->HV:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1212
    const/4 v3, 0x2

    .line 1213
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_3e

    .line 1214
    :cond_5d
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_78

    .line 1215
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->HW:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1216
    const/4 v3, 0x4

    .line 1217
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_3e

    .line 1218
    :cond_78
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_94

    .line 1219
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->HX:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1220
    const/16 v3, 0x8

    .line 1221
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_3e

    .line 1222
    :cond_94
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b1

    .line 1223
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->HY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1224
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    goto :goto_3e

    .line 1225
    :cond_b1
    aget-object v0, p1, v2

    instance-of v0, v0, [B

    if-eqz v0, :cond_cf

    .line 1226
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->HZ:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1227
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    goto/16 :goto_3e

    .line 1228
    :cond_cf
    aget-object v0, p1, v2

    instance-of v0, v0, [S

    if-eqz v0, :cond_ed

    .line 1229
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ia:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1230
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    goto/16 :goto_3e

    .line 1231
    :cond_ed
    aget-object v0, p1, v2

    instance-of v0, v0, [I

    if-eqz v0, :cond_10b

    .line 1232
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ib:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1233
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    goto/16 :goto_3e

    .line 1234
    :cond_10b
    aget-object v0, p1, v2

    instance-of v0, v0, [J

    if-eqz v0, :cond_140

    .line 1235
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ic:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1236
    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->a(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    goto/16 :goto_3e

    .line 1241
    :goto_129
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    new-instance v3, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V

    aput-object v3, v0, v2

    .line 1201
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 1238
    :cond_140
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type of the ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] argument"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1245
    :cond_15c
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    new-instance v2, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v3, -0x1

    invoke-direct {v2, p0, v3, p1, v1}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    invoke-static {v0, v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->a(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;

    .line 1246
    return-void
.end method

.method public newGroup()V
    .registers 3

    .line 1252
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1253
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_38

    .line 1254
    :cond_2a
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->Hu:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_38
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->build()V

    .line 1370
    nop

    .line 1371
    nop

    .line 1373
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_24

    .line 1374
    :try_start_15
    invoke-direct {p0, v1}, Lmiui/util/DirectIndexedFile$Builder;->a(Ljava/io/DataOutput;)I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    .line 1375
    nop

    .line 1377
    nop

    .line 1378
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1381
    nop

    .line 1387
    return-void

    .line 1377
    :catchall_1f
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_25

    :catchall_24
    move-exception v1

    :goto_25
    if-eqz v0, :cond_2a

    .line 1378
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1381
    :cond_2a
    nop

    .line 1382
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1383
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4c
    throw v1
.end method
