.class Lcom/miui/internal/util/ClassProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/util/ClassProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic je:Lcom/miui/internal/util/ClassProxy;


# direct methods
.method constructor <init>(Lcom/miui/internal/util/ClassProxy;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/miui/internal/util/ClassProxy$1;->je:Lcom/miui/internal/util/ClassProxy;

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

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/util/ClassProxy$1;->je:Lcom/miui/internal/util/ClassProxy;

    invoke-static {v0}, Lcom/miui/internal/util/ClassProxy;->a(Lcom/miui/internal/util/ClassProxy;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
