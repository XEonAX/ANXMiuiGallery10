.class Lmiui/util/async/TaskInfoDeliverer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;,
        Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    }
.end annotation


# static fields
.field private static final Kj:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Kk:Lmiui/util/async/TaskManager;

.field private Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

.field private Km:Lmiui/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 93
    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$1;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$1;-><init>()V

    .line 94
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/util/async/TaskInfoDeliverer;->Kj:Lmiui/util/Pools$Pool;

    .line 93
    return-void
.end method

.method public constructor <init>(Lmiui/util/async/TaskManager;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kk:Lmiui/util/async/TaskManager;

    .line 132
    new-instance p1, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    .line 134
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Km:Lmiui/util/concurrent/ConcurrentRingQueue;

    .line 135
    return-void
.end method

.method static synthetic a(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;)Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;
    .registers 2

    .line 20
    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/async/TaskInfoDeliverer;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->dG()V

    return-void
.end method

.method private dG()V
    .registers 6

    .line 212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2f

    .line 213
    :goto_c
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->Km:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 214
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->Km:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    .line 215
    if-eqz v0, :cond_2e

    .line 220
    iget-object v1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Kq:Lmiui/util/async/Task;

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->Kk:Lmiui/util/async/TaskManager;

    iget-object v3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Kr:Lmiui/util/async/Task$Delivery;

    iget-object v4, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Ks:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 221
    sget-object v1, Lmiui/util/async/TaskInfoDeliverer;->Kj:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 223
    :cond_2e
    goto :goto_c

    .line 225
    :cond_2f
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->b(Lmiui/util/async/TaskInfoDeliverer;)V

    .line 227
    :cond_34
    return-void
.end method


# virtual methods
.method public a(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .registers 6
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

    .line 180
    sget-object v0, Lmiui/util/async/TaskInfoDeliverer;->Kj:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    .line 181
    iput-object p1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Kq:Lmiui/util/async/Task;

    .line 182
    iput-object p2, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Kr:Lmiui/util/async/Task$Delivery;

    .line 183
    iput-object p3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Ks:Ljava/lang/Object;

    .line 185
    sget-object v1, Lmiui/util/async/Task$Delivery;->Kd:Lmiui/util/async/Task$Delivery;

    if-ne p2, v1, :cond_1f

    if-nez p3, :cond_1f

    .line 191
    nop

    .line 192
    iget-object p2, p0, Lmiui/util/async/TaskInfoDeliverer;->Km:Lmiui/util/concurrent/ConcurrentRingQueue;

    new-instance p3, Lmiui/util/async/TaskInfoDeliverer$3;

    invoke-direct {p3, p0, p1}, Lmiui/util/async/TaskInfoDeliverer$3;-><init>(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/Task;)V

    invoke-virtual {p2, p3}, Lmiui/util/concurrent/ConcurrentRingQueue;->remove(Lmiui/util/concurrent/Queue$Predicate;)I

    .line 204
    :cond_1f
    iget-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Km:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {p1, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    .line 205
    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->dG()V

    .line 206
    return-void
.end method

.method public setCallbackThread(Z)V
    .registers 4

    .line 149
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 150
    if-eqz p1, :cond_23

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {v1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_23

    .line 151
    iget-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {p1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 152
    new-instance p1, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-direct {p1, v0}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    goto :goto_3a

    .line 153
    :cond_23
    if-nez p1, :cond_3a

    iget-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->Kl:Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;

    invoke-virtual {p1}, Lmiui/util/async/TaskInfoDeliverer$DeliverHandler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p1, v0, :cond_3a

    .line 154
    new-instance p1, Lmiui/util/async/TaskInfoDeliverer$2;

    invoke-direct {p1, p0}, Lmiui/util/async/TaskInfoDeliverer$2;-><init>(Lmiui/util/async/TaskInfoDeliverer;)V

    .line 163
    const-string v0, "TaskInfoDeliverer-Callback"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 166
    :cond_3a
    :goto_3a
    return-void
.end method
