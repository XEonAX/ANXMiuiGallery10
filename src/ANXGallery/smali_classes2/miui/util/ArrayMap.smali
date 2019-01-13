.class public final Lmiui/util/ArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final GX:I = 0x4

.field static GZ:[Ljava/lang/Object; = null

.field static Ha:I = 0x0

.field static Hb:[Ljava/lang/Object; = null

.field static Hc:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ArrayMap"


# instance fields
.field Hd:[I

.field He:[Ljava/lang/Object;

.field Hf:I

.field Hg:Lmiui/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Lmiui/util/a;->Ho:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 215
    sget-object v0, Lmiui/util/a;->Hq:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 217
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    if-nez p1, :cond_e

    .line 224
    sget-object p1, Lmiui/util/a;->Ho:[I

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 225
    sget-object p1, Lmiui/util/a;->Hq:[Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    goto :goto_11

    .line 227
    :cond_e
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->R(I)V

    .line 229
    :goto_11
    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 230
    return-void
.end method

.method public constructor <init>(Lmiui/util/ArrayMap;)V
    .registers 2

    .line 236
    invoke-direct {p0}, Lmiui/util/ArrayMap;-><init>()V

    .line 237
    if-eqz p1, :cond_8

    .line 238
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->putAll(Lmiui/util/ArrayMap;)V

    .line 240
    :cond_8
    return-void
.end method

.method private R(I)V
    .registers 7

    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2e

    .line 144
    const-class v3, Lmiui/util/ArrayMap;

    monitor-enter v3

    .line 145
    :try_start_a
    sget-object v4, Lmiui/util/ArrayMap;->Hb:[Ljava/lang/Object;

    if-eqz v4, :cond_29

    .line 146
    sget-object p1, Lmiui/util/ArrayMap;->Hb:[Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 148
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lmiui/util/ArrayMap;->Hb:[Ljava/lang/Object;

    .line 149
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 150
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 151
    sget p1, Lmiui/util/ArrayMap;->Hc:I

    sub-int/2addr p1, v2

    sput p1, Lmiui/util/ArrayMap;->Hc:I

    .line 154
    monitor-exit v3

    return-void

    .line 156
    :cond_29
    monitor-exit v3

    goto :goto_58

    :catchall_2b
    move-exception p1

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw p1

    .line 157
    :cond_2e
    const/4 v3, 0x4

    if-ne p1, v3, :cond_58

    .line 158
    const-class v3, Lmiui/util/ArrayMap;

    monitor-enter v3

    .line 159
    :try_start_34
    sget-object v4, Lmiui/util/ArrayMap;->GZ:[Ljava/lang/Object;

    if-eqz v4, :cond_53

    .line 160
    sget-object p1, Lmiui/util/ArrayMap;->GZ:[Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 162
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lmiui/util/ArrayMap;->GZ:[Ljava/lang/Object;

    .line 163
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 164
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 165
    sget p1, Lmiui/util/ArrayMap;->Ha:I

    sub-int/2addr p1, v2

    sput p1, Lmiui/util/ArrayMap;->Ha:I

    .line 168
    monitor-exit v3

    return-void

    .line 170
    :cond_53
    monitor-exit v3

    goto :goto_58

    :catchall_55
    move-exception p1

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_55

    throw p1

    .line 173
    :cond_58
    :goto_58
    new-array v0, p1, [I

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 174
    shl-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .registers 10

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/16 v5, 0x8

    array-length v6, p0

    if-ne v6, v5, :cond_2e

    .line 179
    const-class v5, Lmiui/util/ArrayMap;

    monitor-enter v5

    .line 180
    :try_start_e
    sget v6, Lmiui/util/ArrayMap;->Hc:I

    if-ge v6, v3, :cond_29

    .line 181
    sget-object v3, Lmiui/util/ArrayMap;->Hb:[Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 182
    aput-object p0, p1, v4

    .line 183
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v4

    :goto_1b
    if-lt p0, v1, :cond_22

    .line 184
    aput-object v0, p1, p0

    .line 183
    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    .line 186
    :cond_22
    sput-object p1, Lmiui/util/ArrayMap;->Hb:[Ljava/lang/Object;

    .line 187
    sget p0, Lmiui/util/ArrayMap;->Hc:I

    add-int/2addr p0, v4

    sput p0, Lmiui/util/ArrayMap;->Hc:I

    .line 191
    :cond_29
    monitor-exit v5

    goto :goto_55

    :catchall_2b
    move-exception p0

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0

    .line 192
    :cond_2e
    array-length v5, p0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_55

    .line 193
    const-class v5, Lmiui/util/ArrayMap;

    monitor-enter v5

    .line 194
    :try_start_35
    sget v6, Lmiui/util/ArrayMap;->Ha:I

    if-ge v6, v3, :cond_50

    .line 195
    sget-object v3, Lmiui/util/ArrayMap;->GZ:[Ljava/lang/Object;

    aput-object v3, p1, v2

    .line 196
    aput-object p0, p1, v4

    .line 197
    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v4

    :goto_42
    if-lt p0, v1, :cond_49

    .line 198
    aput-object v0, p1, p0

    .line 197
    add-int/lit8 p0, p0, -0x1

    goto :goto_42

    .line 200
    :cond_49
    sput-object p1, Lmiui/util/ArrayMap;->GZ:[Ljava/lang/Object;

    .line 201
    sget p0, Lmiui/util/ArrayMap;->Ha:I

    add-int/2addr p0, v4

    sput p0, Lmiui/util/ArrayMap;->Ha:I

    .line 205
    :cond_50
    monitor-exit v5

    goto :goto_55

    :catchall_52
    move-exception p0

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw p0

    .line 207
    :cond_55
    :goto_55
    return-void
.end method

.method private dg()Lmiui/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hg:Lmiui/util/MapCollections;

    if-nez v0, :cond_b

    .line 669
    new-instance v0, Lmiui/util/ArrayMap$1;

    invoke-direct {v0, p0}, Lmiui/util/ArrayMap$1;-><init>(Lmiui/util/ArrayMap;)V

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hg:Lmiui/util/MapCollections;

    .line 716
    :cond_b
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hg:Lmiui/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 446
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 447
    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 448
    :goto_a
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hd:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6e

    .line 451
    if-lez v0, :cond_59

    iget-object v2, p0, Lmiui/util/ArrayMap;->Hd:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_59

    .line 452
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 454
    const-string v4, "ArrayMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New hash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is before end of array hash "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/ArrayMap;->Hd:[I

    aget v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void

    .line 460
    :cond_59
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 461
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hd:[I

    aput v1, v2, v0

    .line 462
    shl-int/lit8 v0, v0, 0x1

    .line 463
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 464
    iget-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aput-object p2, p1, v0

    .line 465
    return-void

    .line 449
    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Array is full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 4

    .line 247
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    if-lez v0, :cond_18

    .line 248
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 249
    sget-object v0, Lmiui/util/a;->Ho:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 250
    sget-object v0, Lmiui/util/a;->Hq:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 253
    :cond_18
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 726
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->df()I

    move-result p1

    if-ltz p1, :cond_c

    :goto_a
    move v0, v1

    goto :goto_18

    :cond_c
    goto :goto_18

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    if-ltz p1, :cond_c

    goto :goto_a

    :goto_18
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 326
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method df()I
    .registers 6

    .line 105
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 108
    if-nez v0, :cond_6

    .line 109
    const/4 v0, -0x1

    return v0

    .line 112
    :cond_6
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hd:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmiui/util/a;->a([III)I

    move-result v1

    .line 115
    if-gez v1, :cond_10

    .line 116
    return v1

    .line 120
    :cond_10
    iget-object v2, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    .line 121
    return v1

    .line 126
    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hd:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    .line 127
    iget-object v3, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    .line 126
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 131
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_45

    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    aget v0, v0, v1

    if-nez v0, :cond_45

    .line 132
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    return v1

    .line 131
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 139
    :cond_45
    not-int v0, v2

    return v0
.end method

.method public ensureCapacity(I)V
    .registers 6

    .line 275
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    array-length v0, v0

    if-ge v0, p1, :cond_26

    .line 276
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 277
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 278
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->R(I)V

    .line 279
    iget p1, p0, Lmiui/util/ArrayMap;->Hf:I

    if-lez p1, :cond_21

    .line 280
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hd:[I

    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :cond_21
    iget p1, p0, Lmiui/util/ArrayMap;->Hf:I

    invoke-static {v0, v1, p1}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 285
    :cond_26
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 775
    invoke-direct {p0}, Lmiui/util/ArrayMap;->dg()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dy()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 578
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 579
    return v0

    .line 581
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 582
    check-cast p1, Ljava/util/Map;

    .line 583
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    .line 584
    return v2

    .line 588
    :cond_16
    move v1, v2

    :goto_17
    :try_start_17
    iget v3, p0, Lmiui/util/ArrayMap;->Hf:I

    if-ge v1, v3, :cond_3c

    .line 589
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 590
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 591
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 592
    if-nez v4, :cond_32

    .line 593
    if-nez v5, :cond_31

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 594
    :cond_31
    return v2

    .line 596
    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_36} :catch_3e

    if-nez v3, :cond_39

    .line 597
    return v2

    .line 588
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 604
    :cond_3c
    nop

    .line 605
    return v0

    .line 602
    :catch_3e
    move-exception p1

    .line 603
    return v2

    .line 600
    :catch_40
    move-exception p1

    .line 601
    return v2

    .line 607
    :cond_42
    return v2
.end method

.method public erase()V
    .registers 6

    .line 260
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    if-lez v0, :cond_16

    .line 261
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    shl-int/lit8 v0, v0, 0x1

    .line 262
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 263
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_14

    .line 264
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 266
    :cond_14
    iput v2, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 268
    :cond_16
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 337
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->df()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    .line 338
    :goto_f
    if-ltz p1, :cond_1a

    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public hashCode()I
    .registers 10

    .line 615
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 616
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 617
    nop

    .line 618
    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    move v6, v3

    :goto_c
    if-ge v3, v2, :cond_21

    .line 619
    aget-object v7, v1, v5

    .line 620
    aget v8, v0, v3

    if-nez v7, :cond_16

    move v7, v4

    goto :goto_1a

    :cond_16
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1a
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 618
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_c

    .line 622
    :cond_21
    return v6
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 8

    .line 67
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 70
    if-nez v0, :cond_6

    .line 71
    const/4 p1, -0x1

    return p1

    .line 74
    :cond_6
    iget-object v1, p0, Lmiui/util/ArrayMap;->Hd:[I

    invoke-static {v1, v0, p2}, Lmiui/util/a;->a([III)I

    move-result v1

    .line 77
    if-gez v1, :cond_f

    .line 78
    return v1

    .line 82
    :cond_f
    iget-object v2, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 83
    return v1

    .line 88
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hd:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    .line 89
    iget-object v3, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    .line 88
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 93
    :cond_36
    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_50

    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_50

    .line 94
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v1

    .line 93
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 101
    :cond_50
    not-int p1, v2

    return p1
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 7

    .line 299
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    mul-int/lit8 v0, v0, 0x2

    .line 300
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 301
    const/4 v2, 0x1

    if-nez p1, :cond_15

    .line 302
    move p1, v2

    :goto_a
    if-ge p1, v0, :cond_26

    .line 303
    aget-object v3, v1, p1

    if-nez v3, :cond_12

    .line 304
    shr-int/2addr p1, v2

    return p1

    .line 302
    :cond_12
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    .line 308
    :cond_15
    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_26

    .line 309
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 310
    shr-int/lit8 p1, v3, 0x1

    return p1

    .line 308
    :cond_23
    add-int/lit8 v3, v3, 0x2

    goto :goto_16

    .line 314
    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 377
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 787
    invoke-direct {p0}, Lmiui/util/ArrayMap;->dg()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dz()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 393
    nop

    .line 394
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->df()I

    move-result v1

    .line 399
    move v2, v0

    goto :goto_15

    .line 396
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 397
    invoke-virtual {p0, p1, v1}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 399
    move v7, v2

    move v2, v1

    move v1, v7

    :goto_15
    if-ltz v1, :cond_24

    .line 400
    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 401
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 402
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 403
    return-object v0

    .line 406
    :cond_24
    not-int v1, v1

    .line 407
    iget v3, p0, Lmiui/util/ArrayMap;->Hf:I

    iget-object v4, p0, Lmiui/util/ArrayMap;->Hd:[I

    array-length v4, v4

    if-lt v3, v4, :cond_5f

    .line 408
    iget v3, p0, Lmiui/util/ArrayMap;->Hf:I

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_3b

    iget v3, p0, Lmiui/util/ArrayMap;->Hf:I

    iget v4, p0, Lmiui/util/ArrayMap;->Hf:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    goto :goto_42

    .line 409
    :cond_3b
    iget v3, p0, Lmiui/util/ArrayMap;->Hf:I

    if-lt v3, v4, :cond_41

    .line 413
    move v4, v5

    goto :goto_42

    .line 409
    :cond_41
    nop

    .line 413
    :goto_42
    iget-object v3, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 414
    iget-object v5, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v4}, Lmiui/util/ArrayMap;->R(I)V

    .line 417
    iget-object v4, p0, Lmiui/util/ArrayMap;->Hd:[I

    array-length v4, v4

    if-lez v4, :cond_5a

    .line 419
    iget-object v4, p0, Lmiui/util/ArrayMap;->Hd:[I

    array-length v6, v3

    invoke-static {v3, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget-object v4, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    :cond_5a
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    invoke-static {v3, v5, v0}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 426
    :cond_5f
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    if-ge v1, v0, :cond_7f

    .line 429
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hd:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v5, v1

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_7f
    iget-object v0, p0, Lmiui/util/ArrayMap;->Hd:[I

    aput v2, v0, v1

    .line 434
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    .line 435
    iget-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    .line 436
    iget p1, p0, Lmiui/util/ArrayMap;->Hf:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 437
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 735
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    .line 736
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    goto :goto_12

    .line 739
    :cond_2a
    return-void
.end method

.method public putAll(Lmiui/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 472
    iget v0, p1, Lmiui/util/ArrayMap;->Hf:I

    .line 473
    iget v1, p0, Lmiui/util/ArrayMap;->Hf:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    .line 474
    iget v1, p0, Lmiui/util/ArrayMap;->Hf:I

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 475
    if-lez v0, :cond_32

    .line 476
    iget-object v1, p1, Lmiui/util/ArrayMap;->Hd:[I

    iget-object v3, p0, Lmiui/util/ArrayMap;->Hd:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object p1, p1, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iput v0, p0, Lmiui/util/ArrayMap;->Hf:I

    goto :goto_32

    .line 481
    :cond_22
    :goto_22
    if-ge v2, v0, :cond_32

    .line 482
    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 485
    :cond_32
    :goto_32
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 495
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->df()I

    move-result p1

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    .line 496
    :goto_f
    if-ltz p1, :cond_16

    .line 497
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 500
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 747
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    .line 510
    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_23

    .line 513
    iget-object p1, p0, Lmiui/util/ArrayMap;->Hd:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    invoke-static {p1, v1, v2}, Lmiui/util/ArrayMap;->a([I[Ljava/lang/Object;I)V

    .line 514
    sget-object p1, Lmiui/util/a;->Ho:[I

    iput-object p1, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 515
    sget-object p1, Lmiui/util/a;->Hq:[Ljava/lang/Object;

    iput-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 516
    iput v3, p0, Lmiui/util/ArrayMap;->Hf:I

    goto/16 :goto_a3

    .line 518
    :cond_23
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hd:[I

    const/16 v5, 0x8

    array-length v2, v2

    if-le v2, v5, :cond_71

    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    iget-object v6, p0, Lmiui/util/ArrayMap;->Hd:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v2, v6, :cond_71

    .line 522
    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    if-le v2, v5, :cond_3e

    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    iget v5, p0, Lmiui/util/ArrayMap;->Hf:I

    shr-int/2addr v5, v4

    add-int/2addr v5, v2

    nop

    .line 527
    :cond_3e
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hd:[I

    .line 528
    iget-object v6, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    .line 529
    invoke-direct {p0, v5}, Lmiui/util/ArrayMap;->R(I)V

    .line 531
    iget v5, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v5, v4

    iput v5, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 532
    if-lez p1, :cond_56

    .line 534
    iget-object v5, p0, Lmiui/util/ArrayMap;->Hd:[I

    invoke-static {v2, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v5, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    invoke-static {v6, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    :cond_56
    iget v3, p0, Lmiui/util/ArrayMap;->Hf:I

    if-ge p1, v3, :cond_70

    .line 540
    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->Hd:[I

    iget v7, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v7, p1

    invoke-static {v2, v3, v5, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    shl-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v5, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v5, p1

    shl-int/lit8 p1, v5, 0x1

    invoke-static {v6, v2, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    :cond_70
    goto :goto_a3

    .line 545
    :cond_71
    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v2, v4

    iput v2, p0, Lmiui/util/ArrayMap;->Hf:I

    .line 546
    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    if-ge p1, v2, :cond_93

    .line 549
    iget-object v2, p0, Lmiui/util/ArrayMap;->Hd:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->Hd:[I

    iget v6, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v6, p1

    invoke-static {v2, v3, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    iget-object v2, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/2addr v3, v4

    iget-object v5, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArrayMap;->Hf:I

    sub-int/2addr v6, p1

    shl-int/lit8 p1, v6, 0x1

    invoke-static {v2, v3, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    :cond_93
    iget-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArrayMap;->Hf:I

    shl-int/2addr v1, v4

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 554
    iget-object p1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArrayMap;->Hf:I

    shl-int/2addr v1, v4

    add-int/2addr v1, v4

    aput-object v2, p1, v1

    .line 557
    :goto_a3
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 757
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 366
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 367
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 368
    iget-object v1, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 369
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 565
    iget v0, p0, Lmiui/util/ArrayMap;->Hf:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 634
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 635
    const-string v0, "{}"

    return-object v0

    .line 638
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/ArrayMap;->Hf:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 639
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Lmiui/util/ArrayMap;->Hf:I

    if-ge v1, v2, :cond_49

    .line 641
    if-lez v1, :cond_23

    .line 642
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_23
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 645
    if-eq v2, p0, :cond_2d

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 648
    :cond_2d
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :goto_32
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 652
    if-eq v2, p0, :cond_41

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 655
    :cond_41
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 658
    :cond_49
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Lmiui/util/ArrayMap;->dg()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dA()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
