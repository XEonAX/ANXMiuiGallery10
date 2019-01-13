.class final Lmiui/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field Hf:I

.field final Jq:I

.field Jr:Z

.field final synthetic Js:Lmiui/util/MapCollections;

.field mIndex:I


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;I)V
    .registers 4

    .line 29
    iput-object p1, p0, Lmiui/util/MapCollections$ArrayIterator;->Js:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Jr:Z

    .line 30
    iput p2, p0, Lmiui/util/MapCollections$ArrayIterator;->Jq:I

    .line 31
    invoke-virtual {p1}, Lmiui/util/MapCollections;->dh()I

    move-result p1

    iput p1, p0, Lmiui/util/MapCollections$ArrayIterator;->Hf:I

    .line 32
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 36
    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->Hf:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Js:Lmiui/util/MapCollections;

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget v2, p0, Lmiui/util/MapCollections$ArrayIterator;->Jq:I

    invoke-virtual {v0, v1, v2}, Lmiui/util/MapCollections;->k(II)Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    .line 43
    iput-boolean v2, p0, Lmiui/util/MapCollections$ArrayIterator;->Jr:Z

    .line 44
    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 49
    iget-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Jr:Z

    if-eqz v0, :cond_1b

    .line 52
    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    .line 53
    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Hf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Hf:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Jr:Z

    .line 55
    iget-object v0, p0, Lmiui/util/MapCollections$ArrayIterator;->Js:Lmiui/util/MapCollections;

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/util/MapCollections;->S(I)V

    .line 56
    return-void

    .line 50
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
