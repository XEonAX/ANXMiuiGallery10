.class final Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;
.super Ljava/lang/Object;
.source "PushMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/PushMessageHandler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    return-void
.end method
