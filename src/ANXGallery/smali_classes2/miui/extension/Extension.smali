.class public Lmiui/extension/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Extension"


# instance fields
.field private uS:Z

.field private final xK:Ljava/lang/String;

.field private final xL:Ljava/lang/String;

.field private final xM:Ljava/lang/String;

.field private xN:Lmiui/extension/invoker/Invoker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmiui/extension/Extension;->xK:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lmiui/extension/Extension;->xL:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lmiui/extension/Extension;->xM:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private initialize()V
    .registers 6

    .line 60
    iget-boolean v0, p0, Lmiui/extension/Extension;->uS:Z

    if-eqz v0, :cond_5

    .line 61
    return-void

    .line 64
    :cond_5
    const/4 v0, 0x1

    :try_start_6
    iget-object v1, p0, Lmiui/extension/Extension;->xM:Ljava/lang/String;

    const-string v2, "()V"

    invoke-static {v1, v2}, Lmiui/reflect/Constructor;->of(Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v1

    .line 65
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/extension/invoker/Invoker;

    iput-object v1, p0, Lmiui/extension/Extension;->xN:Lmiui/extension/invoker/Invoker;
    :try_end_19
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_6 .. :try_end_19} :catch_38
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_6 .. :try_end_19} :catch_1e
    .catchall {:try_start_6 .. :try_end_19} :catchall_1c

    .line 71
    :goto_19
    iput-boolean v0, p0, Lmiui/extension/Extension;->uS:Z

    .line 72
    goto :goto_52

    .line 71
    :catchall_1c
    move-exception v1

    goto :goto_53

    .line 68
    :catch_1e
    move-exception v1

    .line 69
    :try_start_1f
    const-string v2, "Extension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to initialize ActivityExecutor, invoker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/extension/Extension;->xM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 66
    :catch_38
    move-exception v1

    .line 67
    const-string v2, "Extension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to initialize ActivityExecutor, invoker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/extension/Extension;->xM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_1c

    goto :goto_19

    .line 73
    :goto_52
    return-void

    .line 71
    :goto_53
    iput-boolean v0, p0, Lmiui/extension/Extension;->uS:Z

    throw v1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lmiui/extension/Extension;->xL:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoker()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lmiui/extension/Extension;->xM:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lmiui/extension/Extension;->xK:Ljava/lang/String;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 44
    iget-object v0, p0, Lmiui/extension/Extension;->xL:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/extension/Extension;->xL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 45
    return-void

    .line 48
    :cond_d
    invoke-direct {p0}, Lmiui/extension/Extension;->initialize()V

    .line 50
    iget-object v0, p0, Lmiui/extension/Extension;->xN:Lmiui/extension/invoker/Invoker;

    if-eqz v0, :cond_33

    .line 52
    :try_start_14
    iget-object v0, p0, Lmiui/extension/Extension;->xN:Lmiui/extension/invoker/Invoker;

    invoke-interface {v0, p1, p2}, Lmiui/extension/invoker/Invoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Lmiui/reflect/IllegalArgumentException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 55
    goto :goto_33

    .line 53
    :catch_1a
    move-exception p1

    .line 54
    const-string p2, "Extension"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to invoke ActivityExecutor, invoker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/extension/Extension;->xM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_33
    :goto_33
    return-void
.end method
