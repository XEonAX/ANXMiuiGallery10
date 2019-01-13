.class Lmiui/util/DirectIndexedFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private HA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DirectIndexedFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field private HB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private HC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private HD:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private HE:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

.field private Hz:Lmiui/util/DirectIndexedFile$Builder$Item;


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HA:Ljava/util/HashMap;

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HC:Ljava/util/ArrayList;

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HB:Ljava/util/ArrayList;

    .line 1179
    new-array p1, p1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HD:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .line 1180
    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .registers 3

    .line 1165
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .registers 1

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HC:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .registers 2

    .line 1165
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->Hz:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 2

    .line 1165
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HE:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .registers 1

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HD:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;
    .registers 1

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HB:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;
    .registers 1

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HA:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .registers 1

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->HE:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p0
.end method

.method static synthetic f(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;
    .registers 1

    .line 1165
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$IndexData;->Hz:Lmiui/util/DirectIndexedFile$Builder$Item;

    return-object p0
.end method
