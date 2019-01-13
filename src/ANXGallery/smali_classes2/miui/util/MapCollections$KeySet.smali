.class final Lmiui/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic Js:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 262
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 267
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dj()V

    .line 268
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 272
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->c(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->di()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 327
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 5

    .line 332
    nop

    .line 333
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ltz v0, :cond_1f

    .line 334
    iget-object v3, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v3, v0, v1}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v3

    .line 335
    if-nez v3, :cond_17

    move v3, v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1b
    add-int/2addr v2, v3

    .line 333
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 337
    :cond_1f
    return v2
.end method

.method public isEmpty()Z
    .registers 2

    .line 282
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Lmiui/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/MapCollections$ArrayIterator;-><init>(Lmiui/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 292
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->c(Ljava/lang/Object;)I

    move-result p1

    .line 293
    if-ltz p1, :cond_f

    .line 294
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->S(I)V

    .line 295
    const/4 p1, 0x1

    return p1

    .line 297
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->di()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->di()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 312
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 317
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/util/MapCollections;->Z(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->Js:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/util/MapCollections;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
