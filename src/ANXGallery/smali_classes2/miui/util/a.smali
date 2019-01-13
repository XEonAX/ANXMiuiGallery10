.class Lmiui/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Ho:[I

.field static final Hp:[J

.field static final Hq:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lmiui/util/a;->Ho:[I

    .line 9
    new-array v1, v0, [J

    sput-object v1, Lmiui/util/a;->Hp:[J

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmiui/util/a;->Hq:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static T(I)I
    .registers 1

    .line 21
    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Lmiui/util/a;->V(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static U(I)I
    .registers 1

    .line 25
    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Lmiui/util/a;->V(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static V(I)I
    .registers 3

    .line 29
    const/4 v0, 0x4

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    .line 30
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_c

    .line 31
    return v1

    .line 29
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_f
    return p0
.end method

.method static a([III)I
    .registers 6

    .line 42
    nop

    .line 43
    add-int/lit8 p1, p1, -0x1

    .line 45
    const/4 v0, 0x0

    :goto_4
    if-gt v0, p1, :cond_19

    .line 46
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 47
    aget v2, p0, v1

    .line 49
    if-ge v2, p2, :cond_12

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 56
    move v0, v1

    goto :goto_17

    .line 51
    :cond_12
    if-le v2, p2, :cond_18

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 56
    move p1, v1

    :goto_17
    goto :goto_4

    .line 54
    :cond_18
    return v1

    .line 57
    :cond_19
    not-int p0, v0

    return p0
.end method

.method static a([JIJ)I
    .registers 8

    .line 61
    nop

    .line 62
    add-int/lit8 p1, p1, -0x1

    .line 64
    const/4 v0, 0x0

    :goto_4
    if-gt v0, p1, :cond_1b

    .line 65
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 66
    aget-wide v2, p0, v1

    .line 68
    cmp-long v2, v2, p2

    if-gez v2, :cond_14

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 75
    move v0, v1

    goto :goto_19

    .line 70
    :cond_14
    if-lez v2, :cond_1a

    .line 71
    add-int/lit8 v1, v1, -0x1

    .line 75
    move p1, v1

    :goto_19
    goto :goto_4

    .line 73
    :cond_1a
    return v1

    .line 76
    :cond_1b
    not-int p0, v0

    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 37
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
