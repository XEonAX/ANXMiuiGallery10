.class public Lcom/xiaomi/mipush/sdk/PushServiceClient;
.super Ljava/lang/Object;
.source "PushServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;
    }
.end annotation


# static fields
.field private static isBind:Z

.field private static sInstance:Lcom/xiaomi/mipush/sdk/PushServiceClient;

.field private static final sPendingRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handler:Landroid/os/Handler;

.field private isConnectingService:Z

.field private mClientMessenger:Landroid/os/Messenger;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Ljava/lang/Integer;

.field private mIsMiuiPushServiceEnabled:Z

.field private mSession:Ljava/lang/String;

.field private pendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private registerTask:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isBind:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mIsMiuiPushServiceEnabled:Z

    .line 84
    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->handler:Landroid/os/Handler;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    .line 87
    iput-boolean v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isConnectingService:Z

    .line 514
    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->registerTask:Landroid/content/Intent;

    .line 614
    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    .line 98
    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mSession:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->serviceInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mIsMiuiPushServiceEnabled:Z

    .line 100
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->useBind()Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isBind:Z

    .line 101
    new-instance v1, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient$1;-><init>(Lcom/xiaomi/mipush/sdk/PushServiceClient;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->handler:Landroid/os/Handler;

    .line 143
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createGlobalServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->startServiceSafely(Landroid/content/Intent;)V

    .line 147
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaomi/mipush/sdk/RetryType;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/HashMap;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->retryPolicy(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaomi/mipush/sdk/PushServiceClient;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mClientMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/mipush/sdk/PushServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mClientMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/mipush/sdk/PushServiceClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isConnectingService:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xiaomi/mipush/sdk/PushServiceClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized bindServiceSafely(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isConnectingService:Z

    if-eqz v2, :cond_1

    .line 687
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->parseToMessage(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 688
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    .line 689
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :goto_0
    monitor-exit p0

    return-void

    .line 695
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mClientMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_2

    .line 696
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/xiaomi/mipush/sdk/PushServiceClient$3;

    invoke-direct {v3, p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient$3;-><init>(Lcom/xiaomi/mipush/sdk/PushServiceClient;)V

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 720
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isConnectingService:Z

    .line 723
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 724
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->parseToMessage(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 725
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 686
    .end local v1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 727
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->parseToMessage(Landroid/content/Intent;)Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 729
    .restart local v1    # "message":Landroid/os/Message;
    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mClientMessenger:Landroid/os/Messenger;

    .line 732
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isConnectingService:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private callService(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 670
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ConfigKey;->ServiceBootMode:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 671
    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v5

    sget-object v6, Lcom/xiaomi/xmpush/thrift/BootModeType;->START:Lcom/xiaomi/xmpush/thrift/BootModeType;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/BootModeType;->getValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v1

    .line 672
    .local v1, "ocBootMode":I
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getServiceBootMode()I

    move-result v0

    .line 673
    .local v0, "currentMode":I
    sget-object v4, Lcom/xiaomi/xmpush/thrift/BootModeType;->BIND:Lcom/xiaomi/xmpush/thrift/BootModeType;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/BootModeType;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1

    sget-boolean v4, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isBind:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 674
    .local v3, "realUseBind":Z
    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lcom/xiaomi/xmpush/thrift/BootModeType;->BIND:Lcom/xiaomi/xmpush/thrift/BootModeType;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/BootModeType;->getValue()I

    move-result v2

    .line 675
    .local v2, "realMode":I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 676
    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendServiceBootMode(I)Z

    .line 678
    :cond_0
    if-eqz v3, :cond_3

    .line 679
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->bindServiceSafely(Landroid/content/Intent;)V

    .line 683
    :goto_2
    return-void

    .line 673
    .end local v2    # "realMode":I
    .end local v3    # "realUseBind":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 674
    .restart local v3    # "realUseBind":Z
    :cond_2
    sget-object v4, Lcom/xiaomi/xmpush/thrift/BootModeType;->START:Lcom/xiaomi/xmpush/thrift/BootModeType;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/BootModeType;->getValue()I

    move-result v2

    goto :goto_1

    .line 681
    .restart local v2    # "realMode":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->startServiceSafely(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private createGlobalServiceIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 425
    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createGlobalServiceIntentForApp()Landroid/content/Intent;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    .line 429
    :cond_0
    const-string v0, "pushChannel xmsf create own channel"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createMyPushChannelIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private createGlobalServiceIntentForApp()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->shouldUseMIUIPush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "pushChannel app start miui china channel"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createMIUIPushChannelIntent()Landroid/content/Intent;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 442
    :cond_0
    const-string v0, "pushChannel app start  own channel"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createMyPushChannelIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private createMIUIPushChannelIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getPushServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->disableMyPushService()V

    .line 457
    return-object v0
.end method

.method private createMyPushChannelIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->enableMyPushService()V

    .line 467
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 468
    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    return-object v0
.end method

.method private createServiceIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->shouldUseMIUIPush()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createMIUIPushChannelIntent()Landroid/content/Intent;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createMyPushChannelIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private disableMyPushService()V
    .locals 4

    .prologue
    .line 489
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 490
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enableMyPushService()V
    .locals 4

    .prologue
    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 500
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-class v1, Lcom/xiaomi/mipush/sdk/PushServiceClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sInstance:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sInstance:Lcom/xiaomi/mipush/sdk/PushServiceClient;

    .line 93
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sInstance:Lcom/xiaomi/mipush/sdk/PushServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPushServiceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 478
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v2, 0x6a

    if-lt v1, v2, :cond_0

    .line 479
    const-string v1, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v1

    .line 484
    :cond_0
    const-string v1, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method

.method private declared-synchronized getServiceBootMode()I
    .locals 5

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    const-string v3, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 156
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "service_boot_mode"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 157
    .local v0, "bootMode":I
    monitor-exit p0

    return v0

    .line 155
    .end local v0    # "bootMode":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private isAutoTry()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 649
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "pkg":Ljava/lang/String;
    const-string v2, "miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseToMessage(Landroid/content/Intent;)Landroid/os/Message;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 739
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 740
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 741
    return-object v0
.end method

.method private retryPolicy(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V
    .locals 14
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/mipush/sdk/RetryType;
    .param p3, "expand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/RetryType;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p4, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->checkAppInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    .line 245
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v12, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v12}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 250
    .local v12, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 252
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v9

    .line 253
    .local v9, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 254
    .local v3, "operatePushMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 255
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {v12, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 257
    if-eqz p3, :cond_2

    .line 258
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .end local v3    # "operatePushMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    const/4 v2, 0x1

    invoke-direct {v3, p1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 261
    .restart local v3    # "operatePushMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :cond_2
    const-class v4, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v4

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->resetOperateMessage(Ljava/lang/String;)V

    .line 263
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_3
    :goto_1
    sget-object v2, Lcom/xiaomi/mipush/sdk/PushServiceClient$4;->$SwitchMap$com$xiaomi$mipush$sdk$RetryType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 299
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 300
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 302
    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v12, v2, v4, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 303
    if-eqz p3, :cond_5

    .line 304
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 305
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 306
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    .line 307
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v13

    .line 309
    .local v13, "sendMsgContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-static {v13}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v11

    .line 310
    .local v11, "msgBytes":[B
    if-eqz v11, :cond_5

    .line 312
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    array-length v6, v11

    invoke-static {v2, v4, v3, v5, v6}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;I)V

    .line 313
    const-string v2, "mipush_payload"

    invoke-virtual {v9, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 314
    const-string v2, "com.xiaomi.mipush.MESSAGE_CACHE"

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v2, "mipush_app_id"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v2, "mipush_app_token"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-direct {p0, v9}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 322
    .end local v11    # "msgBytes":[B
    .end local v13    # "sendMsgContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 323
    .local v10, "msg":Landroid/os/Message;
    const/16 v2, 0x13

    iput v2, v10, Landroid/os/Message;->what:I

    .line 324
    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/mipush/sdk/RetryType;->ordinal()I

    move-result v8

    .line 325
    .local v8, "flag":I
    iput-object p1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    iput v8, v10, Landroid/os/Message;->arg1:I

    .line 327
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 263
    .end local v8    # "flag":I
    .end local v10    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 265
    :cond_6
    invoke-virtual {v12, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 266
    if-eqz p3, :cond_3

    .line 267
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .end local v3    # "operatePushMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    const/4 v2, 0x1

    invoke-direct {v3, p1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .restart local v3    # "operatePushMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    goto/16 :goto_1

    .line 272
    :pswitch_0
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->DisablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 273
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->DisablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 274
    if-eqz p4, :cond_7

    .line 275
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 276
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 278
    :cond_7
    const-string v2, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 281
    :pswitch_1
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->EnablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 282
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->EnablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 283
    if-eqz p4, :cond_8

    .line 284
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 285
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 287
    :cond_8
    const-string v2, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 292
    :pswitch_2
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ThirdPartyRegUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 293
    if-eqz p4, :cond_4

    .line 294
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    goto/16 :goto_2

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized saveServiceBootMode(I)V
    .locals 4
    .param p1, "bootMode"    # I

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "service_boot_mode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private serviceInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 396
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.xiaomi.xmsf"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 398
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 407
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 401
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x69

    if-lt v4, v5, :cond_0

    .line 407
    const/4 v3, 0x1

    goto :goto_0

    .line 404
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 405
    .local v0, "ignored":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private startServiceSafely(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 659
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 660
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->bindServiceSafely(Landroid/content/Intent;)V

    .line 667
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private useBind()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 557
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->shouldUseMIUIPush()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.xiaomi.xmsf"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 562
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x6c

    if-lt v2, v3, :cond_1

    .line 571
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 565
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 567
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addPendRequest(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Z)V
    .locals 4
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    new-instance v0, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;-><init>()V

    .line 526
    .local v0, "br":Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;, "Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest<TT;>;"
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;->message:Lorg/apache/thrift/TBase;

    .line 527
    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;->actionType:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 528
    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;->encrypt:Z

    .line 529
    sget-object v2, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    monitor-enter v2

    .line 530
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    .line 533
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    :cond_0
    monitor-exit v2

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public awakePushService()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->startServiceSafely(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public clearLocalNotificationType()V
    .locals 3

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 597
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SIG:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 601
    return-void
.end method

.method public clearNotification(I)V
    .locals 3
    .param p1, "notifyId"    # I

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method public clearNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method public final closePush()V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public isProvisioned()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 617
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->shouldUseMIUIPush()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isAutoTry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 619
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/service/PushProvision;->getProvisioned()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    .line 621
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 622
    new-instance v0, Lcom/xiaomi/mipush/sdk/PushServiceClient$2;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient$2;-><init>(Lcom/xiaomi/mipush/sdk/PushServiceClient;Landroid/os/Handler;)V

    .line 635
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushProvision;->getProvisionedUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 641
    .end local v0    # "observer":Landroid/database/ContentObserver;
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mDeviceProvisioned:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 641
    goto :goto_0
.end method

.method public processPendRequest()V
    .locals 10

    .prologue
    .line 539
    sget-object v8, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    monitor-enter v8

    .line 540
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;

    .line 541
    .local v7, "br":Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;
    iget-object v1, v7, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;->message:Lorg/apache/thrift/TBase;

    iget-object v2, v7, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;->actionType:Lcom/xiaomi/xmpush/thrift/ActionType;

    iget-boolean v3, v7, Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;->encrypt:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    goto :goto_0

    .line 544
    .end local v7    # "br":Lcom/xiaomi/mipush/sdk/PushServiceClient$BufferedRequest;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 543
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sPendingRequest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    return-void
.end method

.method public processRegisterTask()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->registerTask:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->registerTask:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->registerTask:Landroid/content/Intent;

    .line 521
    :cond_0
    return-void
.end method

.method public final register(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V
    .locals 5
    .param p1, "regData"    # Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .param p2, "isEnvChanage"    # Z

    .prologue
    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->registerTask:Landroid/content/Intent;

    .line 163
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegRequestId:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v3, p1, v4}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v2

    .line 168
    .local v2, "regContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-static {v2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 169
    .local v1, "msgBytes":[B
    if-nez v1, :cond_0

    .line 170
    const-string v3, "register fail, because msgBytes is null."

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v3, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v3, "mipush_app_id"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v3, "mipush_payload"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 177
    const-string v3, "mipush_session"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mSession:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "mipush_env_chanage"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v3, "mipush_env_type"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getEnvType()I

    move-result v4

    .line 179
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->isProvisioned()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    goto :goto_0

    .line 184
    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->registerTask:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final sendAssemblePushTokenCommon(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;Lcom/xiaomi/mipush/sdk/AssemblePush;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "retryType"    # Lcom/xiaomi/mipush/sdk/RetryType;
    .param p3, "pushType"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v1

    const-string/jumbo v2, "syncing"

    invoke-virtual {v1, p2, v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushExtra(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/util/HashMap;

    move-result-object v0

    .line 234
    .local v0, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->retryPolicy(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    .line 235
    return-void
.end method

.method sendDataCommon(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 610
    .local v0, "newIntent":Landroid/content/Intent;
    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 611
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    .line 612
    return-void
.end method

.method public final sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 1
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 332
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 7
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "encrypt"    # Z
    .param p4, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "Z",
            "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    const/4 v4, 0x1

    .line 341
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 342
    return-void
.end method

.method public final sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V
    .locals 7
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "encrypt"    # Z
    .param p4, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p5, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "Z",
            "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 337
    return-void
.end method

.method public final sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V
    .locals 9
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "encrypt"    # Z
    .param p4, "pendingIfNecessary"    # Z
    .param p5, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p6, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "ZZ",
            "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 346
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public final sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p2, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "encrypt"    # Z
    .param p4, "pendingIfNecessary"    # Z
    .param p5, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p6, "isCache"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "ZZ",
            "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    if-eqz p4, :cond_0

    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->addPendRequest(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Z)V

    .line 379
    :goto_0
    return-void

    .line 357
    :cond_0
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v8

    .line 362
    .local v8, "sendMsgContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-eqz p5, :cond_2

    .line 363
    invoke-virtual {v8, p5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setMetaInfo(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 366
    :cond_2
    invoke-static {v8}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v7

    .line 367
    .local v7, "msgBytes":[B
    if-nez v7, :cond_3

    .line 368
    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    array-length v2, v7

    invoke-static {v0, v1, p1, p2, v2}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;I)V

    .line 373
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v6

    .line 374
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v0, "mipush_payload"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 376
    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    invoke-direct {p0, v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final sendPushEnableDisableMessage(Z)V
    .locals 1
    .param p1, "isClose"    # Z

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendPushEnableDisableMessage(ZLjava/lang/String;)V

    .line 216
    return-void
.end method

.method public final sendPushEnableDisableMessage(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isClose"    # Z
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const-string/jumbo v2, "syncing"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->retryPolicy(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const-string/jumbo v2, "syncing"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->retryPolicy(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;ZLjava/util/HashMap;)V

    goto :goto_0
.end method

.method public sendServiceBootMode(I)Z
    .locals 6
    .param p1, "bootMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 745
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->checkAppInfo()Z

    move-result v2

    if-nez v2, :cond_0

    .line 760
    :goto_0
    return v1

    .line 749
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->saveServiceBootMode(I)V

    .line 751
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 752
    .local v0, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 753
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 754
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 755
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientABTest:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 756
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 757
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "boot_mode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 760
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final sendTinyData(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 384
    .local v1, "tinyDataBytes":[B
    if-nez v1, :cond_0

    .line 385
    const-string v2, "send TinyData failed, because tinyDataBytes is null."

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v2, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 390
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->startServiceSafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public shouldUseMIUIPush()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mIsMiuiPushServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    .line 510
    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getEnvType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 509
    :goto_0
    return v0

    .line 510
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unregister(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)V
    .locals 5
    .param p1, "unregData"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .prologue
    .line 193
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v3, p1, v4}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v2

    .line 195
    .local v2, "unregContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-static {v2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 196
    .local v1, "msgBytes":[B
    if-nez v1, :cond_0

    .line 197
    const-string/jumbo v3, "unregister fail, because msgBytes is null."

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v3, "mipush_app_id"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "mipush_payload"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 205
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->callService(Landroid/content/Intent;)V

    goto :goto_0
.end method
