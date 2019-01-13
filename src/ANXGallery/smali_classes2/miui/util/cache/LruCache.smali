.class public Lmiui/util/cache/LruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/cache/LruCache$CacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final LL:I


# instance fields
.field private Ar:J

.field private CQ:J

.field private final LM:Ljava/util/concurrent/locks/ReentrantLock;

.field private final LN:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lmiui/util/cache/LruCache$CacheItem<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lmiui/util/cache/LruCache;->LL:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-gez p1, :cond_9

    .line 85
    sget p1, Lmiui/util/cache/LruCache;->LL:I

    div-int/lit8 p1, p1, 0x8

    .line 88
    :cond_9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->Ar:J

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->CQ:J

    .line 91
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    .line 92
    return-void
.end method

.method private dN()V
    .registers 7

    .line 197
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    .line 199
    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    if-nez v2, :cond_2f

    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2c

    iget-object v1, v1, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    .line 200
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 201
    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 203
    :cond_2f
    goto :goto_a

    .line 205
    :cond_30
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    :goto_3a
    iget-wide v1, p0, Lmiui/util/cache/LruCache;->CQ:J

    iget-wide v3, p0, Lmiui/util/cache/LruCache;->Ar:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_70

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_49

    .line 208
    goto :goto_70

    .line 211
    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    .line 212
    if-eqz v1, :cond_6f

    .line 213
    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_64

    .line 214
    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, v1, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    .line 216
    :cond_64
    iget-wide v2, p0, Lmiui/util/cache/LruCache;->CQ:J

    iget v4, v1, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/cache/LruCache;->CQ:J

    .line 217
    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    .line 219
    :cond_6f
    goto :goto_3a

    .line 220
    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 167
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    :try_start_5
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/cache/LruCache$CacheItem;

    .line 171
    iget-object v2, v1, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2a

    .line 172
    iget-object v1, v1, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 174
    :cond_2a
    goto :goto_f

    .line 176
    :cond_2b
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_37

    .line 178
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_37
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    :try_start_5
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->dN()V

    .line 138
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/cache/LruCache$CacheItem;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_5d

    .line 139
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 140
    nop

    .line 161
    iget-object p1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    return-object v1

    .line 143
    :cond_1a
    :try_start_1a
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    if-eqz v2, :cond_26

    .line 144
    iget-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_5d

    .line 161
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    return-object p1

    .line 147
    :cond_26
    :try_start_26
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_51

    .line 148
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->LP:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    .line 149
    iget-object v2, v0, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    if-eqz v2, :cond_51

    .line 150
    iget-wide v1, p0, Lmiui/util/cache/LruCache;->CQ:J

    iget p1, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/util/cache/LruCache;->CQ:J

    .line 151
    iget-wide v1, p0, Lmiui/util/cache/LruCache;->CQ:J

    iget-wide v3, p0, Lmiui/util/cache/LruCache;->Ar:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_49

    .line 152
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->dN()V

    .line 154
    :cond_49
    iget-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_5d

    .line 161
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    return-object p1

    .line 158
    :cond_51
    :try_start_51
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5d

    .line 159
    nop

    .line 161
    iget-object p1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    return-object v1

    .line 161
    :catchall_5d
    move-exception p1

    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getCount()I
    .registers 3

    .line 184
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    :try_start_5
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->dN()V

    .line 187
    iget-object v0, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 189
    iget-object v1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    return v0

    .line 189
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_38

    if-nez p2, :cond_5

    goto :goto_38

    .line 117
    :cond_5
    new-instance v0, Lmiui/util/cache/LruCache$CacheItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/cache/LruCache$CacheItem;-><init>(Lmiui/util/cache/LruCache$1;)V

    .line 118
    iput-object p1, v0, Lmiui/util/cache/LruCache$CacheItem;->key:Ljava/lang/Object;

    .line 119
    iput-object p2, v0, Lmiui/util/cache/LruCache$CacheItem;->LO:Ljava/lang/Object;

    .line 120
    if-ltz p3, :cond_12

    goto :goto_13

    :cond_12
    const/4 p3, 0x0

    :goto_13
    iput p3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    .line 122
    iget-object p2, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 124
    :try_start_1a
    iget-object p2, p0, Lmiui/util/cache/LruCache;->LN:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-wide p1, p0, Lmiui/util/cache/LruCache;->CQ:J

    iget p3, v0, Lmiui/util/cache/LruCache$CacheItem;->size:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lmiui/util/cache/LruCache;->CQ:J

    .line 126
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->dN()V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_31

    .line 128
    iget-object p1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    :catchall_31
    move-exception p1

    iget-object p2, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 114
    :cond_38
    :goto_38
    return-void
.end method

.method public setMaxSize(I)V
    .registers 6

    .line 96
    if-gez p1, :cond_6

    .line 97
    sget p1, Lmiui/util/cache/LruCache;->LL:I

    div-int/lit8 p1, p1, 0x8

    .line 100
    :cond_6
    int-to-long v0, p1

    iput-wide v0, p0, Lmiui/util/cache/LruCache;->Ar:J

    .line 102
    :try_start_9
    iget-object p1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    iget-wide v0, p0, Lmiui/util/cache/LruCache;->CQ:J

    iget-wide v2, p0, Lmiui/util/cache/LruCache;->Ar:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_19

    .line 104
    invoke-direct {p0}, Lmiui/util/cache/LruCache;->dN()V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_20

    .line 107
    :cond_19
    iget-object p1, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    nop

    .line 109
    return-void

    .line 107
    :catchall_20
    move-exception p1

    iget-object v0, p0, Lmiui/util/cache/LruCache;->LM:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
