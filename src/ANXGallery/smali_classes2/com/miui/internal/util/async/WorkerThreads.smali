.class public Lcom/miui/internal/util/async/WorkerThreads;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;
    }
.end annotation


# static fields
.field public static final TAG_COMMON_WORK:Ljava/lang/String; = "common_work"

.field private static final jK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/internal/util/async/WorkerThreads;->jK:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aquireWorker(Ljava/lang/String;)Landroid/os/Looper;
    .registers 4

    const-class v0, Lcom/miui/internal/util/async/WorkerThreads;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lcom/miui/internal/util/async/WorkerThreads;->jK:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 41
    if-nez v1, :cond_18

    .line 42
    new-instance v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;

    invoke-direct {v1, p0}, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/miui/internal/util/async/WorkerThreads;->jK:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 45
    :cond_18
    iget p0, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jM:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jM:I

    .line 47
    :goto_1e
    iget-object p0, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jL:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v0

    return-object p0

    .line 39
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized releaseWorker(Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/miui/internal/util/async/WorkerThreads;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lcom/miui/internal/util/async/WorkerThreads;->jK:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 52
    if-eqz v1, :cond_21

    .line 53
    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jM:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jM:I

    .line 54
    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jM:I

    if-nez v2, :cond_21

    .line 55
    sget-object v2, Lcom/miui/internal/util/async/WorkerThreads;->jK:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p0, v1, Lcom/miui/internal/util/async/WorkerThreads$ThreadWrapper;->jL:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 59
    :cond_21
    monitor-exit v0

    return-void

    .line 50
    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method
