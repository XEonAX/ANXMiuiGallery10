.class Lcom/xiaomi/mistatistic/sdk/controller/q$2;
.super Ljava/lang/Object;
.source "SessionManagerV2.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/q;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/q$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/content/Context;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "PA is disabled."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/q$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/q;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/q$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;Ljava/lang/String;)V

    goto :goto_0
.end method
