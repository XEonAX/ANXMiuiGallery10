.class final Lcom/xiaomi/mistatistic/sdk/b$1;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->b:Ljava/util/Map;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b$1$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/b$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/b$1;)V

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "MEH"

    const-string v2, "Error to upload the exception "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
