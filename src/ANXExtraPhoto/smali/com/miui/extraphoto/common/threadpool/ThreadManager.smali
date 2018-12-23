.class public Lcom/miui/extraphoto/common/threadpool/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field private static final sDecodeLock:Ljava/lang/Object;

.field private static sDecodePool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

.field private static sMainHandler:Landroid/os/Handler;

.field private static final sMainHandlerLock:Ljava/lang/Object;

.field private static final sMiscLock:Ljava/lang/Object;

.field private static sMiscPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

.field private static final sNetworkLock:Ljava/lang/Object;

.field private static sNetworkPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

.field private static final sRequestLock:Ljava/lang/Object;

.field private static sRequestThread:Landroid/os/HandlerThread;

.field private static sRequestThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMiscLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMainHandlerLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sDecodeLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sNetworkLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeOnRequestThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "run"    # Ljava/lang/Runnable;

    .line 77
    invoke-static {}, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->getRequestThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public static getDecodePool()Lcom/miui/extraphoto/common/threadpool/ThreadPool;
    .locals 4

    .line 23
    sget-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sDecodePool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/miui/extraphoto/common/threadpool/ThreadPool;-><init>(II)V

    sput-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sDecodePool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    .line 27
    :cond_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sDecodePool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 53
    sget-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMainHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMainHandler:Landroid/os/Handler;

    .line 57
    :cond_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMainHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMiscPool()Lcom/miui/extraphoto/common/threadpool/ThreadPool;
    .locals 2

    .line 32
    sget-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMiscLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMiscPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    invoke-direct {v1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool;-><init>()V

    sput-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMiscPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    .line 36
    :cond_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sMiscPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNetworkPool()Lcom/miui/extraphoto/common/threadpool/ThreadPool;
    .locals 3

    .line 44
    sget-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sNetworkPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v2}, Lcom/miui/extraphoto/common/threadpool/ThreadPool;-><init>(II)V

    sput-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sNetworkPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    .line 48
    :cond_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sNetworkPool:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRequestThreadHandler()Landroid/os/Handler;
    .locals 3

    .line 62
    sget-object v0, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "request_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestThread:Landroid/os/HandlerThread;

    .line 65
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestThreadHandler:Landroid/os/Handler;

    .line 68
    :cond_0
    sget-object v1, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->sRequestThreadHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRequestThreadLooper()Landroid/os/Looper;
    .locals 1

    .line 73
    invoke-static {}, Lcom/miui/extraphoto/common/threadpool/ThreadManager;->getRequestThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
