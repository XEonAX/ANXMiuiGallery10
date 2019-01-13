.class Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private jJ:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->b(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->b(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 2

    .line 32
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput p1, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->jJ:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 38
    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 41
    return v2

    .line 43
    :cond_a
    check-cast p1, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;

    .line 44
    invoke-virtual {p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object p1

    .line 46
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap$WeakKey;->jJ:I

    return v0
.end method
