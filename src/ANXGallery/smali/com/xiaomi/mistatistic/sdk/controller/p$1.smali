.class Lcom/xiaomi/mistatistic/sdk/controller/p$1;
.super Landroid/os/Handler;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    .line 47
    const-string v0, "session_begin"

    invoke-static {v1, v0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 48
    const-string v0, "last_deactivate"

    invoke-static {v1, v0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 49
    const-string v0, "pv_path"

    const-string v6, ""

    invoke-static {v1, v0, v6}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    cmp-long v0, v2, v8

    if-lez v0, :cond_1

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/content/Context;JJ)V

    .line 54
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v0, v1, v6, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1df5e77
        :pswitch_0
    .end packed-switch
.end method
