.class public Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;
.super Ljava/lang/Object;
.source "AlgorithmFactroy.java"


# static fields
.field private static final sAlgorithmCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/miui/gallery/assistant/algorithm/Algorithm;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    .line 28
    return-void
.end method

.method private static addAlgorithmToCache(ILcom/miui/gallery/assistant/algorithm/Algorithm;)V
    .locals 3
    .param p0, "flag"    # I
    .param p1, "algorithm"    # Lcom/miui/gallery/assistant/algorithm/Algorithm;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getCacheKey(I)I

    move-result v0

    .line 85
    .local v0, "cacheKey":I
    sget-object v1, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static createAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;-><init>()V

    .line 75
    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->init()Z

    .line 79
    :cond_1
    return-object v0

    .line 67
    :cond_2
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;-><init>()V

    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    goto :goto_0

    .line 69
    :cond_3
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    :cond_4
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;-><init>()V

    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    goto :goto_0

    .line 71
    :cond_5
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;-><init>()V

    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    goto :goto_0
.end method

.method private static ensureFlag(I)I
    .locals 5
    .param p0, "flag"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 50
    invoke-static {p0, v0}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0, v2}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p0, v3}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static declared-synchronized getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .locals 5
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/assistant/algorithm/Algorithm;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v2, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->ensureFlag(I)I

    move-result p0

    .line 35
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmFromCache(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    .line 36
    .local v0, "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    if-nez v0, :cond_1

    .line 37
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->createAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    .line 38
    const-string v1, "AlgorithmFactroy"

    const-string v3, "Create new algorithm %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, v0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->addAlgorithmToCache(ILcom/miui/gallery/assistant/algorithm/Algorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v2

    return-object v0

    .line 40
    :cond_1
    :try_start_1
    const-string v1, "AlgorithmFactroy"

    const-string v3, "Get algorithm %d from Cache"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getAlgorithmFromCache(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .locals 4
    .param p0, "flag"    # I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getCacheKey(I)I

    move-result v2

    .line 91
    .local v2, "cacheKey":I
    sget-object v3, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 92
    .local v1, "algorithmRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/miui/gallery/assistant/algorithm/Algorithm;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    check-cast v0, Lcom/miui/gallery/assistant/algorithm/Algorithm;

    .line 95
    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 96
    sget-object v3, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 98
    :cond_0
    return-object v0
.end method

.method private static getCacheKey(I)I
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 102
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 103
    :cond_0
    const/16 p0, 0xc

    .line 105
    .end local p0    # "flag":I
    :cond_1
    return p0
.end method
