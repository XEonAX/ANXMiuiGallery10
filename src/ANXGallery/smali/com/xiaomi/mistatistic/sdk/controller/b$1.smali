.class Lcom/xiaomi/mistatistic/sdk/controller/b$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleMonitor.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/b;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/b;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/b$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->h()V

    .line 51
    return-void
.end method
