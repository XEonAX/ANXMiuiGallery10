.class Lmiui/util/async/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue<",
        "Lmiui/util/async/Task<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final KL:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final KO:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final KQ:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final KS:Ljava/util/concurrent/Semaphore;

.field private final KT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Kk:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;I)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lmiui/util/async/a;->Kk:Lmiui/util/async/TaskManager;

    .line 58
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/a;->KL:Lmiui/util/concurrent/Queue;

    .line 59
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/a;->KO:Lmiui/util/concurrent/Queue;

    .line 60
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/a;->KQ:Lmiui/util/concurrent/Queue;

    .line 61
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    return-void
.end method

.method private dL()Lmiui/util/async/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lmiui/util/async/a;->KL:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 100
    if-nez v0, :cond_12

    .line 101
    iget-object v0, p0, Lmiui/util/async/a;->KO:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 103
    :cond_12
    if-nez v0, :cond_1c

    .line 104
    iget-object v0, p0, Lmiui/util/async/a;->KQ:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 106
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public a(Lmiui/util/async/Task;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    .line 165
    nop

    .line 166
    iget-object v0, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 167
    iget-object v0, p0, Lmiui/util/async/a;->KL:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-nez v0, :cond_17

    .line 169
    iget-object v0, p0, Lmiui/util/async/a;->KO:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :cond_17
    if-nez v0, :cond_1f

    .line 172
    iget-object v0, p0, Lmiui/util/async/a;->KQ:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    :cond_1f
    if-nez v0, :cond_28

    .line 175
    iget-object p1, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_28

    .line 178
    :cond_27
    const/4 v0, 0x0

    :cond_28
    :goto_28
    return v0
.end method

.method public b(Lmiui/util/async/Task;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    .line 73
    nop

    .line 74
    sget-object v0, Lmiui/util/async/TaskQueue$1;->Ka:[I

    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    goto :goto_2e

    .line 86
    :pswitch_11
    const-string v0, "async"

    const-string v1, "Realtime task must NOT be put in Queue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 82
    :pswitch_19
    iget-object v0, p0, Lmiui/util/async/a;->KL:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    goto :goto_2f

    .line 79
    :pswitch_20
    iget-object v0, p0, Lmiui/util/async/a;->KO:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    goto :goto_2f

    .line 76
    :pswitch_27
    iget-object v0, p0, Lmiui/util/async/a;->KQ:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    goto :goto_2f

    .line 91
    :goto_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_3c

    .line 92
    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    :cond_3c
    return v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public clear()I
    .registers 4

    .line 194
    nop

    .line 195
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 196
    invoke-direct {p0}, Lmiui/util/async/a;->dL()Lmiui/util/async/Task;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_18

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_18
    goto :goto_2

    .line 201
    :cond_19
    return v0
.end method

.method public dM()Lmiui/util/async/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task<",
            "*>;"
        }
    .end annotation

    .line 115
    nop

    .line 117
    iget-object v0, p0, Lmiui/util/async/a;->Kk:Lmiui/util/async/TaskManager;

    invoke-virtual {v0}, Lmiui/util/async/TaskManager;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4a

    .line 118
    :goto_a
    move-object v0, v1

    :cond_b
    if-nez v0, :cond_60

    .line 120
    :try_start_d
    iget-object v0, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_48

    .line 123
    nop

    .line 126
    iget-object v0, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 127
    iget-object v0, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 129
    :goto_1e
    :try_start_1e
    iget-object v2, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 130
    iget-object v2, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_2b} :catch_31
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2f

    goto :goto_1e

    .line 136
    :cond_2c
    nop

    .line 137
    :try_start_2d
    monitor-exit v0

    goto :goto_3b

    :catchall_2f
    move-exception v1

    goto :goto_39

    .line 132
    :catch_31
    move-exception v2

    .line 134
    iget-object v2, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 135
    monitor-exit v0

    return-object v1

    .line 137
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_2f

    throw v1

    .line 140
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lmiui/util/async/a;->dL()Lmiui/util/async/Task;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v2, v3, :cond_b

    .line 142
    goto :goto_a

    .line 121
    :catch_48
    move-exception v0

    .line 122
    return-object v1

    .line 146
    :cond_4a
    move-object v0, v1

    :cond_4b
    iget-object v1, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 147
    invoke-direct {p0}, Lmiui/util/async/a;->dL()Lmiui/util/async/Task;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_4b

    .line 149
    nop

    .line 154
    :cond_60
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lmiui/util/async/a;->dM()Lmiui/util/async/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .registers 2

    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lmiui/util/async/a;->KS:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public pause()V
    .registers 4

    .line 224
    iget-object v0, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic put(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/a;->b(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate<",
            "Lmiui/util/async/Task<",
            "*>;>;)I"
        }
    .end annotation

    .line 189
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no support for this method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/a;->a(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public resume()V
    .registers 4

    .line 233
    iget-object v0, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    iget-object v1, p0, Lmiui/util/async/a;->KT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
