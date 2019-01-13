.class Lmiui/util/async/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile KA:Z

.field private final KC:Lmiui/util/async/a;

.field private final Kk:Lmiui/util/async/TaskManager;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/a;I)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-object p1, p0, Lmiui/util/async/b;->Kk:Lmiui/util/async/TaskManager;

    .line 40
    iput-object p2, p0, Lmiui/util/async/b;->KC:Lmiui/util/async/a;

    .line 41
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/util/async/b;->KA:Z

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskThread-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/util/async/b;->setName(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private static a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Ljava/lang/Thread;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 103
    if-eqz p0, :cond_54

    if-eqz p2, :cond_54

    .line 104
    sget-object v0, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p2, p1}, Lmiui/util/async/Task;->a(Ljava/lang/Thread;)V

    .line 107
    nop

    .line 109
    :try_start_e
    invoke-virtual {p2}, Lmiui/util/async/Task;->doLoad()Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_25

    .line 115
    :try_start_12
    sget-object v0, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-nez p1, :cond_1e

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "result is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1e
    move-object v2, p1

    :goto_1f
    invoke-virtual {p2, v0, v2}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    .line 123
    goto :goto_31

    .line 116
    :catch_23
    move-exception v0

    goto :goto_27

    :catch_25
    move-exception v0

    move-object p1, v1

    .line 122
    :goto_27
    sget-object v2, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    new-instance v3, Lmiui/util/async/TaskExecutingException;

    invoke-direct {v3, v0}, Lmiui/util/async/TaskExecutingException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p2, v2, v3}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 125
    :goto_31
    invoke-virtual {p0}, Lmiui/util/async/TaskManager;->dJ()Lmiui/util/cache/Cache;

    move-result-object p0

    .line 126
    if-eqz p0, :cond_51

    if-eqz p1, :cond_51

    instance-of v0, p2, Lmiui/util/async/Cacheable;

    if-eqz v0, :cond_51

    .line 127
    move-object v0, p2

    check-cast v0, Lmiui/util/async/Cacheable;

    .line 128
    invoke-interface {v0}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_51

    .line 134
    invoke-interface {v0}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1}, Lmiui/util/async/Cacheable;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v2, p1, v0}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 138
    :cond_51
    invoke-virtual {p2, v1}, Lmiui/util/async/Task;->a(Ljava/lang/Thread;)V

    .line 140
    :cond_54
    return-void
.end method

.method public static a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lmiui/util/async/TaskThread$1;

    invoke-direct {v0, p0, p1}, Lmiui/util/async/TaskThread$1;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    .line 59
    const-string p0, "TaskThread-RealTime"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method static synthetic b(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .registers 3

    .line 14
    invoke-static {p0, p1, p2}, Lmiui/util/async/b;->a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 76
    iget-object v0, p0, Lmiui/util/async/b;->KC:Lmiui/util/async/a;

    .line 77
    :goto_2
    iget-boolean v1, p0, Lmiui/util/async/b;->KA:Z

    if-nez v1, :cond_16

    .line 82
    invoke-virtual {v0}, Lmiui/util/async/a;->dM()Lmiui/util/async/Task;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_15

    .line 89
    iget-object v2, p0, Lmiui/util/async/b;->Kk:Lmiui/util/async/TaskManager;

    invoke-static {v2, p0, v1}, Lmiui/util/async/b;->a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    .line 90
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lmiui/util/async/b;->setPriority(I)V

    .line 92
    :cond_15
    goto :goto_2

    .line 93
    :cond_16
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/b;->KA:Z

    .line 68
    invoke-virtual {p0}, Lmiui/util/async/b;->interrupt()V

    .line 69
    return-void
.end method
