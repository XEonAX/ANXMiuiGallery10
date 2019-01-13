.class Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexGroupDescriptor"
.end annotation


# instance fields
.field HQ:J

.field Ik:I

.field Il:I


# direct methods
.method private constructor <init>(IIJ)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Ik:I

    .line 82
    iput p2, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Il:I

    .line 83
    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->HQ:J

    .line 84
    return-void
.end method

.method synthetic constructor <init>(IIJLmiui/util/DirectIndexedFile$1;)V
    .registers 6

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/io/DataOutput;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_11

    .line 95
    iget v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Ik:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 96
    iget v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->Il:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 97
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->HQ:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 99
    :cond_11
    const/16 p1, 0x10

    return p1
.end method

.method private static g(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 88
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 89
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 90
    new-instance p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-object p0
.end method

.method static synthetic h(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->g(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object p0

    return-object p0
.end method
