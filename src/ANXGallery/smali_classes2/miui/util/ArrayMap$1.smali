.class Lmiui/util/ArrayMap$1;
.super Lmiui/util/MapCollections;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ArrayMap;->dg()Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic Hh:Lmiui/util/ArrayMap;


# direct methods
.method constructor <init>(Lmiui/util/ArrayMap;)V
    .registers 2

    .line 669
    iput-object p1, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected S(I)V
    .registers 3

    .line 707
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method

.method protected c(Ljava/lang/Object;)I
    .registers 4

    .line 682
    if-nez p1, :cond_9

    iget-object p1, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {p1}, Lmiui/util/ArrayMap;->df()I

    move-result p1

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_13
    return p1
.end method

.method protected d(Ljava/lang/Object;)I
    .registers 3

    .line 687
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected dh()I
    .registers 2

    .line 672
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    iget v0, v0, Lmiui/util/ArrayMap;->Hf:I

    return v0
.end method

.method protected di()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    return-object v0
.end method

.method protected dj()V
    .registers 2

    .line 712
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    invoke-virtual {v0}, Lmiui/util/ArrayMap;->clear()V

    .line 713
    return-void
.end method

.method protected k(II)Ljava/lang/Object;
    .registers 4

    .line 677
    iget-object v0, p0, Lmiui/util/ArrayMap$1;->Hh:Lmiui/util/ArrayMap;

    iget-object v0, v0, Lmiui/util/ArrayMap;->He:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method
