.class final Lmiui/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic Js:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 345
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
            "+TV;>;)Z"
        }
    .end annotation

    .line 350
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 355
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dj()V

    .line 356
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 360
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->d(Ljava/lang/Object;)I

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

    .line 365
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 366
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 367
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 368
    const/4 p1, 0x0

    return p1

    .line 371
    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 376
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

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
            "TV;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Lmiui/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmiui/util/MapCollections$ArrayIterator;-><init>(Lmiui/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 386
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->d(Ljava/lang/Object;)I

    move-result p1

    .line 387
    if-ltz p1, :cond_f

    .line 388
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->S(I)V

    .line 389
    const/4 p1, 0x1

    return p1

    .line 391
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    .line 397
    nop

    .line 398
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_25

    .line 399
    iget-object v3, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v3

    .line 400
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 401
    iget-object v2, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v2, v1}, Lmiui/util/MapCollections;->S(I)V

    .line 402
    add-int/lit8 v1, v1, -0x1

    .line 403
    add-int/lit8 v0, v0, -0x1

    .line 404
    nop

    .line 398
    move v2, v4

    :cond_23
    add-int/2addr v1, v4

    goto :goto_9

    .line 407
    :cond_25
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    .line 413
    nop

    .line 414
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_25

    .line 415
    iget-object v3, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v3

    .line 416
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 417
    iget-object v2, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v2, v1}, Lmiui/util/MapCollections;->S(I)V

    .line 418
    add-int/lit8 v1, v1, -0x1

    .line 419
    add-int/lit8 v0, v0, -0x1

    .line 420
    nop

    .line 414
    move v2, v4

    :cond_23
    add-int/2addr v1, v4

    goto :goto_9

    .line 423
    :cond_25
    return v2
.end method

.method public size()I
    .registers 2

    .line 428
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 433
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    const/4 v1, 0x1

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

    .line 438
    iget-object v0, p0, Lmiui/util/MapCollections$ValuesCollection;->Js:Lmiui/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiui/util/MapCollections;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
