.class Lmiui/util/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private HD:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private HE:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

.field private Ip:[[Ljava/lang/Object;

.field private Iq:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$1;)V
    .registers 2

    .line 839
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .registers 2

    .line 839
    iput p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->Iq:I

    return p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 2

    .line 839
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->HD:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    .line 839
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->HE:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 2

    .line 839
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->HE:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .registers 2

    .line 839
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->Ip:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .registers 3

    .line 839
    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->Iq:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->Iq:I

    return v0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    .line 839
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->HD:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .registers 1

    .line 839
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->Ip:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I
    .registers 1

    .line 839
    iget p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->Iq:I

    return p0
.end method
