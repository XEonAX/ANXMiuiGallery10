.class Lmiui/util/DirectIndexedFile$Builder$Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/util/DirectIndexedFile$Builder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private HF:[Ljava/lang/Object;

.field final synthetic Hy:Lmiui/util/DirectIndexedFile$Builder;

.field private mIndex:I


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V
    .registers 4

    .line 1115
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->Hy:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iput p2, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    .line 1117
    iput-object p3, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->HF:[Ljava/lang/Object;

    .line 1118
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V
    .registers 5

    .line 1111
    invoke-direct {p0, p1, p2, p3}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$Item;)I
    .registers 1

    .line 1111
    iget p0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;
    .registers 1

    .line 1111
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->HF:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(Lmiui/util/DirectIndexedFile$Builder$Item;)I
    .registers 3

    .line 1138
    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    iget p1, p1, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1111
    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    invoke-virtual {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$Item;->a(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1127
    nop

    .line 1128
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_6

    .line 1129
    goto :goto_14

    .line 1130
    :cond_6
    instance-of v2, p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    if-eqz v2, :cond_13

    .line 1131
    iget v2, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    iget p1, p1, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    if-ne v2, p1, :cond_13

    goto :goto_14

    .line 1133
    :cond_13
    move v0, v1

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1122
    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method
