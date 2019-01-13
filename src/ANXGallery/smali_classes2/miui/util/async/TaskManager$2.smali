.class Lmiui/util/async/TaskManager$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KK:Lmiui/util/async/TaskManager;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskManager;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lmiui/util/async/TaskManager$2;->KK:Lmiui/util/async/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lmiui/util/async/TaskManager$2;->KK:Lmiui/util/async/TaskManager;

    invoke-virtual {v0}, Lmiui/util/async/TaskManager;->shutdown()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
