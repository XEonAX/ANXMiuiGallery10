.class Lmiui/util/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionPair"
.end annotation


# instance fields
.field private Ie:J

.field private If:J


# direct methods
.method private constructor <init>(JJ)V
    .registers 5

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->Ie:J

    .line 505
    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->If:J

    .line 506
    return-void
.end method

.method synthetic constructor <init>(JJLmiui/util/DirectIndexedFile$1;)V
    .registers 6

    .line 499
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    .line 499
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->Ie:J

    return-wide v0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .registers 3

    .line 499
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->Ie:J

    return-wide p1
.end method

.method private b(Ljava/io/DataOutput;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    if-eqz p1, :cond_c

    .line 516
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->Ie:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 517
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->If:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 519
    :cond_c
    const/16 p1, 0x10

    return p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .registers 3

    .line 499
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->If:J

    return-wide v0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .registers 3

    .line 499
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->If:J

    return-wide p1
.end method

.method private static c(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 510
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 511
    new-instance p0, Lmiui/util/DirectIndexedFile$DescriptionPair;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-object p0
.end method

.method static synthetic d(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->c(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object p0

    return-object p0
.end method
