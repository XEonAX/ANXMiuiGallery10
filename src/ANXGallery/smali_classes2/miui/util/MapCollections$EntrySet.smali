.class final Lmiui/util/MapCollections$EntrySet;
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
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic Js:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 151
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lmiui/util/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 154
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    .line 160
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    iget-object v2, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lmiui/util/MapCollections;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    goto :goto_a

    .line 163
    :cond_24
    iget-object p1, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {p1}, Lmiui/util/MapCollections;->dh()I

    move-result p1

    if-eq v0, p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public clear()V
    .registers 2

    .line 168
    iget-object v0, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dj()V

    .line 169
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    .line 173
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 174
    return v1

    .line 175
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 176
    iget-object v0, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/util/MapCollections;->c(Ljava/lang/Object;)I

    move-result v0

    .line 177
    if-gez v0, :cond_15

    .line 178
    return v1

    .line 180
    :cond_15
    iget-object v1, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v0

    .line 181
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lmiui/util/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

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

    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 187
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    const/4 p1, 0x0

    return p1

    .line 192
    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 237
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 7

    .line 242
    nop

    .line 243
    iget-object v0, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_2e

    .line 244
    iget-object v4, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v4, v0, v2}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v4

    .line 245
    iget-object v5, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v5, v0, v1}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v5

    .line 246
    if-nez v4, :cond_1d

    .line 247
    move v4, v2

    goto :goto_21

    .line 246
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 247
    :goto_21
    if-nez v5, :cond_25

    move v5, v2

    goto :goto_29

    :cond_25
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_29
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 243
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 249
    :cond_2e
    return v3
.end method

.method public isEmpty()Z
    .registers 2

    .line 197
    iget-object v0, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Lmiui/util/MapCollections$MapIterator;

    iget-object v1, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-direct {v0, v1}, Lmiui/util/MapCollections$MapIterator;-><init>(Lmiui/util/MapCollections;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 207
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    .line 212
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    .line 217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 222
    iget-object v0, p0, Lmiui/util/MapCollections$EntrySet;->Js:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->dh()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 232
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
