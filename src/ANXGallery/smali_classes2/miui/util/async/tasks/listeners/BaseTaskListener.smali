.class public abstract Lmiui/util/async/tasks/listeners/BaseTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/async/Task$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 43
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;II)V"
        }
    .end annotation

    .line 38
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    return-object p3
.end method
