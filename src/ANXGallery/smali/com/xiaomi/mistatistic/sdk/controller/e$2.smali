.class Lcom/xiaomi/mistatistic/sdk/controller/e$2;
.super Ljava/lang/Object;
.source "AsyncJobDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/e$a;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/e;Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/e;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/e$a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "AJD"

    const-string v2, "error while executing job."

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
