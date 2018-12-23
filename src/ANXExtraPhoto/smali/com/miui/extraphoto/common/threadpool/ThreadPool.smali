.class public Lcom/miui/extraphoto/common/threadpool/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;,
        Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;,
        Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;,
        Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContextStub;,
        Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;,
        Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;
    }
.end annotation


# static fields
.field public static final CANCEL_INTERRUPT:I = 0x1

.field public static final CANCEL_MANUAL:I = 0x0

.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field mNetworkCounter:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContextStub;-><init>(Lcom/miui/extraphoto/common/threadpool/ThreadPool$1;)V

    sput-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->JOB_CONTEXT_STUB:Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool;-><init>(II)V

    .line 87
    return-void
.end method

.method public constructor <init>(II)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mCpuCounter:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 43
    new-instance v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mNetworkCounter:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 90
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/miui/extraphoto/common/threadpool/PriorityThreadFactory;

    const-string v1, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v9, v1, v2}, Lcom/miui/extraphoto/common/threadpool/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    const-wide/16 v5, 0xa

    move-object v2, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 95
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 2

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "ThreadPool"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public submit(Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;)Lcom/miui/extraphoto/common/threadpool/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<",
            "TT;>;)",
            "Lcom/miui/extraphoto/common/threadpool/Future<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p1, "job":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->submit(Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;Lcom/miui/extraphoto/common/threadpool/FutureListener;)Lcom/miui/extraphoto/common/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;Lcom/miui/extraphoto/common/threadpool/FutureListener;)Lcom/miui/extraphoto/common/threadpool/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<",
            "TT;>;",
            "Lcom/miui/extraphoto/common/threadpool/FutureListener<",
            "TT;>;)",
            "Lcom/miui/extraphoto/common/threadpool/Future<",
            "TT;>;"
        }
    .end annotation

    .line 108
    .local p1, "job":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/miui/extraphoto/common/threadpool/FutureListener;, "Lcom/miui/extraphoto/common/threadpool/FutureListener<TT;>;"
    new-instance v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;-><init>(Lcom/miui/extraphoto/common/threadpool/ThreadPool;Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;Lcom/miui/extraphoto/common/threadpool/FutureListener;)V

    .line 109
    .local v0, "w":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-object v0
.end method
