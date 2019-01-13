.class public Lmiui/util/cache/SoftCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/cache/Cache<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field private LQ:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private dN()V
    .registers 3

    .line 87
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 92
    :cond_26
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 65
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 67
    goto :goto_a

    .line 69
    :cond_20
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 70
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lmiui/util/cache/SoftCache;->dN()V

    .line 56
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    .line 57
    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public getCount()I
    .registers 2

    .line 79
    invoke-direct {p0}, Lmiui/util/cache/SoftCache;->dN()V

    .line 80
    iget-object v0, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/util/cache/SoftCache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 31
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lmiui/util/cache/SoftCache;->dN()V

    .line 43
    iget-object p3, p0, Lmiui/util/cache/SoftCache;->LQ:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public setMaxSize(I)V
    .registers 2

    .line 21
    return-void
.end method
