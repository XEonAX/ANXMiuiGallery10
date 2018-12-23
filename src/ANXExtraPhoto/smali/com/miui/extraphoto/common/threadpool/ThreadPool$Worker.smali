.class Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/miui/extraphoto/common/threadpool/Future;
.implements Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/common/threadpool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/miui/extraphoto/common/threadpool/Future<",
        "TT;>;",
        "Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

.field private mCancelType:I

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/extraphoto/common/threadpool/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/extraphoto/common/threadpool/FutureListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/miui/extraphoto/common/threadpool/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/extraphoto/common/threadpool/ThreadPool;Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;Lcom/miui/extraphoto/common/threadpool/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<",
            "TT;>;",
            "Lcom/miui/extraphoto/common/threadpool/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    .local p2, "job":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/miui/extraphoto/common/threadpool/FutureListener;, "Lcom/miui/extraphoto/common/threadpool/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->this$0:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelType:I

    .line 130
    iput-object p2, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mJob:Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;

    .line 131
    iput-object p3, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mListener:Lcom/miui/extraphoto/common/threadpool/FutureListener;

    .line 132
    return-void
.end method

.method private acquireResource(Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;)Z
    .locals 3
    .param p1, "counter"    # Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 248
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    :goto_0
    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    iput-object v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 251
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 256
    monitor-enter p1

    .line 257
    :try_start_1
    iget v0, p1, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 258
    iget v0, p1, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;->value:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;->value:I

    .line 259
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    monitor-enter p0

    .line 271
    :try_start_2
    iput-object v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 272
    monitor-exit p0

    .line 274
    return v2

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 262
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 267
    :goto_1
    :try_start_4
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 254
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private modeToCounter(I)Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;
    .locals 1
    .param p1, "mode"    # I

    .line 237
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->this$0:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    iget-object v0, v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mCpuCounter:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->this$0:Lcom/miui/extraphoto/common/threadpool/ThreadPool;

    iget-object v0, v0, Lcom/miui/extraphoto/common/threadpool/ThreadPool;->mNetworkCounter:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    return-object v0

    .line 242
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private releaseResource(Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    .line 278
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 279
    :try_start_0
    iget v0, p1, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;->value:I

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 281
    monitor-exit p1

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    .line 161
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :try_start_2
    iget-object v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 166
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    :cond_2
    monitor-exit p0

    return-void

    .line 158
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    throw v0
.end method

.method public declared-synchronized cancel(I)V
    .locals 0
    .param p1, "type"    # I

    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    .line 172
    :try_start_0
    iput p1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelType:I

    .line 173
    invoke-virtual {p0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 171
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    .line 194
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 196
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_1
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    throw v0
.end method

.method public getCancelType()I
    .locals 1

    .line 177
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    iget v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelType:I

    return v0
.end method

.method public getJob()Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job<",
            "TT;>;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mJob:Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 186
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    iget-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    throw v0
.end method

.method public run()V
    .locals 5

    .line 136
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mJob:Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Job;->run(Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v3, "Worker"

    const-string v4, "Exception in running a job"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-enter p0

    .line 149
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->setMode(I)Z

    .line 150
    iput-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 151
    iput-boolean v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsDone:Z

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    iget-object v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mListener:Lcom/miui/extraphoto/common/threadpool/FutureListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mListener:Lcom/miui/extraphoto/common/threadpool/FutureListener;

    invoke-interface {v1, p0}, Lcom/miui/extraphoto/common/threadpool/FutureListener;->onFutureDone(Lcom/miui/extraphoto/common/threadpool/Future;)V

    .line 155
    :cond_1
    return-void

    .line 153
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized setCancelListener(Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    .line 212
    :try_start_0
    iput-object p1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    .line 213
    iget-boolean v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    .line 211
    .end local p1    # "listener":Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    throw p1
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 220
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    iget v0, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->modeToCounter(I)Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 221
    .local v0, "rc":Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->releaseResource(Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;)V

    .line 222
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mMode:I

    .line 225
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->modeToCounter(I)Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, v0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->acquireResource(Lcom/miui/extraphoto/common/threadpool/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    return v1

    .line 230
    :cond_1
    iput p1, p0, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->mMode:I

    .line 233
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public waitDone()V
    .locals 0

    .line 206
    .local p0, "this":Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;, "Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker<TT;>;"
    invoke-virtual {p0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$Worker;->get()Ljava/lang/Object;

    .line 207
    return-void
.end method
