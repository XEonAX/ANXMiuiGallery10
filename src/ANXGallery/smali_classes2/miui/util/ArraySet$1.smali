.class Lmiui/util/ArraySet$1;
.super Lmiui/util/MapCollections;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ArraySet;->dg()Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic Hi:Lmiui/util/ArraySet;


# direct methods
.method constructor <init>(Lmiui/util/ArraySet;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected S(I)V
    .registers 3

    .line 602
    iget-object v0, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-virtual {v0, p1}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 597
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 592
    iget-object p2, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-virtual {p2, p1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method protected c(Ljava/lang/Object;)I
    .registers 4

    .line 577
    if-nez p1, :cond_9

    iget-object p1, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-static {p1}, Lmiui/util/ArraySet;->a(Lmiui/util/ArraySet;)I

    move-result p1

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, p1, v1}, Lmiui/util/ArraySet;->a(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result p1

    :goto_13
    return p1
.end method

.method protected d(Ljava/lang/Object;)I
    .registers 4

    .line 582
    if-nez p1, :cond_9

    iget-object p1, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-static {p1}, Lmiui/util/ArraySet;->a(Lmiui/util/ArraySet;)I

    move-result p1

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, p1, v1}, Lmiui/util/ArraySet;->a(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result p1

    :goto_13
    return p1
.end method

.method protected dh()I
    .registers 2

    .line 567
    iget-object v0, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    iget v0, v0, Lmiui/util/ArraySet;->Hf:I

    return v0
.end method

.method protected di()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dj()V
    .registers 2

    .line 607
    iget-object v0, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    invoke-virtual {v0}, Lmiui/util/ArraySet;->clear()V

    .line 608
    return-void
.end method

.method protected k(II)Ljava/lang/Object;
    .registers 3

    .line 572
    iget-object p2, p0, Lmiui/util/ArraySet$1;->Hi:Lmiui/util/ArraySet;

    iget-object p2, p2, Lmiui/util/ArraySet;->He:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method
