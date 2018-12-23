.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMPushService$PingCallBack;,
        Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;,
        Lcom/xiaomi/push/service/XMPushService$PingJob;,
        Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;,
        Lcom/xiaomi/push/service/XMPushService$DisconnectJob;,
        Lcom/xiaomi/push/service/XMPushService$ConnectJob;,
        Lcom/xiaomi/push/service/XMPushService$UnbindJob;,
        Lcom/xiaomi/push/service/XMPushService$ReBindJob;,
        Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;,
        Lcom/xiaomi/push/service/XMPushService$BindJob;,
        Lcom/xiaomi/push/service/XMPushService$BlobReceiveJob;,
        Lcom/xiaomi/push/service/XMPushService$IntentJob;,
        Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;,
        Lcom/xiaomi/push/service/XMPushService$Job;,
        Lcom/xiaomi/push/service/XMPushService$KillJob;,
        Lcom/xiaomi/push/service/XMPushService$InitJob;
    }
.end annotation


# static fields
.field private static final PID:I

.field public static START_STICKY:I


# instance fields
.field private connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

.field private lastAlive:J

.field private mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

.field private mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

.field private mCurrentConnection:Lcom/xiaomi/smack/Connection;

.field private mExtremePowerModeObserver:Landroid/database/ContentObserver;

.field final mGeoReceiver:Landroid/content/BroadcastReceiver;

.field protected mJobClazz:Ljava/lang/Class;

.field private mJobController:Lcom/xiaomi/push/service/JobScheduler;

.field private mPacketListener:Lcom/xiaomi/smack/PacketListener;

.field private mPacketSync:Lcom/xiaomi/push/service/PacketSync;

.field private mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

.field private mRegion:Ljava/lang/String;

.field private mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

.field messenger:Landroid/os/Messenger;

.field private pingCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/XMPushService$PingCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/xiaomi/push/service/XMPushService;->PID:I

    .line 142
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app.chat.xiaomi.net"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "42.62.94.2:443"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "114.54.23.2"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.13.142.2"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.206.200.2"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    .line 137
    const-class v0, Lcom/xiaomi/push/service/XMJobService;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobClazz:Ljava/lang/Class;

    .line 155
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketSync:Lcom/xiaomi/push/service/PacketSync;

    .line 159
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    .line 161
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketListener:Lcom/xiaomi/smack/PacketListener;

    .line 421
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$8;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$8;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mGeoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/XMPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->updateAlarmTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connect()V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/xiaomi/push/service/XMPushService;->PID:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isExtremePowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/XMPushService;->updateGeoFenceState(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/ConnectionConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/Connection;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "x1"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->postOnCreate()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/JobScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketSync:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastNetworkAvailable(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 1599
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    if-eqz p1, :cond_1

    .line 1601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1606
    :catch_0
    move-exception v0

    .line 1607
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private canOpenForegroundService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2107
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2110
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->ForegroundServiceSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 2111
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static canShowGeoMessage(ILjava/lang/String;)Z
    .locals 2
    .param p0, "messageAction"    # I
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 506
    const-string v1, "Enter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p0, v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    const-string v1, "Leave"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 512
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAlive(Z)V
    .locals 4
    .param p1, "isPong"    # Z

    .prologue
    const/4 v3, 0x1

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    .line 595
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 614
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 606
    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isReadAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 607
    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isWriteAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$PingJob;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$PingJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 611
    :cond_2
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 612
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    goto :goto_0
.end method

.method private clearPingCallbacks()V
    .locals 2

    .prologue
    .line 2188
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2189
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2190
    monitor-exit v1

    .line 2191
    return-void

    .line 2190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeAllChannelByChid(Ljava/lang/String;I)V
    .locals 8
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "notifyType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1359
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 1360
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 1361
    .local v6, "loginInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-eqz v6, :cond_1

    .line 1362
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1363
    .local v2, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v2, :cond_0

    .line 1364
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$UnbindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 1368
    .end local v2    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateAllClientByChid(Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method private connect()V
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    const-string/jumbo v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    const-string/jumbo v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/ConnectionConfiguration;->setConnectionPoint(Ljava/lang/String;)V

    .line 1588
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connectBySlim()V

    .line 1590
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-nez v0, :cond_0

    .line 1592
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager;->notifyConnectionFailed(Landroid/content/Context;)V

    .line 1593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->broadcastNetworkAvailable(Z)V

    goto :goto_0
.end method

.method private connectBySlim()V
    .locals 4

    .prologue
    .line 1614
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketListener:Lcom/xiaomi/smack/PacketListener;

    new-instance v3, Lcom/xiaomi/push/service/XMPushService$13;

    invoke-direct {v3, p0}, Lcom/xiaomi/push/service/XMPushService$13;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/slim/SlimConnection;->addPacketListener(Lcom/xiaomi/smack/PacketListener;Lcom/xiaomi/smack/filter/PacketFilter;)V

    .line 1620
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v1}, Lcom/xiaomi/slim/SlimConnection;->connect()V

    .line 1622
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :goto_0
    return-void

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    const-string v1, "fail to create Slim connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1625
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/slim/SlimConnection;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private doAWLogic(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1131
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/PushLayerProcessIml;

    invoke-direct {v1}, Lcom/xiaomi/push/service/PushLayerProcessIml;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setSendDataIml(Lcom/xiaomi/push/service/awake/module/IProcessData;)V

    .line 1132
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, "packageName":Ljava/lang/String;
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 1134
    .local v6, "bytes":[B
    if-nez v6, :cond_1

    .line 1160
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "bytes":[B
    :cond_0
    :goto_0
    return-void

    .line 1137
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "bytes":[B
    :cond_1
    new-instance v10, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v10}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 1138
    .local v10, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {v10, v6}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1139
    invoke-virtual {v10}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 1140
    .local v5, "appId":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v9

    .line 1141
    .local v9, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1142
    .local v3, "cmdId":I
    if-eqz v9, :cond_0

    .line 1143
    const-string v0, "extra_help_aw_info"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1144
    .local v2, "awkInfo":Ljava/lang/String;
    const-string v0, "extra_aw_app_online_cmd"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1145
    .local v7, "cmd":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1151
    :goto_1
    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    move-object v1, p0

    .line 1153
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->wakeup(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1157
    .end local v2    # "awkInfo":Ljava/lang/String;
    .end local v3    # "cmdId":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "appId":Ljava/lang/String;
    .end local v6    # "bytes":[B
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v9    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :catch_0
    move-exception v8

    .line 1158
    .local v8, "e":Lorg/apache/thrift/TException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aw_logic: translate fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/thrift/TException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1148
    .end local v8    # "e":Lorg/apache/thrift/TException;
    .restart local v2    # "awkInfo":Ljava/lang/String;
    .restart local v3    # "cmdId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "appId":Ljava/lang/String;
    .restart local v6    # "bytes":[B
    .restart local v7    # "cmd":Ljava/lang/String;
    .restart local v9    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :catch_1
    move-exception v8

    .line 1149
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doAWPingCMD(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "frequency"    # I

    .prologue
    .line 1175
    const-string v4, "mipush_payload"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 1176
    .local v2, "payload":[B
    const-string v4, "com.xiaomi.mipush.MESSAGE_CACHE"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1177
    .local v1, "isCache":Z
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 1180
    .local v3, "xmPushActionNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :try_start_0
    invoke-static {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1182
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/push/service/AwakeAppPingJob;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v3, v6, v1}, Lcom/xiaomi/push/service/AwakeAppPingJob;-><init>(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Ljava/lang/ref/WeakReference;Z)V

    .line 1183
    invoke-virtual {v4, v5, p2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Lorg/apache/thrift/TException;
    const-string v4, "aw_ping : send help app ping  error"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableForegroundService()V
    .locals 3

    .prologue
    .line 2115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 2116
    sget v0, Lcom/xiaomi/push/service/XMPushService;->PID:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->startForeground(ILandroid/app/Notification;)V

    .line 2139
    :goto_0
    return-void

    .line 2120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mJobClazz:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$15;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMPushService$15;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private ensureRegionAvaible()Ljava/lang/String;
    .locals 10

    .prologue
    .line 325
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread()V

    .line 326
    const/4 v3, 0x0

    .line 327
    .local v3, "region":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 328
    .local v4, "start":J
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 330
    .local v6, "wait":Ljava/lang/Object;
    const-string v7, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 331
    invoke-static {p0}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v2

    .line 332
    .local v2, "provision":Lcom/xiaomi/push/service/PushProvision;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/push/service/PushProvision;->getProvisioned()I

    move-result v7

    if-nez v7, :cond_3

    .line 333
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    const-string v7, "ro.miui.region"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    const-string v7, "ro.product.locale.region"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    :cond_1
    :try_start_0
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 342
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :catch_0
    move-exception v7

    goto :goto_0

    .line 347
    .end local v2    # "provision":Lcom/xiaomi/push/service/PushProvision;
    :cond_2
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 350
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 351
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getRegion(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 354
    .local v0, "cost":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wait region :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 355
    return-object v3
.end method

.method private executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V
    .locals 1
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler;->executeJobNow(Lcom/xiaomi/push/service/JobScheduler$Job;)V

    .line 1391
    return-void
.end method

.method public static getPushServiceNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2143
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2144
    .local v2, "intent":Landroid/content/Intent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 2145
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2146
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2147
    const-string v6, "Push Service"

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2148
    const-string v6, "Push Service"

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2149
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2150
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 2160
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_0
    return-object v4

    .line 2152
    :cond_0
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 2153
    .local v4, "notification":Landroid/app/Notification;
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2155
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setLatestEventInfo"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2156
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const-string v8, "Push Service"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Push Service"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2157
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2158
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 65
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 725
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v51

    .line 727
    .local v51, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 730
    :cond_0
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 731
    .local v8, "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 732
    .local v59, "security":Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 734
    const-string v4, "security is empty. ignore."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1122
    .end local v8    # "chid":Ljava/lang/String;
    .end local v59    # "security":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 735
    .restart local v8    # "chid":Ljava/lang/String;
    .restart local v59    # "security":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_8

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/push/service/XMPushService;->shouldRebind(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v47

    .line 738
    .local v47, "needRebind":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/push/service/XMPushService;->updatePushClient(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 740
    .local v6, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 744
    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_4

    .line 745
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$BindJob;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 747
    :cond_4
    if-eqz v47, :cond_5

    .line 751
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ReBindJob;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/xiaomi/push/service/XMPushService$ReBindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 752
    :cond_5
    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_6

    .line 754
    const-string/jumbo v4, "the client is binding. %1$s %2$s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v10, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    aput-object v10, v5, v7

    const/4 v7, 0x1

    iget-object v10, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    .line 755
    invoke-static {v10}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 754
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_6
    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_1

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 763
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    goto/16 :goto_0

    .line 767
    .end local v6    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v47    # "needRebind":Z
    :cond_8
    const-string v4, "channel id is empty, do nothing!"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 769
    .end local v8    # "chid":Ljava/lang/String;
    .end local v59    # "security":Ljava/lang/String;
    :cond_9
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 770
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 771
    .local v57, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 772
    .restart local v8    # "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 773
    .local v9, "userId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service called close channel chid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 775
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 777
    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 778
    .local v39, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 779
    .local v38, "id":Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/push/service/XMPushService;->closeAllChannelByChid(Ljava/lang/String;I)V

    goto :goto_1

    .line 782
    .end local v38    # "id":Ljava/lang/String;
    .end local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 783
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/xiaomi/push/service/XMPushService;->closeAllChannelByChid(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 785
    :cond_b
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/xiaomi/push/service/XMPushService;->closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .end local v8    # "chid":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v57    # "pkgName":Ljava/lang/String;
    :cond_c
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 790
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 791
    :cond_d
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 792
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->sendMessages(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 793
    :cond_e
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 794
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 795
    .restart local v57    # "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 796
    .local v60, "session":Ljava/lang/String;
    const-string v4, "ext_packet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v46

    .line 798
    .local v46, "msgBundle":Landroid/os/Bundle;
    new-instance v41, Lcom/xiaomi/smack/packet/IQ;

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ;-><init>(Landroid/os/Bundle;)V

    .line 799
    .local v41, "iq":Lcom/xiaomi/smack/packet/IQ;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v57

    move-object/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v48

    .line 800
    .local v48, "newPacket":Lcom/xiaomi/smack/packet/Packet;
    if-eqz v48, :cond_1

    .line 801
    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v45

    .line 802
    .local v45, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-static {v0, v4}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v22

    .line 803
    .local v22, "blob":Lcom/xiaomi/slim/Blob;
    new-instance v4, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 805
    .end local v22    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v41    # "iq":Lcom/xiaomi/smack/packet/IQ;
    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v46    # "msgBundle":Landroid/os/Bundle;
    .end local v48    # "newPacket":Lcom/xiaomi/smack/packet/Packet;
    .end local v57    # "pkgName":Ljava/lang/String;
    .end local v60    # "session":Ljava/lang/String;
    :cond_f
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 806
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 807
    .restart local v57    # "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 808
    .restart local v60    # "session":Ljava/lang/String;
    const-string v4, "ext_packet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v46

    .line 810
    .restart local v46    # "msgBundle":Landroid/os/Bundle;
    new-instance v58, Lcom/xiaomi/smack/packet/Presence;

    move-object/from16 v0, v58

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/Presence;-><init>(Landroid/os/Bundle;)V

    .line 811
    .local v58, "pres":Lcom/xiaomi/smack/packet/Presence;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v57

    move-object/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v48

    .line 812
    .restart local v48    # "newPacket":Lcom/xiaomi/smack/packet/Packet;
    if-eqz v48, :cond_1

    .line 813
    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v45

    .line 814
    .restart local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-static {v0, v4}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v22

    .line 815
    .restart local v22    # "blob":Lcom/xiaomi/slim/Blob;
    new-instance v4, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 817
    .end local v22    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v46    # "msgBundle":Landroid/os/Bundle;
    .end local v48    # "newPacket":Lcom/xiaomi/smack/packet/Packet;
    .end local v57    # "pkgName":Ljava/lang/String;
    .end local v58    # "pres":Lcom/xiaomi/smack/packet/Presence;
    .end local v60    # "session":Ljava/lang/String;
    :cond_10
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 818
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 819
    .restart local v8    # "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 820
    .restart local v9    # "userId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request reset connection from chid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 823
    .restart local v6    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v6, :cond_1

    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_1

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getCurrentConnection()Lcom/xiaomi/smack/Connection;

    move-result-object v26

    .line 827
    .local v26, "conn":Lcom/xiaomi/smack/Connection;
    if-eqz v26, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3a98

    sub-long/2addr v4, v10

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/smack/Connection;->isReadAlive(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 828
    :cond_11
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 832
    .end local v6    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v8    # "chid":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v26    # "conn":Lcom/xiaomi/smack/Connection;
    :cond_12
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 833
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 834
    .restart local v57    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 835
    .restart local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open channel should be called first before update info, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    :cond_13
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 842
    .restart local v8    # "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 843
    .restart local v9    # "userId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 845
    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "chid":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 847
    .restart local v8    # "chid":Ljava/lang/String;
    :cond_14
    const/16 v45, 0x0

    .line 848
    .restart local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 850
    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v40

    .line 851
    .local v40, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-eqz v40, :cond_15

    invoke-interface/range {v40 .. v40}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 852
    invoke-interface/range {v40 .. v40}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    check-cast v45, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 857
    .end local v40    # "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    .restart local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_15
    :goto_2
    if-eqz v45, :cond_1

    .line 858
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 859
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    .line 861
    :cond_16
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 862
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    goto/16 :goto_0

    .line 855
    :cond_17
    move-object/from16 v0, v51

    invoke-virtual {v0, v8, v9}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v45

    goto :goto_2

    .line 865
    .end local v8    # "chid":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v57    # "pkgName":Ljava/lang/String;
    :cond_18
    const-string v4, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushProvision;->checkProvisioned()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushProvision;->getProvisioned()I

    move-result v4

    if-nez v4, :cond_19

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register without being provisioned. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mipush_app_package"

    .line 870
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 869
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 874
    :cond_19
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 875
    .local v14, "payload":[B
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 876
    .local v15, "packageName":Ljava/lang/String;
    const-string v4, "mipush_env_chanage"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    .line 877
    .local v43, "isEnvChanage":Z
    const-string v4, "mipush_env_type"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 878
    .local v13, "envType":I
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->removeUnRegisteredPkg(Ljava/lang/String;)V

    .line 879
    if-eqz v43, :cond_1a

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 880
    new-instance v10, Lcom/xiaomi/push/service/XMPushService$9;

    const/16 v12, 0xe

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/xiaomi/push/service/XMPushService$9;-><init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 897
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/xiaomi/push/service/XMPushService;->registerForMiPushApp([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 899
    .end local v13    # "envType":I
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v43    # "isEnvChanage":Z
    :cond_1b
    const-string v4, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 901
    :cond_1c
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 902
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 903
    .restart local v14    # "payload":[B
    const-string v4, "com.xiaomi.mipush.MESSAGE_CACHE"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v42

    .line 904
    .local v42, "isCache":Z
    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 905
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->addUnRegisteredPkg(Ljava/lang/String;)V

    .line 907
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v15, v14, v1}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 908
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v42    # "isCache":Z
    :cond_1e
    sget-object v4, Lcom/xiaomi/push/service/PushServiceConstants;->ACTION_UNINSTALL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 910
    const-string/jumbo v4, "uninstall_pkg_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 911
    .restart local v57    # "pkgName":Ljava/lang/String;
    if-eqz v57, :cond_1

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 915
    const/16 v64, 0x0

    .line 917
    .local v64, "uninstalled":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_3
    const-string v4, "com.xiaomi.channel"

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 923
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz v64, :cond_1f

    .line 925
    const-string v4, "1"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->closeAllChannelByChid(Ljava/lang/String;I)V

    .line 926
    const-string v4, "close the miliao channel as the app is uninstalled."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    :catch_0
    move-exception v28

    .line 919
    .local v28, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v64, 0x1

    goto :goto_3

    .line 930
    .end local v28    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1f
    const-string v4, "pref_registered_pkg_names"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v62

    .line 932
    .local v62, "sp":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v57

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 934
    .local v19, "appId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v64, :cond_1

    .line 936
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    .line 937
    .local v29, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 940
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 941
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)V

    .line 943
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 946
    if-eqz v19, :cond_1

    .line 948
    :try_start_1
    move-object/from16 v0, v57

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushHelper;->contructAppAbsentMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uninstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg sent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 950
    :catch_1
    move-exception v28

    .line 951
    .local v28, "e":Lcom/xiaomi/smack/XMPPException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to send Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 952
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 957
    .end local v19    # "appId":Ljava/lang/String;
    .end local v28    # "e":Lcom/xiaomi/smack/XMPPException;
    .end local v29    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v57    # "pkgName":Ljava/lang/String;
    .end local v62    # "sp":Landroid/content/SharedPreferences;
    .end local v64    # "uninstalled":Z
    :cond_21
    const-string v4, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 958
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 959
    .local v56, "pkg":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_ID:Ljava/lang/String;

    const/4 v5, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    .line 960
    .local v49, "notifyId":I
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 961
    const/4 v4, -0x1

    move/from16 v0, v49

    if-lt v0, v4, :cond_22

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 964
    :cond_22
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TITLE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 965
    .local v63, "title":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_DESCRIPTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 966
    .local v27, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v63

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 969
    .end local v27    # "description":Ljava/lang/String;
    .end local v49    # "notifyId":I
    .end local v56    # "pkg":Ljava/lang/String;
    .end local v63    # "title":Ljava/lang/String;
    :cond_23
    const-string v4, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 970
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 971
    .restart local v56    # "pkg":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SIG:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 972
    .local v61, "sig":Ljava/lang/String;
    const/16 v50, 0x0

    .line 973
    .local v50, "notifyType":I
    const/16 v24, 0x0

    .line 974
    .local v24, "clearType":Z
    const/16 v23, 0x0

    .line 975
    .local v23, "calSig":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TYPE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 976
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TYPE:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v50

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 982
    :goto_4
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, v61

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 983
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    :cond_25
    invoke-static/range {v56 .. v56}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 980
    const/16 v24, 0x1

    goto :goto_4

    .line 985
    :cond_26
    if-eqz v24, :cond_27

    .line 986
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 988
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setLocalNotifyType(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 991
    .end local v23    # "calSig":Ljava/lang/String;
    .end local v24    # "clearType":Z
    .end local v50    # "notifyType":I
    .end local v56    # "pkg":Ljava/lang/String;
    .end local v61    # "sig":Ljava/lang/String;
    :cond_28
    const-string v4, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 993
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 994
    .restart local v15    # "packageName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 995
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->addDisablePushPkg(Ljava/lang/String;)V

    .line 997
    :cond_29
    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    if-eqz v4, :cond_2a

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1001
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    .line 1004
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/JobScheduler;->removeAllJobs()V

    .line 1006
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$10;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/xiaomi/push/service/XMPushService$10;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1021
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushClientsManager;->removeAllClientChangeListeners()V

    .line 1022
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 1023
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushClientsManager;->removeActiveClients()V

    .line 1024
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/ServiceConfig;->clear()V

    .line 1025
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    goto/16 :goto_0

    .line 1027
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_2b
    const-string v4, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    .line 1028
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1029
    :cond_2c
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1030
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 1031
    .restart local v14    # "payload":[B
    const-string v4, "mipush_app_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1032
    .restart local v19    # "appId":Ljava/lang/String;
    const-string v4, "mipush_app_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1033
    .local v20, "appToken":Ljava/lang/String;
    const-string v4, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1034
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->addDisablePushPkgCache(Ljava/lang/String;)V

    .line 1036
    :cond_2d
    const-string v4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1037
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->removeDisablePushPkg(Ljava/lang/String;)V

    .line 1038
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->removeDisablePushPkgCache(Ljava/lang/String;)V

    .line 1040
    :cond_2e
    if-nez v14, :cond_2f

    .line 1041
    const v4, 0x42c1d83

    const-string v5, "null payload"

    move-object/from16 v0, p0

    invoke-static {v0, v15, v14, v4, v5}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_0

    .line 1044
    :cond_2f
    invoke-static {v15, v14}, Lcom/xiaomi/push/service/MIPushClientManager;->addPendingMessages(Ljava/lang/String;[B)V

    .line 1045
    new-instance v16, Lcom/xiaomi/push/service/MIPushAppRegisterJob;

    move-object/from16 v17, p0

    move-object/from16 v18, v15

    move-object/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Lcom/xiaomi/push/service/MIPushAppRegisterJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1046
    const-string v4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    if-nez v4, :cond_1

    .line 1048
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    .line 1049
    new-instance v36, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v36, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1054
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v20    # "appToken":Ljava/lang/String;
    .end local v36    # "filter":Landroid/content/IntentFilter;
    :cond_30
    const-string v4, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1055
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1056
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 1057
    .restart local v14    # "payload":[B
    new-instance v44, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct/range {v44 .. v44}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 1059
    .local v44, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :try_start_2
    move-object/from16 v0, v44

    invoke-static {v0, v14}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1060
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/tinyData/TinyDataManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/tinyData/TinyDataManager;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v15}, Lcom/xiaomi/tinyData/TinyDataManager;->upload(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1061
    :catch_2
    move-exception v28

    .line 1062
    .local v28, "e":Lorg/apache/thrift/TException;
    invoke-static/range {v28 .. v28}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1064
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v28    # "e":Lorg/apache/thrift/TException;
    .end local v44    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :cond_31
    const-string v4, "com.xiaomi.push.timer"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1065
    const-string v4, "Service called on timer"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1066
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/xiaomi/push/service/timers/Alarm;->registerPing(Z)V

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->shouldCheckAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1068
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    goto/16 :goto_0

    .line 1070
    :cond_32
    const-string v4, "com.xiaomi.push.check_alive"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1071
    const-string v4, "Service called on check alive."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1072
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->shouldCheckAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1073
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    goto/16 :goto_0

    .line 1075
    :cond_33
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->networkChanged()V

    goto/16 :goto_0

    .line 1077
    :cond_34
    const-string v4, "action_cr_config"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1078
    const-string v4, "action_cr_event_switch"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1080
    .local v31, "eventSwitch":Z
    const-string v4, "action_cr_event_frequency"

    const-wide/32 v10, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1082
    .local v32, "eventFrequency":J
    const-string v4, "action_cr_perf_switch"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v54

    .line 1084
    .local v54, "perfSwitch":Z
    const-string v4, "action_cr_perf_frequency"

    const-wide/32 v10, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v52

    .line 1086
    .local v52, "perfFrequency":J
    const-string v4, "action_cr_event_en"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1088
    .local v30, "eventEncrypted":Z
    const-string v4, "action_cr_max_file_size"

    const-wide/32 v10, 0x100000

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    .line 1090
    .local v34, "fileLength":J
    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1091
    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1092
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1093
    move-wide/from16 v0, v52

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/clientreport/data/Config$Builder;->setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1095
    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1096
    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setMaxFileLength(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v25

    .line 1098
    .local v25, "config":Lcom/xiaomi/clientreport/data/Config;
    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v52, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_1

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->initEventPerfLogic(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V

    goto/16 :goto_0

    .line 1102
    .end local v25    # "config":Lcom/xiaomi/clientreport/data/Config;
    .end local v30    # "eventEncrypted":Z
    .end local v31    # "eventSwitch":Z
    .end local v32    # "eventFrequency":J
    .end local v34    # "fileLength":J
    .end local v52    # "perfFrequency":J
    .end local v54    # "perfSwitch":Z
    :cond_35
    const-string v4, "action_help_ping"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1104
    const-string v4, "extra_help_ping_switch"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v55

    .line 1105
    .local v55, "pingSwitch":Z
    const-string v4, "extra_help_ping_frequency"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 1106
    .local v37, "frequency":I
    if-ltz v37, :cond_36

    const/16 v4, 0x1e

    move/from16 v0, v37

    if-ge v0, v4, :cond_36

    .line 1107
    const-string v4, "aw_ping: frquency need > 30s."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 1108
    const/16 v37, 0x1e

    .line 1110
    :cond_36
    if-gez v37, :cond_37

    .line 1111
    const/16 v55, 0x0

    .line 1114
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aw_ping: receive a aw_ping message. switch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frequency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1115
    if-eqz v55, :cond_1

    if-lez v37, :cond_1

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->doAWPingCMD(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1118
    .end local v37    # "frequency":I
    .end local v55    # "pingSwitch":Z
    :cond_38
    const-string v4, "action_aw_app_logic"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1119
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->doAWLogic(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private isExtremePowerSaveMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1522
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1525
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1523
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1525
    goto :goto_0
.end method

.method private isPushEnabled()Z
    .locals 2

    .prologue
    .line 1542
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/MIPushAppInfo;->isPushDisabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1542
    :goto_0
    return v0

    .line 1543
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private networkChanged()V
    .locals 7

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "currentNetworkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 525
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 530
    :goto_0
    if-eqz v1, :cond_1

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], state: "

    .line 533
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network changed,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 538
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 567
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_1
    return-void

    .line 526
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 542
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "network changed, no active network"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 545
    :cond_2
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 546
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/StatsContext;->statsChannelIfNeed()V

    .line 549
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->notifyNetworkChanage(Landroid/content/Context;)V

    .line 551
    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v4}, Lcom/xiaomi/slim/SlimConnection;->clearCachedStatus()V

    .line 552
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 553
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 554
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->shouldCheckAlive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 555
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    .line 558
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 559
    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/JobScheduler;->removeJobs(I)V

    .line 560
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ConnectJob;

    invoke-direct {v4, p0}, Lcom/xiaomi/push/service/XMPushService$ConnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 562
    :cond_5
    invoke-static {p0}, Lcom/xiaomi/push/log/LogUploader;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/log/LogUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/log/LogUploader;->checkUpload()V

    .line 566
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->updateAlarmTimer()V

    goto :goto_1

    .line 564
    :cond_6
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_2
.end method

.method private postOnCreate()V
    .locals 7

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/AppRegionStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/AppRegionStorage;

    move-result-object v3

    .line 360
    .local v3, "store":Lcom/xiaomi/push/service/AppRegionStorage;
    invoke-virtual {v3}, Lcom/xiaomi/push/service/AppRegionStorage;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "appRegion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->ensureRegionAvaible()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 367
    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    .line 368
    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/AppRegionStorage;->setRegion(Ljava/lang/String;)V

    .line 370
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    const-string v4, "app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    .line 381
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$6;

    const/16 v4, 0xb

    invoke-direct {v2, p0, v4}, Lcom/xiaomi/push/service/XMPushService$6;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 396
    .local v2, "job":Lcom/xiaomi/push/service/XMPushService$Job;
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 398
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$7;

    invoke-direct {v4, p0, v2}, Lcom/xiaomi/push/service/XMPushService$7;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/XMPushService$Job;)V

    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushAccountUtils;->setAccountChangeListener(Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;)V

    .line 407
    .end local v2    # "job":Lcom/xiaomi/push/service/XMPushService$Job;
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/push/service/GeoFenceDBCleaner;

    invoke-direct {v5, p0}, Lcom/xiaomi/push/service/GeoFenceDBCleaner;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const v6, 0x15180

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z

    .line 412
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isBootCompleted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 413
    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    invoke-virtual {v4, p0}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyServiceStarted(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_3
    :goto_1
    return-void

    .line 372
    :cond_4
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 373
    const-string v4, "fr.app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_5
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->Russia:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 375
    const-string v4, "ru.app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_6
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->China:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;
    .locals 6
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "session"    # Ljava/lang/String;

    .prologue
    .line 1268
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    .line 1269
    .local v3, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    invoke-virtual {v3, p2}, Lcom/xiaomi/push/service/PushClientsManager;->queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1270
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open channel should be called first before sending a packet, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1297
    :goto_0
    const/4 p1, 0x0

    .end local p1    # "packet":Lcom/xiaomi/smack/packet/Packet;
    :cond_0
    return-object p1

    .line 1275
    .restart local p1    # "packet":Lcom/xiaomi/smack/packet/Packet;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaomi/smack/packet/Packet;->setPackageName(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "chid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1279
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1280
    .restart local v0    # "chid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/Packet;->setChannelId(Ljava/lang/String;)V

    .line 1282
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 1283
    .local v2, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop a packet as the channel is not connected, chid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v4, v5, :cond_5

    .line 1289
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop a packet as the channel is not opened, chid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1291
    :cond_5
    iget-object v4, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid session. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMessage(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 654
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 655
    .local v13, "pkgName":Ljava/lang/String;
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 656
    .local v16, "session":Ljava/lang/String;
    const/4 v4, 0x0

    .line 658
    .local v4, "blob":Lcom/xiaomi/slim/Blob;
    const-string v17, "ext_packet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 659
    .local v10, "msgBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v12

    .line 661
    .local v12, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    if-eqz v10, :cond_3

    .line 662
    new-instance v9, Lcom/xiaomi/smack/packet/Message;

    invoke-direct {v9, v10}, Lcom/xiaomi/smack/packet/Message;-><init>(Landroid/os/Bundle;)V

    .line 663
    .local v9, "msg":Lcom/xiaomi/smack/packet/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v13, v1}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v11

    check-cast v11, Lcom/xiaomi/smack/packet/Message;

    .line 665
    .local v11, "packet":Lcom/xiaomi/smack/packet/Message;
    if-nez v11, :cond_1

    .line 696
    .end local v9    # "msg":Lcom/xiaomi/smack/packet/Message;
    .end local v11    # "packet":Lcom/xiaomi/smack/packet/Message;
    :cond_0
    :goto_0
    return-void

    .line 668
    .restart local v9    # "msg":Lcom/xiaomi/smack/packet/Message;
    .restart local v11    # "packet":Lcom/xiaomi/smack/packet/Message;
    :cond_1
    invoke-virtual {v11}, Lcom/xiaomi/smack/packet/Message;->getChannelId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Lcom/xiaomi/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v8

    .line 669
    .local v8, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v0, v8, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v4

    .line 693
    .end local v8    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v9    # "msg":Lcom/xiaomi/smack/packet/Message;
    .end local v11    # "packet":Lcom/xiaomi/smack/packet/Message;
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 694
    new-instance v17, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 671
    :cond_3
    const-string v17, "ext_raw_packet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 672
    .local v14, "rawMsg":[B
    if-eqz v14, :cond_2

    .line 673
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 674
    .local v6, "from":J
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_RES:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 675
    .local v15, "res":Ljava/lang/String;
    const-string v17, "ext_chid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, "chid":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v5, v0}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v8

    .line 678
    .restart local v8    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v8, :cond_2

    .line 679
    new-instance v4, Lcom/xiaomi/slim/Blob;

    .end local v4    # "blob":Lcom/xiaomi/slim/Blob;
    invoke-direct {v4}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 681
    .restart local v4    # "blob":Lcom/xiaomi/slim/Blob;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_2
    const-string v17, "SECMSG"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string/jumbo v17, "xiaomi.com"

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v7, v0, v15}, Lcom/xiaomi/slim/Blob;->setFrom(JLjava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v17, "ext_pkt_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/xiaomi/slim/Blob;->setPacketID(Ljava/lang/String;)V

    .line 688
    iget-object v0, v8, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 682
    :catch_0
    move-exception v17

    goto :goto_2
.end method

.method private sendMessages(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 699
    sget-object v10, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, "pkgName":Ljava/lang/String;
    sget-object v10, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 701
    .local v9, "session":Ljava/lang/String;
    const-string v10, "ext_packets"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 702
    .local v6, "msgParcelable":[Landroid/os/Parcelable;
    array-length v10, v6

    new-array v4, v10, [Lcom/xiaomi/smack/packet/Message;

    .line 703
    .local v4, "messages":[Lcom/xiaomi/smack/packet/Message;
    const-string v10, "ext_encrypt"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 704
    .local v1, "encrypt":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v6

    if-ge v2, v10, :cond_1

    .line 705
    new-instance v11, Lcom/xiaomi/smack/packet/Message;

    aget-object v10, v6, v2

    check-cast v10, Landroid/os/Bundle;

    invoke-direct {v11, v10}, Lcom/xiaomi/smack/packet/Message;-><init>(Landroid/os/Bundle;)V

    aput-object v11, v4, v2

    .line 706
    aget-object v10, v4, v2

    invoke-direct {p0, v10, v8, v9}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/smack/packet/Message;

    aput-object v10, v4, v2

    .line 707
    aget-object v10, v4, v2

    if-nez v10, :cond_0

    .line 721
    :goto_1
    return-void

    .line 704
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v7

    .line 714
    .local v7, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    array-length v10, v4

    new-array v0, v10, [Lcom/xiaomi/slim/Blob;

    .line 715
    .local v0, "blobs":[Lcom/xiaomi/slim/Blob;
    const/4 v2, 0x0

    :goto_2
    array-length v10, v4

    if-ge v2, v10, :cond_2

    .line 716
    aget-object v5, v4, v2

    .line 717
    .local v5, "msg":Lcom/xiaomi/smack/packet/Message;
    invoke-virtual {v5}, Lcom/xiaomi/smack/packet/Message;->getChannelId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/xiaomi/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v3

    .line 718
    .local v3, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v10, v3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v10

    aput-object v10, v0, v2

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 720
    .end local v3    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v5    # "msg":Lcom/xiaomi/smack/packet/Message;
    :cond_2
    new-instance v10, Lcom/xiaomi/push/service/BatchSendMessageJob;

    invoke-direct {v10, p0, v0}, Lcom/xiaomi/push/service/BatchSendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/slim/Blob;)V

    invoke-direct {p0, v10}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_1
.end method

.method private shouldCheckAlive()Z
    .locals 4

    .prologue
    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isConnected(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldRebind(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1301
    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1302
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v0

    .line 1303
    .local v0, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    const/4 v1, 0x0

    .line 1304
    .local v1, "needRebind":Z
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1305
    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1306
    .local v3, "session":Ljava/lang/String;
    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1307
    .local v2, "security":Ljava/lang/String;
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1308
    const/4 v1, 0x1

    .line 1309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session changed. old session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " chid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1311
    :cond_0
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "security changed. chid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sechash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1313
    const/4 v1, 0x1

    .line 1316
    .end local v2    # "security":Ljava/lang/String;
    .end local v3    # "session":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private updateAlarmTimer()V
    .locals 1

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1568
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/push/service/timers/Alarm;->registerPing(Z)V

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    goto :goto_0
.end method

.method private updateGeoFenceState(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "geoId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 488
    const-string v1, "Leave"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enter"

    .line 489
    invoke-static {p3}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaomi/push/service/GeoFenceDao;->findGeoStatueByGeoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    :goto_0
    return v0

    .line 492
    :cond_0
    invoke-static {p3}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/xiaomi/push/service/GeoFenceDao;->updateGeoStatueByGeoid(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update geofence statue failed geo_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updatePushClient(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 5
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1320
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1322
    .local v2, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v0

    .line 1323
    .local v0, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .end local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1328
    .restart local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_0
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    .line 1329
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    .line 1330
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    .line 1331
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    .line 1332
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    .line 1333
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    .line 1334
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->kick:Z

    .line 1335
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    .line 1336
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    .line 1337
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    .line 1338
    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    .line 1340
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 1341
    .local v1, "peer":Landroid/os/Messenger;
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->watch(Landroid/os/Messenger;)V

    .line 1343
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->context:Landroid/content/Context;

    .line 1345
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/PushClientsManager;->addActiveClient(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 1346
    return-object v0
.end method


# virtual methods
.method public addPingCallBack(Lcom/xiaomi/push/service/XMPushService$PingCallBack;)V
    .locals 2
    .param p1, "pingCallBack"    # Lcom/xiaomi/push/service/XMPushService$PingCallBack;

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    monitor-exit v1

    .line 2175
    return-void

    .line 2174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public batchSendPacket([Lcom/xiaomi/slim/Blob;)V
    .locals 2
    .param p1, "blobs"    # [Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/Connection;->batchSend([Lcom/xiaomi/slim/Blob;)V

    .line 1469
    return-void

    .line 1467
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "notifyType"    # I
    .param p4, "reasonMsg"    # Ljava/lang/String;
    .param p5, "kickType"    # Ljava/lang/String;

    .prologue
    .line 1350
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 1352
    .local v2, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v2, :cond_0

    .line 1353
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$UnbindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1355
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    return-void
.end method

.method public connectionClosed(Lcom/xiaomi/smack/Connection;ILjava/lang/Exception;)V
    .locals 1
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;
    .param p2, "reason"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2067
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/stats/StatsContext;->connectionClosed(Lcom/xiaomi/smack/Connection;ILjava/lang/Exception;)V

    .line 2068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 2069
    return-void
.end method

.method public connectionStarted(Lcom/xiaomi/smack/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 2042
    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 2043
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stats/StatsContext;->connectionStarted(Lcom/xiaomi/smack/Connection;)V

    .line 2044
    return-void
.end method

.method public createClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;
    .locals 1

    .prologue
    .line 1630
    new-instance v0, Lcom/xiaomi/push/service/ClientEventDispatcher;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ClientEventDispatcher;-><init>()V

    return-object v0
.end method

.method public disconnect(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smack/Connection;->disconnect(ILjava/lang/Exception;)V

    .line 1511
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 1514
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 1515
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 1517
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 1518
    return-void

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 1508
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;

    .prologue
    .line 1394
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 1395
    return-void
.end method

.method public executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;
    .param p2, "delay"    # J

    .prologue
    .line 1399
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/JobScheduler;->executeJobDelayed(Lcom/xiaomi/push/service/JobScheduler$Job;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :goto_0
    return-void

    .line 1400
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    return-object v0
.end method

.method public getCurrentConnection()Lcom/xiaomi/smack/Connection;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    return-object v0
.end method

.method public hasJob(I)Z
    .locals 1
    .param p1, "jobType"    # I

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler;->hasJob(I)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPushDisabled()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1553
    :try_start_0
    const-string v6, "miui.os.Build"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1554
    .local v0, "cc":Ljava/lang/Class;
    const-string v6, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1555
    .local v1, "cmccField":Ljava/lang/reflect/Field;
    const-string v6, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1556
    .local v3, "cuccField":Ljava/lang/reflect/Field;
    const-string v6, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1557
    .local v2, "ctccFiled":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 1559
    .end local v0    # "cc":Ljava/lang/Class;
    .end local v1    # "cmccField":Ljava/lang/reflect/Field;
    .end local v2    # "ctccFiled":Ljava/lang/reflect/Field;
    .end local v3    # "cuccField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    return v5

    .line 1558
    :catch_0
    move-exception v4

    .line 1559
    .local v4, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 184
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->initialize(Landroid/content/Context;)V

    .line 186
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v6

    .line 187
    .local v6, "account":Lcom/xiaomi/push/service/MIPushAccount;
    if-eqz v6, :cond_0

    .line 188
    iget v0, v6, Lcom/xiaomi/push/service/MIPushAccount;->envType:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->setEnvType(I)V

    .line 191
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMPushService$2;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    .line 223
    invoke-static {p0}, Lcom/xiaomi/push/service/PushHostManagerFactory;->init(Lcom/xiaomi/push/service/XMPushService;)V

    .line 226
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$3;

    const/16 v3, 0x1466

    const-string/jumbo v4, "xiaomi.com"

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$3;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    .line 240
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 242
    new-instance v0, Lcom/xiaomi/slim/SlimConnection;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/slim/SlimConnection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    .line 244
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->createClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    .line 246
    invoke-static {p0}, Lcom/xiaomi/push/service/timers/Alarm;->initialize(Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v0, p0}, Lcom/xiaomi/slim/SlimConnection;->addConnectionListener(Lcom/xiaomi/smack/ConnectionListener;)V

    .line 250
    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketSync:Lcom/xiaomi/push/service/PacketSync;

    .line 252
    new-instance v0, Lcom/xiaomi/push/service/ReconnectionManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ReconnectionManager;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

    .line 254
    new-instance v7, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;

    invoke-direct {v7}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;-><init>()V

    .line 255
    .local v7, "commonProvider":Lcom/xiaomi/push/service/CommonPacketExtensionProvider;
    invoke-virtual {v7}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;->register()V

    .line 257
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/stats/StatsHandler;->init(Lcom/xiaomi/push/service/XMPushService;)V

    .line 259
    new-instance v0, Lcom/xiaomi/push/service/JobScheduler;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/JobScheduler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    .line 261
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v10

    .line 262
    .local v10, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    invoke-virtual {v10}, Lcom/xiaomi/push/service/PushClientsManager;->removeAllClientChangeListeners()V

    .line 263
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$4;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v10, v0}, Lcom/xiaomi/push/service/PushClientsManager;->addClientChangeListener(Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;)V

    .line 276
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->canOpenForegroundService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->enableForegroundService()V

    .line 280
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/tinyData/TinyDataManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/tinyData/TinyDataManager;

    move-result-object v11

    .line 281
    .local v11, "tinyDataManager":Lcom/xiaomi/tinyData/TinyDataManager;
    new-instance v0, Lcom/xiaomi/push/service/LongConnUploader;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/LongConnUploader;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const-string v1, "UPLOADER_PUSH_CHANNEL"

    invoke-virtual {v11, v0, v1}, Lcom/xiaomi/tinyData/TinyDataManager;->addUploader(Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->addPingCallBack(Lcom/xiaomi/push/service/XMPushService$PingCallBack;)V

    .line 285
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$InitJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$InitJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 287
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    .line 289
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 290
    .local v9, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    .end local v9    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string v0, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 295
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_3

    .line 296
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/XMPushService$5;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPushService created pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaomi/push/service/XMPushService;->PID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 322
    return-void

    .line 313
    .restart local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register observer err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    if-eqz v1, :cond_0

    .line 1411
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1414
    :cond_0
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1417
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/JobScheduler;->removeAllJobs()V

    .line 1425
    new-instance v1, Lcom/xiaomi/push/service/XMPushService$12;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/XMPushService$12;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1440
    new-instance v1, Lcom/xiaomi/push/service/XMPushService$KillJob;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMPushService$KillJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1443
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/PushClientsManager;->removeAllClientChangeListeners()V

    .line 1444
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 1445
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/PushClientsManager;->removeActiveClients()V

    .line 1447
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v1, p0}, Lcom/xiaomi/slim/SlimConnection;->removeConnectionListener(Lcom/xiaomi/smack/ConnectionListener;)V

    .line 1448
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/ServiceConfig;->clear()V

    .line 1449
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    .line 1450
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->clearPingCallbacks()V

    .line 1451
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1452
    const-string v1, "Service destroyed"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1453
    return-void

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregister observer err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onPong()V
    .locals 4

    .prologue
    .line 2165
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2166
    .local v1, "pingCallBacksDump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/XMPushService$PingCallBack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/XMPushService$PingCallBack;

    .line 2167
    .local v0, "callBack":Lcom/xiaomi/push/service/XMPushService$PingCallBack;
    invoke-interface {v0}, Lcom/xiaomi/push/service/XMPushService$PingCallBack;->pingFollowUpAction()V

    goto :goto_0

    .line 2169
    .end local v0    # "callBack":Lcom/xiaomi/push/service/XMPushService$PingCallBack;
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 621
    if-nez p1, :cond_2

    .line 622
    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 626
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.push.check_alive"

    .line 628
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/JobScheduler;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 634
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    .line 646
    :cond_1
    :goto_1
    return-void

    .line 624
    :cond_2
    const-string v0, "onStart() with intent.Action = %s, chid = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_3
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$IntentJob;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$IntentJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_1

    .line 638
    :cond_4
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$IntentJob;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$IntentJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1376
    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    .line 1380
    sget v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return v0
.end method

.method public reconnectionFailed(Lcom/xiaomi/smack/Connection;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 2085
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stats/StatsContext;->reconnectionFailed(Lcom/xiaomi/smack/Connection;Ljava/lang/Exception;)V

    .line 2086
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->broadcastNetworkAvailable(Z)V

    .line 2087
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 2088
    return-void
.end method

.method public reconnectionSuccessful(Lcom/xiaomi/smack/Connection;)V
    .locals 5
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 2073
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaomi/stats/StatsContext;->reconnectionSuccessful(Lcom/xiaomi/smack/Connection;)V

    .line 2074
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->broadcastNetworkAvailable(Z)V

    .line 2075
    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/ReconnectionManager;->onConnectSucceeded()V

    .line 2076
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClients()Ljava/util/ArrayList;

    move-result-object v1

    .line 2077
    .local v1, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 2078
    .local v0, "client":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$BindJob;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 2079
    .local v2, "job":Lcom/xiaomi/push/service/XMPushService$BindJob;
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 2081
    .end local v0    # "client":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v2    # "job":Lcom/xiaomi/push/service/XMPushService$BindJob;
    :cond_0
    return-void
.end method

.method public registerForMiPushApp([BLjava/lang/String;)V
    .locals 10
    .param p1, "payload"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const v9, 0x42c1d83

    .line 1230
    if-nez p1, :cond_0

    .line 1231
    const-string v0, "null payload"

    invoke-static {p0, p2, p1, v9, v0}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 1233
    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1265
    :goto_0
    return-void

    .line 1235
    :cond_0
    new-instance v6, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 1237
    .local v6, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {v6, p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1238
    iget-object v0, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v1, :cond_1

    .line 1240
    new-instance v8, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1243
    .local v8, "registerPacket":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    :try_start_1
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPushAction()[B

    move-result-object v0

    .line 1242
    invoke-static {v8, v0}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1245
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/MIPushClientManager;->registerApp(Ljava/lang/String;[B)V

    .line 1246
    new-instance v0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1247
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 1248
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/MIPushAppRegisterJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1246
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1249
    :catch_0
    move-exception v7

    .line 1250
    .local v7, "e":Lorg/apache/thrift/TException;
    :try_start_2
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1251
    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1259
    .end local v7    # "e":Lorg/apache/thrift/TException;
    .end local v8    # "registerPacket":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    :catch_1
    move-exception v7

    .line 1260
    .restart local v7    # "e":Lorg/apache/thrift/TException;
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1261
    const-string v0, " data container error."

    invoke-static {p0, p2, p1, v9, v0}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 1255
    .end local v7    # "e":Lorg/apache/thrift/TException;
    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 1257
    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public removeJobs(I)V
    .locals 1
    .param p1, "jobType"    # I

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler;->removeJobs(I)V

    .line 2026
    return-void
.end method

.method public removeJobs(Lcom/xiaomi/push/service/XMPushService$Job;)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    iget v1, p1, Lcom/xiaomi/push/service/XMPushService$Job;->type:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/JobScheduler;->removeJobs(ILcom/xiaomi/push/service/JobScheduler$Job;)V

    .line 2034
    return-void
.end method

.method public scheduleConnect(Z)V
    .locals 1
    .param p1, "rightNow"    # Z

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/ReconnectionManager;->tryReconnect(Z)V

    .line 1496
    return-void
.end method

.method public scheduleRebindChannel(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    .line 1500
    invoke-virtual {p1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getNextRetryInterval()J

    move-result-wide v0

    .line 1501
    .local v0, "interval":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1502
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$BindJob;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 1504
    .end local v0    # "interval":J
    :cond_0
    return-void
.end method

.method sendMessage(Ljava/lang/String;[BZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .param p3, "isCache"    # Z

    .prologue
    .line 1191
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1193
    .local v1, "loginInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    if-eqz p3, :cond_0

    .line 1195
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/MIPushClientManager;->addPendingMessages(Ljava/lang/String;[B)V

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1201
    .local v0, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v2, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, v3, :cond_2

    .line 1202
    if-eqz p3, :cond_0

    .line 1203
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/MIPushClientManager;->addPendingMessages(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1208
    :cond_2
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$11;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/xiaomi/push/service/XMPushService$11;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0
.end method

.method public sendPacket(Lcom/xiaomi/slim/Blob;)V
    .locals 2
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/Connection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 1461
    return-void

    .line 1459
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldReconnect()Z
    .locals 1

    .prologue
    .line 1534
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->getActiveClientCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isExtremePowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1534
    :goto_0
    return v0

    .line 1538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
