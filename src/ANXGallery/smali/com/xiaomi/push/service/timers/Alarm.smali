.class public final Lcom/xiaomi/push/service/timers/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/timers/Alarm$IAlarm;
    }
.end annotation


# static fields
.field private static final XMSERVICE:Ljava/lang/String;

.field private static sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/xiaomi/push/service/XMJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/timers/Alarm;->XMSERVICE:Ljava/lang/String;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 30
    const-string v8, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 31
    new-instance v8, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;

    invoke-direct {v8, p0}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    .local v4, "hasXMService":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 36
    .local v5, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 38
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_3

    .line 39
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v7, v9, v8

    .line 40
    .local v7, "service":Landroid/content/pm/ServiceInfo;
    const-string v11, "android.permission.BIND_JOB_SERVICE"

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 41
    sget-object v11, Lcom/xiaomi/push/service/timers/Alarm;->XMSERVICE:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_4

    .line 42
    const/4 v4, 0x1

    .line 54
    :cond_2
    :goto_2
    const/4 v11, 0x1

    if-ne v4, v11, :cond_5

    .line 71
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "service":Landroid/content/pm/ServiceInfo;
    :cond_3
    :goto_3
    if-nez v4, :cond_7

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 72
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Should export service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/xiaomi/push/service/timers/Alarm;->XMSERVICE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in AndroidManifest.xml file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 45
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "service":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_1
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Lcom/xiaomi/push/service/timers/Alarm;->XMSERVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v11

    if-eqz v11, :cond_2

    .line 47
    const/4 v4, 0x1

    goto :goto_2

    .line 58
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_2
    sget-object v11, Lcom/xiaomi/push/service/timers/Alarm;->XMSERVICE:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "android.permission.BIND_JOB_SERVICE"

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 59
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v11

    if-eqz v11, :cond_6

    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_3

    .line 39
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 65
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "service":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check service err : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v4, 0x0

    .line 79
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_8

    if-nez v4, :cond_9

    .line 80
    :cond_8
    new-instance v8, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;

    invoke-direct {v8, p0}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    goto/16 :goto_0

    .line 84
    :cond_9
    :try_start_3
    const-string v8, "android.app.job.JobService"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, "clz":Ljava/lang/Class;
    const-string v8, "mBinder"

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 86
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 87
    new-instance v8, Lcom/xiaomi/push/service/timers/AlarmV21;

    invoke-direct {v8, p0}, Lcom/xiaomi/push/service/timers/AlarmV21;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 89
    .end local v1    # "clz":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v8, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;

    invoke-direct {v8, p0}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    goto/16 :goto_0

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "service":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method public static declared-synchronized isAlive()Z
    .locals 2

    .prologue
    .line 114
    const-class v1, Lcom/xiaomi/push/service/timers/Alarm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    invoke-interface {v0}, Lcom/xiaomi/push/service/timers/Alarm$IAlarm;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerPing(Z)V
    .locals 2
    .param p0, "firstPing"    # Z

    .prologue
    .line 98
    const-class v1, Lcom/xiaomi/push/service/timers/Alarm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "timer is not initialized"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit v1

    return-void

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/timers/Alarm$IAlarm;->registerPing(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stop()V
    .locals 2

    .prologue
    .line 107
    const-class v1, Lcom/xiaomi/push/service/timers/Alarm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    monitor-exit v1

    return-void

    .line 110
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/timers/Alarm;->sAlarmInstance:Lcom/xiaomi/push/service/timers/Alarm$IAlarm;

    invoke-interface {v0}, Lcom/xiaomi/push/service/timers/Alarm$IAlarm;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
