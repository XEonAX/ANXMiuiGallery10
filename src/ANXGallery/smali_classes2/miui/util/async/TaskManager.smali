.class public Lmiui/util/async/TaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = -0x1

.field static final Kt:Z = true

.field static final Ku:Z = true

.field static final Kv:Z = false

.field static final Kw:Z = false

.field static final Kx:Z = false

.field private static final Ky:I = 0xa

.field private static final Kz:I = -0x1

.field static final TAG:Ljava/lang/String; = "async"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile KA:Z

.field private final KC:Lmiui/util/async/a;

.field private KD:Lmiui/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private KF:Lmiui/util/async/TaskInfoDeliverer;

.field private KJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/async/b;",
            ">;"
        }
    .end annotation
.end field

.field private zM:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lmiui/util/async/TaskManager$1;

    invoke-direct {v0}, Lmiui/util/async/TaskManager$1;-><init>()V

    sput-object v0, Lmiui/util/async/TaskManager;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 125
    const/4 v0, -0x1

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, v0}, Lmiui/util/async/TaskManager;-><init>(III)V

    .line 126
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lmiui/util/async/TaskManager$2;

    invoke-direct {v0, p0}, Lmiui/util/async/TaskManager$2;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object v0, p0, Lmiui/util/async/TaskManager;->zM:Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/TaskManager;->KA:Z

    .line 142
    new-instance v1, Lmiui/util/async/a;

    invoke-direct {v1, p0, p1}, Lmiui/util/async/a;-><init>(Lmiui/util/async/TaskManager;I)V

    iput-object v1, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    .line 144
    if-gez p2, :cond_1d

    .line 145
    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p2

    .line 146
    if-gtz p2, :cond_1d

    .line 147
    const/4 p2, 0x4

    .line 151
    :cond_1d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    .line 152
    :goto_24
    if-ge v0, p2, :cond_40

    .line 153
    iget-object p1, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    new-instance v1, Lmiui/util/async/b;

    iget-object v2, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-direct {v1, p0, v2, v0}, Lmiui/util/async/b;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/a;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/util/async/b;

    invoke-virtual {p1}, Lmiui/util/async/b;->start()V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 157
    :cond_40
    new-instance p1, Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {p1, p0}, Lmiui/util/async/TaskInfoDeliverer;-><init>(Lmiui/util/async/TaskManager;)V

    iput-object p1, p0, Lmiui/util/async/TaskManager;->KF:Lmiui/util/async/TaskInfoDeliverer;

    .line 158
    new-instance p1, Lmiui/util/cache/LruCache;

    invoke-direct {p1, p3}, Lmiui/util/cache/LruCache;-><init>(I)V

    iput-object p1, p0, Lmiui/util/async/TaskManager;->KD:Lmiui/util/cache/Cache;

    .line 159
    return-void
.end method

.method private dI()V
    .registers 4

    .line 323
    :goto_0
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-virtual {v0}, Lmiui/util/async/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 324
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-virtual {v0}, Lmiui/util/async/a;->dM()Lmiui/util/async/Task;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_16

    .line 327
    sget-object v1, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 329
    :cond_16
    goto :goto_0

    .line 330
    :cond_17
    return-void
.end method

.method public static getDefault()Lmiui/util/async/TaskManager;
    .registers 1

    .line 165
    sget-object v0, Lmiui/util/async/TaskManager;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    return-object v0
.end method


# virtual methods
.method a(Lmiui/util/async/Task;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-virtual {v0, p1}, Lmiui/util/async/a;->a(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public add(Lmiui/util/async/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->KA:Z

    if-eqz v0, :cond_c

    .line 221
    const-string p1, "async"

    const-string v0, "Cannot add task into a shut down task manager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 226
    :cond_c
    invoke-virtual {p1}, Lmiui/util/async/Task;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 234
    invoke-virtual {p1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v0

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    if-eq v0, v1, :cond_3d

    .line 235
    invoke-virtual {p1}, Lmiui/util/async/Task;->restart()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_3d

    .line 236
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status of task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not New, and cannot restart."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_3d
    :goto_3d
    invoke-virtual {p1, p0}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 248
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KD:Lmiui/util/cache/Cache;

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    instance-of v0, p1, Lmiui/util/async/Cacheable;

    if-eqz v0, :cond_6b

    .line 249
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KD:Lmiui/util/cache/Cache;

    move-object v2, p1

    check-cast v2, Lmiui/util/async/Cacheable;

    invoke-interface {v2}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_6b

    .line 254
    sget-object v2, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 255
    sget-object v2, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v2, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 256
    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v1, v0}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 257
    return-void

    .line 261
    :cond_6b
    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v0

    sget-object v2, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    if-ne v0, v2, :cond_7c

    .line 265
    sget-object v0, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {p1, v0, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 266
    invoke-static {p0, p1}, Lmiui/util/async/b;->a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    goto :goto_81

    .line 268
    :cond_7c
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-virtual {v0, p1}, Lmiui/util/async/a;->b(Lmiui/util/async/Task;)Z

    .line 270
    :goto_81
    return-void

    .line 245
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has already added into task manager and not finish yet"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has already added into task manager and not finish yet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    const-string v0, "async"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;",
            "Lmiui/util/async/Task$Delivery;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KF:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/async/TaskInfoDeliverer;->a(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method dJ()Lmiui/util/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KD:Lmiui/util/cache/Cache;

    return-object v0
.end method

.method isShutdown()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->KA:Z

    return v0
.end method

.method public pause()V
    .registers 2

    .line 280
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-virtual {v0}, Lmiui/util/async/a;->pause()V

    .line 281
    return-void
.end method

.method public resume()V
    .registers 2

    .line 291
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-virtual {v0}, Lmiui/util/async/a;->resume()V

    .line 292
    return-void
.end method

.method public setCallbackThread(Z)V
    .registers 3

    .line 344
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KF:Lmiui/util/async/TaskInfoDeliverer;

    invoke-virtual {v0, p1}, Lmiui/util/async/TaskInfoDeliverer;->setCallbackThread(Z)V

    .line 345
    return-void
.end method

.method public setMaxCache(I)V
    .registers 3

    .line 174
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KD:Lmiui/util/cache/Cache;

    invoke-interface {v0, p1}, Lmiui/util/cache/Cache;->setMaxSize(I)V

    .line 175
    return-void
.end method

.method public setThreadCount(I)V
    .registers 5

    .line 183
    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->KA:Z

    if-eqz v0, :cond_c

    .line 185
    const-string p1, "async"

    const-string v0, "Cannot add task into a shut down task manager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 190
    :cond_c
    if-gez p1, :cond_15

    .line 191
    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result p1

    .line 192
    if-gtz p1, :cond_15

    .line 193
    const/4 p1, 0x4

    .line 197
    :cond_15
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    if-le p1, v0, :cond_31

    .line 199
    :goto_1d
    if-ge v0, p1, :cond_4a

    .line 200
    new-instance v1, Lmiui/util/async/b;

    iget-object v2, p0, Lmiui/util/async/TaskManager;->KC:Lmiui/util/async/a;

    invoke-direct {v1, p0, v2, v0}, Lmiui/util/async/b;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/a;I)V

    .line 201
    invoke-virtual {v1}, Lmiui/util/async/b;->start()V

    .line 202
    iget-object v2, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 204
    :cond_31
    if-ge p1, v0, :cond_4a

    .line 205
    add-int/lit8 v0, v0, -0x1

    :goto_35
    if-lt v0, p1, :cond_4a

    .line 206
    iget-object v1, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/b;

    .line 207
    invoke-virtual {v1}, Lmiui/util/async/b;->shutdown()V

    .line 208
    iget-object v1, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 211
    :cond_4a
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 304
    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v0

    if-eq p0, v0, :cond_30

    .line 309
    iget-boolean v0, p0, Lmiui/util/async/TaskManager;->KA:Z

    if-nez v0, :cond_30

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/TaskManager;->KA:Z

    .line 311
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/async/b;

    .line 312
    invoke-virtual {v1}, Lmiui/util/async/b;->shutdown()V

    .line 313
    goto :goto_13

    .line 314
    :cond_23
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v0, p0, Lmiui/util/async/TaskManager;->KD:Lmiui/util/cache/Cache;

    invoke-interface {v0}, Lmiui/util/cache/Cache;->clear()V

    .line 317
    invoke-direct {p0}, Lmiui/util/async/TaskManager;->dI()V

    .line 320
    :cond_30
    return-void
.end method
