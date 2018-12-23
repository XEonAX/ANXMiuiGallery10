.class public Lcom/xiaomi/push/service/MIPushNotificationHelper;
.super Ljava/lang/Object;
.source "MIPushNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;,
        Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;,
        Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    }
.end annotation


# static fields
.field public static lastNotify:J

.field private static final notifyContainerCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    .line 154
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/MIPushNotificationHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static checkMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 1120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static clearLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1162
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1164
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1165
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1030
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1031
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notifyId"    # I

    .prologue
    .line 1041
    const-string v6, "notification"

    .line 1042
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1043
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0xa

    add-int v3, v6, p2

    .line 1044
    .local v3, "notificationId":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1045
    .local v4, "removeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;>;"
    if-ltz p2, :cond_0

    .line 1046
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1048
    :cond_0
    sget-object v7, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    monitor-enter v7

    .line 1049
    :try_start_0
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1050
    .local v0, "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 1051
    .local v1, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-eqz v1, :cond_1

    .line 1052
    invoke-static {v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v5

    .line 1053
    .local v5, "targetPkgName":Ljava/lang/String;
    if-ltz p2, :cond_2

    .line 1054
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1055
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    .end local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v5    # "targetPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1057
    .restart local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .restart local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .restart local v5    # "targetPkgName":Ljava/lang/String;
    :cond_2
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 1058
    :try_start_1
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1059
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1060
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1065
    .end local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v5    # "targetPkgName":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    if-eqz v6, :cond_4

    .line 1066
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 1067
    invoke-static {p0, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->uploadClearMessageData(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 1069
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1081
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1084
    :cond_0
    const-string v8, "notification"

    .line 1085
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1086
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1087
    .local v6, "removeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;>;"
    sget-object v9, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    monitor-enter v9

    .line 1088
    :try_start_0
    sget-object v8, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1089
    .local v0, "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 1090
    .local v1, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-eqz v1, :cond_1

    .line 1093
    invoke-static {v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    .line 1095
    .local v7, "targetPkgName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    .line 1096
    .local v4, "pushMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v4, :cond_1

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1099
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1100
    .local v5, "pushTitle":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "pushDescription":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1104
    invoke-static {p2, v5}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->checkMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p3, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->checkMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1105
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1106
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1115
    .end local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v3    # "pushDescription":Ljava/lang/String;
    .end local v4    # "pushMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .end local v5    # "pushTitle":Ljava/lang/String;
    .end local v7    # "targetPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1110
    :cond_2
    :try_start_1
    sget-object v8, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    if-eqz v8, :cond_3

    .line 1111
    sget-object v8, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 1113
    invoke-static {p0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->uploadClearMessageData(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 1115
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static determineTitleAndDespByDIP(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 434
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "desp":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    .line 438
    .local v1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 440
    .local v6, "widthPixels":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 441
    .local v2, "scale":F
    int-to-float v7, v6

    div-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 443
    .local v5, "width":I
    const/16 v7, 0x140

    if-gt v5, v7, :cond_2

    .line 444
    const-string/jumbo v7, "title_short"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 445
    .local v4, "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 446
    move-object v3, v4

    .line 448
    :cond_0
    const-string v7, "description_short"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmp":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 449
    .restart local v4    # "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 450
    move-object v0, v4

    .line 463
    .end local v2    # "scale":F
    .end local v4    # "tmp":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "widthPixels":I
    :cond_1
    :goto_0
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    return-object v7

    .line 452
    .restart local v2    # "scale":F
    .restart local v5    # "width":I
    .restart local v6    # "widthPixels":I
    :cond_2
    const/16 v7, 0x168

    if-le v5, v7, :cond_1

    .line 453
    const-string/jumbo v7, "title_long"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 454
    .restart local v4    # "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 455
    move-object v3, v4

    .line 457
    :cond_3
    const-string v7, "description_long"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmp":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 458
    .restart local v4    # "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 459
    move-object v0, v4

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 974
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 975
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 988
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v2, "height":I
    .local v3, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 978
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 979
    .restart local v3    # "width":I
    if-lez v3, :cond_1

    .line 980
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 981
    .restart local v2    # "height":I
    if-lez v2, :cond_2

    .line 983
    :goto_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 984
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 985
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 986
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    :cond_1
    move v3, v4

    .line 979
    goto :goto_1

    .restart local v2    # "height":I
    :cond_2
    move v2, v4

    .line 981
    goto :goto_2
.end method

.method private static enableCustomIconForMiui(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x1

    .line 992
    const-string v1, "extraNotification"

    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 993
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 994
    const-string v1, "setCustomizedIcon"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    :cond_0
    return-object p0
.end method

.method private static getBitmapFromId(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I

    .prologue
    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 932
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getClickedPendingIntent(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p3, "decryptedContent"    # [B

    .prologue
    const/4 v6, 0x1

    .line 394
    const/4 v0, -0x1

    .line 395
    .local v0, "eventMessageType":I
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    const/16 v0, 0x3e8

    .line 401
    :cond_0
    :goto_0
    const-string v2, ""

    .line 402
    .local v2, "msgId":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 403
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_3

    iget-object v3, p2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 407
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 409
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    :goto_1
    const-string v3, "messageId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v3, "eventMessageType"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    .line 397
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msgId":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const/16 v0, 0xbb8

    goto :goto_0

    .line 410
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "msgId":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.xmsf"

    const-string v5, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    const-string v3, "mipush_payload"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 415
    const-string v3, "mipush_notified"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 419
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    const-string v5, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 422
    const-string v3, "mipush_payload"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 423
    const-string v3, "mipush_notified"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 968
    .local v0, "r":Landroid/content/res/Resources;
    const-string v1, "drawable"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 970
    .end local v0    # "r":Landroid/content/res/Resources;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getIdForSmallIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "icon":I
    const-string v3, "mipush_notification"

    invoke-static {p0, p1, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 945
    .local v1, "largeIcon":I
    const-string v3, "mipush_small_notification"

    invoke-static {p0, p1, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 946
    .local v2, "smallIcon":I
    if-lez v1, :cond_1

    .line 947
    move v0, v1

    .line 953
    :goto_0
    if-nez v0, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 956
    :cond_0
    return v0

    .line 948
    :cond_1
    if-lez v2, :cond_2

    .line 949
    move v0, v2

    goto :goto_0

    .line 951
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method

.method public static getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1247
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    const-string v0, "E100002"

    .line 1259
    :goto_0
    return-object v0

    .line 1251
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    const-string v0, "E100000"

    goto :goto_0

    .line 1255
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    const-string v0, "E100001"

    goto :goto_0

    .line 1259
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method static getLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1156
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1158
    .local v0, "sp":Landroid/content/SharedPreferences;
    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getNotificationForCustomLayout(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Landroid/widget/RemoteViews;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B

    .prologue
    .line 847
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v18

    .line 848
    .local v18, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v19

    .line 849
    .local v19, "pkg":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v7

    .line 850
    .local v7, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 851
    const/16 v24, 0x0

    .line 926
    :cond_0
    :goto_0
    return-object v24

    .line 853
    :cond_1
    const-string v30, "layout_name"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 854
    .local v16, "layoutName":Ljava/lang/String;
    const-string v30, "layout_value"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 856
    .local v17, "layoutValue":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 857
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 859
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 860
    .local v20, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 862
    .local v4, "apkResources":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 867
    const-string v30, "layout"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 868
    .local v22, "resLayout":I
    if-nez v22, :cond_4

    .line 869
    const/16 v24, 0x0

    goto :goto_0

    .line 863
    .end local v22    # "resLayout":I
    :catch_0
    move-exception v6

    .line 864
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 865
    const/16 v24, 0x0

    goto :goto_0

    .line 872
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22    # "resLayout":I
    :cond_4
    new-instance v24, Landroid/widget/RemoteViews;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 874
    .local v24, "rv":Landroid/widget/RemoteViews;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 876
    .local v12, "json":Lorg/json/JSONObject;
    const-string/jumbo v30, "text"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 877
    const-string/jumbo v30, "text"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 878
    .local v14, "jsonText":Lorg/json/JSONObject;
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 879
    .local v10, "iterText":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 880
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 881
    .local v25, "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 882
    .local v29, "v":Ljava/lang/String;
    const-string v30, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 883
    .local v23, "resLet":I
    if-lez v23, :cond_5

    .line 884
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 922
    .end local v10    # "iterText":Ljava/util/Iterator;
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v14    # "jsonText":Lorg/json/JSONObject;
    .end local v23    # "resLet":I
    .end local v25    # "str":Ljava/lang/String;
    .end local v29    # "v":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 923
    .local v6, "e":Lorg/json/JSONException;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 924
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 889
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v12    # "json":Lorg/json/JSONObject;
    :cond_6
    :try_start_2
    const-string v30, "image"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 890
    const-string v30, "image"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 891
    .local v13, "jsonImage":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 892
    .local v9, "iterImage":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    .line 893
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 894
    .restart local v25    # "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 895
    .restart local v29    # "v":Ljava/lang/String;
    const-string v30, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 896
    .restart local v23    # "resLet":I
    const-string v30, "drawable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 897
    .local v21, "resImg":I
    if-lez v23, :cond_7

    .line 898
    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 903
    .end local v9    # "iterImage":Ljava/util/Iterator;
    .end local v13    # "jsonImage":Lorg/json/JSONObject;
    .end local v21    # "resImg":I
    .end local v23    # "resLet":I
    .end local v25    # "str":Ljava/lang/String;
    .end local v29    # "v":Ljava/lang/String;
    :cond_8
    const-string/jumbo v30, "time"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 904
    const-string/jumbo v30, "time"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 905
    .local v15, "jsonTime":Lorg/json/JSONObject;
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 906
    .local v11, "iterTime":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 907
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 908
    .restart local v25    # "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 909
    .restart local v29    # "v":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_a

    .line 910
    const-string/jumbo v29, "yy-MM-dd hh:mm"

    .line 912
    :cond_a
    const-string v30, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 913
    .restart local v23    # "resLet":I
    if-lez v23, :cond_9

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 915
    .local v26, "time":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 916
    .local v8, "format":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 917
    .local v5, "d":Ljava/util/Date;
    invoke-virtual {v8, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    .line 918
    .local v28, "txt":Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method private static getNotificationForLargeIcons(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    .locals 52
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B
    .param p3, "remoteView"    # Landroid/widget/RemoteViews;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v19, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;

    invoke-direct/range {v19 .. v19}, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;-><init>()V

    .line 481
    .local v19, "getNotificationResult":Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v29

    .line 482
    .local v29, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v43

    .line 483
    .local v43, "targetPackage":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v28

    .line 484
    .local v28, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v8, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->determineTitleAndDespByDIP(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;

    move-result-object v36

    .line 487
    .local v36, "ret":[Ljava/lang/String;
    const/16 v46, 0x0

    aget-object v46, v36, v46

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 488
    const/16 v46, 0x1

    aget-object v46, v36, v46

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 489
    if-eqz p3, :cond_16

    .line 490
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 495
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-static {v8, v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setNotificationStyleAction(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-wide/from16 v0, v46

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 498
    if-nez v28, :cond_17

    const/16 v37, 0x0

    .line 499
    .local v37, "showWhenStr":Ljava/lang/String;
    :goto_1
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_18

    .line 500
    sget v46, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v47, 0x18

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_1

    .line 502
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 507
    :cond_1
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 509
    const-string v46, "mipush_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 510
    .local v26, "largeIconIntIndex":I
    const-string v46, "mipush_small_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    .line 511
    .local v40, "smallIconIntIndex":I
    if-lez v26, :cond_19

    if-lez v40, :cond_19

    .line 512
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getBitmapFromId(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 513
    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 519
    :goto_3
    const/16 v38, 0x0

    .line 520
    .local v38, "smallIcon":Ljava/lang/Object;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v46

    if-eqz v46, :cond_2

    sget v46, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v47, 0x17

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_2

    .line 522
    if-nez v28, :cond_1a

    const/16 v39, 0x0

    .line 523
    .local v39, "smallIconBitmap":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v39, :cond_1c

    .line 524
    const-string v46, "android.graphics.drawable.Icon"

    const-string v47, "createWithBitmap"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v39, v48, v49

    invoke-static/range {v46 .. v48}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 525
    if-eqz v38, :cond_1b

    .line 526
    const-string v46, "setSmallIcon"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v38, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v38    # "smallIcon":Ljava/lang/Object;
    :goto_5
    if-nez v28, :cond_1e

    const/4 v12, 0x0

    .line 536
    .local v12, "color":Ljava/lang/String;
    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_2

    .line 538
    :try_start_0
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 539
    .local v13, "colorValue":I
    const-string v46, "setColor"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v12    # "color":Ljava/lang/String;
    .end local v13    # "colorValue":I
    .end local v39    # "smallIconBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_7
    if-nez v28, :cond_1f

    const/16 v21, 0x0

    .line 547
    .local v21, "iconUri":Ljava/lang/String;
    :goto_8
    if-eqz v28, :cond_20

    const-string v46, "__adiom"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_20

    const/4 v5, 0x1

    .line 548
    .local v5, "allowDynamicIconOnMiui":Z
    :goto_9
    if-nez v5, :cond_3

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v46

    if-nez v46, :cond_21

    :cond_3
    const/4 v4, 0x1

    .line 549
    .local v4, "allowDynamicIcon":Z
    :goto_a
    const/4 v15, 0x0

    .line 550
    .local v15, "customLargeIcon":Z
    if-eqz v21, :cond_5

    if-eqz v4, :cond_5

    .line 551
    const/4 v7, 0x0

    .line 552
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const-string v46, "http"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_22

    .line 553
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/NotificationIconHelper;->getIconFromUrl(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;

    move-result-object v35

    .line 554
    .local v35, "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    if-eqz v35, :cond_4

    .line 555
    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;

    .line 556
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->downloadSize:J

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->trafficSize:J

    .line 562
    .end local v35    # "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    :cond_4
    :goto_b
    if-eqz v7, :cond_5

    .line 563
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 564
    const/4 v15, 0x1

    .line 568
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    if-nez v28, :cond_23

    const/16 v25, 0x0

    .line 569
    .local v25, "largeIcon":Landroid/graphics/Bitmap;
    :goto_c
    if-eqz v25, :cond_6

    .line 570
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 573
    :cond_6
    if-eqz v28, :cond_8

    sget v46, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v47, 0x18

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_8

    .line 574
    const-string v46, "notification_group"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 575
    .local v20, "group":Ljava/lang/String;
    const-string v46, "notification_is_summary"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 576
    .local v24, "isSummaryStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 579
    .local v23, "isSummary":Z
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_7

    .line 580
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v20

    .line 581
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isXMS()Z

    move-result v46

    if-eqz v46, :cond_7

    .line 582
    invoke-virtual/range {v29 .. v29}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v33

    .line 584
    .local v33, "notifyId":I
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 588
    .end local v33    # "notifyId":I
    :cond_7
    const-string v46, "setGroup"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v20, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v46, "setGroupSummary"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v20    # "group":Ljava/lang/String;
    .end local v23    # "isSummary":Z
    .end local v24    # "isSummaryStr":Ljava/lang/String;
    :cond_8
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 597
    .local v16, "currentTime":J
    if-eqz v28, :cond_9

    const-string/jumbo v46, "ticker"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_9

    .line 598
    const-string/jumbo v46, "ticker"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 600
    :cond_9
    const/16 v34, -0x64

    .line 601
    .local v34, "notifyType":I
    const/16 v42, 0x0

    .line 602
    .local v42, "soundUri":Ljava/lang/String;
    const/4 v9, 0x0

    .line 603
    .local v9, "canSetSound":Z
    sget-wide v46, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    sub-long v46, v16, v46

    const-wide/16 v48, 0x2710

    cmp-long v46, v46, v48

    if-lez v46, :cond_b

    .line 604
    sput-wide v16, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    .line 606
    move-object/from16 v0, v29

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    move/from16 v34, v0

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_a

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v34

    .line 611
    :cond_a
    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 612
    if-eqz v28, :cond_b

    and-int/lit8 v46, v34, 0x1

    if-eqz v46, :cond_b

    .line 613
    const-string/jumbo v46, "sound_uri"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .end local v42    # "soundUri":Ljava/lang/String;
    check-cast v42, Ljava/lang/String;

    .line 614
    .restart local v42    # "soundUri":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_b

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "android.resource://"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_b

    .line 615
    const/4 v9, 0x1

    .line 616
    xor-int/lit8 v46, v34, 0x1

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 617
    invoke-static/range {v42 .. v42}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 623
    :cond_b
    if-eqz v28, :cond_13

    sget v46, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v47, 0x1a

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_13

    .line 625
    invoke-static/range {v28 .. v28}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTimeout(Ljava/util/Map;)I

    move-result v44

    .line 626
    .local v44, "timeout":I
    if-lez v44, :cond_c

    .line 627
    const-string v46, "setTimeoutAfter"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v44

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_c
    const-string v46, "channel_id"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 631
    .local v11, "channelId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v46

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v46, v0

    const/16 v47, 0x1a

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_12

    .line 632
    :cond_d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_e

    .line 633
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "mipush_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 635
    :cond_e
    const-string v46, "setChannelId"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v11, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 638
    .local v30, "name":Ljava/lang/CharSequence;
    const/16 v22, 0x3

    .line 639
    .local v22, "importance":I
    const-string v46, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/NotificationManager;

    .line 641
    .local v31, "nm":Landroid/app/NotificationManager;
    :try_start_1
    const-string v46, "getNotificationChannel"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v11, v47, v48

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .line 642
    .local v35, "result":Ljava/lang/Object;
    if-nez v35, :cond_12

    .line 643
    const-string v46, "android.app.NotificationChannel"

    invoke-static/range {v46 .. v46}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v46

    const/16 v47, 0x3

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-class v49, Ljava/lang/String;

    aput-object v49, v47, v48

    const/16 v48, 0x1

    const-class v49, Ljava/lang/CharSequence;

    aput-object v49, v47, v48

    const/16 v48, 0x2

    sget-object v49, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v49, v47, v48

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 644
    .local v14, "con":Ljava/lang/reflect/Constructor;
    const/16 v46, 0x3

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v11, v46, v47

    const/16 v47, 0x1

    aput-object v30, v46, v47

    const/16 v47, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 645
    .local v10, "channel":Ljava/lang/Object;
    const/16 v46, -0x64

    move/from16 v0, v34

    move/from16 v1, v46

    if-le v0, v1, :cond_11

    .line 646
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 647
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 648
    and-int/lit8 v41, v34, 0x1

    .line 649
    .local v41, "sound":I
    and-int/lit8 v45, v34, 0x2

    .line 650
    .local v45, "vibrate":I
    and-int/lit8 v27, v34, 0x4

    .line 651
    .local v27, "lights":I
    const/16 v46, 0x1

    move/from16 v0, v41

    move/from16 v1, v46

    if-eq v0, v1, :cond_f

    .line 652
    const-string v46, "setSound"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const/16 v49, 0x0

    aput-object v49, v47, v48

    const/16 v48, 0x1

    const/16 v49, 0x0

    aput-object v49, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_f
    if-eqz v9, :cond_10

    .line 655
    const-string v46, "setSound"

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v42, v47, v48

    const/16 v48, 0x1

    sget-object v49, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    aput-object v49, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_10
    const-string v47, "enableVibration"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const/16 v46, 0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_24

    const/16 v46, 0x1

    :goto_d
    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    aput-object v46, v48, v49

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v47, "enableLights"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const/16 v46, 0x4

    move/from16 v0, v27

    move/from16 v1, v46

    if-ne v0, v1, :cond_25

    const/16 v46, 0x1

    :goto_e
    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    aput-object v46, v48, v49

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .end local v27    # "lights":I
    .end local v41    # "sound":I
    .end local v45    # "vibrate":I
    :cond_11
    const-string v46, "createNotificationChannel"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v10, v47, v48

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 667
    .end local v10    # "channel":Ljava/lang/Object;
    .end local v14    # "con":Ljava/lang/reflect/Constructor;
    .end local v22    # "importance":I
    .end local v30    # "name":Ljava/lang/CharSequence;
    .end local v31    # "nm":Landroid/app/NotificationManager;
    .end local v35    # "result":Ljava/lang/Object;
    :cond_12
    :goto_f
    const-string v46, "background_color"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 668
    .restart local v12    # "color":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_13

    .line 670
    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 671
    .local v6, "argb":I
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 672
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 673
    const-string v46, "setColorized"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const/16 v49, 0x1

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 683
    .end local v6    # "argb":I
    .end local v11    # "channelId":Ljava/lang/String;
    .end local v12    # "color":Ljava/lang/String;
    .end local v44    # "timeout":I
    :cond_13
    :goto_10
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isXMS()Z

    move-result v46

    if-eqz v46, :cond_14

    const-string v46, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_14

    .line 684
    const-string v46, "miui.util.NotificationHelper"

    const-string v47, "setTargetPkg"

    const/16 v48, 0x3

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object p0, v48, v49

    const/16 v49, 0x1

    aput-object v8, v48, v49

    const/16 v49, 0x2

    .line 685
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v50

    aput-object v50, v48, v49

    .line 684
    invoke-static/range {v46 .. v48}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_14
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v32

    .line 689
    .local v32, "notification":Landroid/app/Notification;
    if-eqz v15, :cond_15

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v46

    if-eqz v46, :cond_15

    .line 690
    invoke-static/range {v32 .. v32}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->enableCustomIconForMiui(Landroid/app/Notification;)Landroid/app/Notification;

    .line 693
    :cond_15
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->notification:Landroid/app/Notification;

    .line 694
    return-object v19

    .line 491
    .end local v4    # "allowDynamicIcon":Z
    .end local v5    # "allowDynamicIconOnMiui":Z
    .end local v9    # "canSetSound":Z
    .end local v15    # "customLargeIcon":Z
    .end local v16    # "currentTime":J
    .end local v21    # "iconUri":Ljava/lang/String;
    .end local v25    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v26    # "largeIconIntIndex":I
    .end local v32    # "notification":Landroid/app/Notification;
    .end local v34    # "notifyType":I
    .end local v37    # "showWhenStr":Ljava/lang/String;
    .end local v40    # "smallIconIntIndex":I
    .end local v42    # "soundUri":Ljava/lang/String;
    :cond_16
    sget v46, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v47, 0x10

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_0

    if-eqz v28, :cond_0

    const-string v46, "notification_style_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 492
    const/16 v46, 0x1

    aget-object v46, v36, v46

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v46

    invoke-static {v0, v1, v8, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setNotificationStyle(Landroid/content/Context;Ljava/util/Map;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    goto/16 :goto_0

    .line 498
    :cond_17
    const-string v46, "notification_show_when"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    move-object/from16 v37, v46

    goto/16 :goto_1

    .line 505
    .restart local v37    # "showWhenStr":Ljava/lang/String;
    :cond_18
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 515
    .restart local v26    # "largeIconIntIndex":I
    .restart local v40    # "smallIconIntIndex":I
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIdForSmallIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v46

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 522
    .restart local v38    # "smallIcon":Ljava/lang/Object;
    :cond_1a
    const-string v46, "notification_small_icon_uri"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v39

    goto/16 :goto_4

    .line 528
    .restart local v39    # "smallIconBitmap":Landroid/graphics/Bitmap;
    :cond_1b
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "failed te get small icon with url:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v46, "notification_small_icon_uri"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 531
    :cond_1c
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "failed to get small icon url:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    if-nez v28, :cond_1d

    const/16 v46, 0x0

    :goto_11
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1d
    const-string v46, "notification_small_icon_uri"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    goto :goto_11

    .line 535
    .end local v38    # "smallIcon":Ljava/lang/Object;
    :cond_1e
    const-string v46, "notification_small_icon_color"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    move-object/from16 v12, v46

    goto/16 :goto_6

    .line 540
    .restart local v12    # "color":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 541
    .local v18, "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 546
    .end local v12    # "color":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v39    # "smallIconBitmap":Landroid/graphics/Bitmap;
    :cond_1f
    const-string v46, "__dynamic_icon_uri"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    move-object/from16 v21, v46

    goto/16 :goto_8

    .line 547
    .restart local v21    # "iconUri":Ljava/lang/String;
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 548
    .restart local v5    # "allowDynamicIconOnMiui":Z
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 559
    .restart local v4    # "allowDynamicIcon":Z
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "customLargeIcon":Z
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/NotificationIconHelper;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_b

    .line 568
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_23
    const-string v46, "notification_large_icon_uri"

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    goto/16 :goto_c

    .line 657
    .restart local v9    # "canSetSound":Z
    .restart local v10    # "channel":Ljava/lang/Object;
    .restart local v11    # "channelId":Ljava/lang/String;
    .restart local v14    # "con":Ljava/lang/reflect/Constructor;
    .restart local v16    # "currentTime":J
    .restart local v22    # "importance":I
    .restart local v25    # "largeIcon":Landroid/graphics/Bitmap;
    .restart local v27    # "lights":I
    .restart local v30    # "name":Ljava/lang/CharSequence;
    .restart local v31    # "nm":Landroid/app/NotificationManager;
    .restart local v34    # "notifyType":I
    .restart local v35    # "result":Ljava/lang/Object;
    .restart local v41    # "sound":I
    .restart local v42    # "soundUri":Ljava/lang/String;
    .restart local v44    # "timeout":I
    .restart local v45    # "vibrate":I
    :cond_24
    const/16 v46, 0x0

    goto/16 :goto_d

    .line 658
    :cond_25
    const/16 v46, 0x0

    goto/16 :goto_e

    .line 662
    .end local v10    # "channel":Ljava/lang/Object;
    .end local v14    # "con":Ljava/lang/reflect/Constructor;
    .end local v27    # "lights":I
    .end local v35    # "result":Ljava/lang/Object;
    .end local v41    # "sound":I
    .end local v45    # "vibrate":I
    :catch_1
    move-exception v18

    .line 663
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 674
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v22    # "importance":I
    .end local v30    # "name":Ljava/lang/CharSequence;
    .end local v31    # "nm":Landroid/app/NotificationManager;
    .restart local v12    # "color":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 675
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_10
.end method

.method private static getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "isSizeLimited"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1267
    const/4 v4, 0x0

    .line 1268
    .local v4, "futureResult":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/xiaomi/push/service/MIPushNotificationHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;

    invoke-direct {v6, p1, p0, p2}, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1270
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/Bitmap;>;"
    const-wide/16 v6, 0xb4

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    if-nez v4, :cond_0

    .line 1279
    :goto_0
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1282
    :cond_0
    return-object v4

    .line 1271
    :catch_0
    move-exception v2

    .line 1272
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1278
    if-nez v4, :cond_0

    goto :goto_0

    .line 1273
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1274
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1278
    if-nez v4, :cond_0

    goto :goto_0

    .line 1275
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 1276
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    if-nez v4, :cond_0

    goto :goto_0

    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v5

    if-nez v4, :cond_1

    .line 1279
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1278
    :cond_1
    throw v5
.end method

.method private static getPendingIntentFromExtra(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/content/Intent;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "place"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 728
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_1

    const-string v15, "notification_style_button_left_notify_effect"

    :goto_0
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 730
    .local v11, "typeId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 731
    const/4 v3, 0x0

    .line 796
    :cond_0
    :goto_1
    return-object v3

    .line 728
    .end local v11    # "typeId":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_2

    const-string v15, "notification_style_button_mid_notify_effect"

    goto :goto_0

    :cond_2
    const-string v15, "notification_style_button_right_notify_effect"

    goto :goto_0

    .line 733
    .restart local v11    # "typeId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 734
    .local v3, "intent":Landroid/content/Intent;
    sget-object v15, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_DEFAULT:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 736
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 783
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 784
    const/high16 v15, 0x10000000

    invoke-virtual {v3, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 786
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/high16 v16, 0x10000

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 788
    .local v9, "rinfo":Landroid/content/pm/ResolveInfo;
    if-nez v9, :cond_0

    .line 796
    .end local v9    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 737
    :catch_0
    move-exception v2

    .line 738
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 740
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v15, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_INTENT:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 741
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_7

    const-string v7, "notification_style_button_left_intent_uri"

    .line 743
    .local v7, "intentUriKey":Ljava/lang/String;
    :goto_4
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_9

    const-string v5, "notification_style_button_left_intent_class"

    .line 745
    .local v5, "intentClassKey":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 746
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 747
    .local v6, "intentStr":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 749
    const/4 v15, 0x1

    :try_start_2
    invoke-static {v6, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 750
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 751
    :catch_1
    move-exception v2

    .line 752
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 741
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v5    # "intentClassKey":Ljava/lang/String;
    .end local v6    # "intentStr":Ljava/lang/String;
    .end local v7    # "intentUriKey":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_8

    const-string v7, "notification_style_button_mid_intent_uri"

    goto :goto_4

    :cond_8
    const-string v7, "notification_style_button_right_intent_uri"

    goto :goto_4

    .line 743
    .restart local v7    # "intentUriKey":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_a

    const-string v5, "notification_style_button_mid_intent_class"

    goto :goto_5

    :cond_a
    const-string v5, "notification_style_button_right_intent_class"

    goto :goto_5

    .line 755
    .restart local v5    # "intentClassKey":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 756
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 757
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 758
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 760
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "intentClassKey":Ljava/lang/String;
    .end local v7    # "intentUriKey":Ljava/lang/String;
    :cond_c
    sget-object v15, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 761
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_f

    const-string v14, "notification_style_button_left_web_uri"

    .line 763
    .local v14, "webUriKey":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 764
    .local v12, "uri":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 765
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 766
    .local v10, "tmp":Ljava/lang/String;
    const-string v15, "http://"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "https://"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 767
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 770
    :cond_d
    :try_start_3
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 771
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "protocol":Ljava/lang/String;
    const-string v15, "http"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    const-string v15, "https"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 773
    :cond_e
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 774
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_4
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 775
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setXiaomiBrowserDefault(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v3

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 761
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "webUriKey":Ljava/lang/String;
    :cond_f
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_10

    const-string v14, "notification_style_button_mid_web_uri"

    goto :goto_6

    :cond_10
    const-string v14, "notification_style_button_right_web_uri"

    goto :goto_6

    .line 777
    .restart local v10    # "tmp":Ljava/lang/String;
    .restart local v12    # "uri":Ljava/lang/String;
    .restart local v14    # "webUriKey":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 778
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 791
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v10    # "tmp":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v14    # "webUriKey":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 792
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 777
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v10    # "tmp":Ljava/lang/String;
    .restart local v12    # "uri":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "webUriKey":Ljava/lang/String;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_7
.end method

.method private static getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "place"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .local p3, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 717
    if-nez p3, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-object v1

    .line 720
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getPendingIntentFromExtra(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 721
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 722
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method static getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 4
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1017
    const-string v2, "com.xiaomi.xmsf"

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1019
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v2

    const-string v3, "miui_package_name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1021
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1026
    .end local v0    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getTimeout(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 832
    .local v1, "notification_timeout":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 833
    .local v2, "timeout":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 835
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 840
    :cond_0
    :goto_1
    return v2

    .line 831
    .end local v1    # "notification_timeout":Ljava/lang/String;
    .end local v2    # "timeout":I
    :cond_1
    const-string/jumbo v3, "timeout"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    .line 836
    .restart local v1    # "notification_timeout":Ljava/lang/String;
    .restart local v2    # "timeout":I
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1168
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1170
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isApplicationForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 158
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 161
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const/4 v3, 0x1

    .line 166
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1211
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isIgnoreRegInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z
    .locals 5
    .param p0, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 1196
    const/4 v2, 0x0

    .line 1197
    .local v2, "result":Z
    if-eqz p0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "msgId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_0

    .line 1200
    const-string v3, "satuigm"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1201
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1202
    const/4 v2, 0x1

    .line 1206
    .end local v0    # "index":I
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 1
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1243
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1233
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNotifyForeground(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1180
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string v1, "notify_foreground"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1181
    :cond_0
    const/4 v1, 0x1

    .line 1184
    :goto_0
    return v1

    .line 1183
    :cond_1
    const-string v1, "notify_foreground"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1184
    .local v0, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 3
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v1, 0x1

    .line 1221
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1222
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notifyPushMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B

    .prologue
    .line 177
    new-instance v18, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;

    invoke-direct/range {v18 .. v18}, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;-><init>()V

    .line 180
    .local v18, "info":Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getAppNotificationOp(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-result-object v28

    .line 181
    .local v28, "notificationOp":Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->NOT_ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-object/from16 v0, v28

    if-ne v0, v6, :cond_1

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v23

    .line 183
    .local v23, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v23, :cond_0

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do not notify because user block "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u2018s notification"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not notify because user block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2018s notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-object v18

    .line 192
    .end local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->isShield(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->getShieldType(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v36

    .line 194
    .local v36, "shieldTypeName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v23

    .line 195
    .restart local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v23, :cond_2

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do not notify because user block "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u2018s notification"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not notify because user block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2018s notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .end local v36    # "shieldTypeName":Ljava/lang/String;
    :cond_3
    const-string v6, "notification"

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/NotificationManager;

    .line 205
    .local v25, "nm":Landroid/app/NotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v23

    .line 206
    .restart local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    const/16 v26, 0x0

    .line 207
    .local v26, "notification":Landroid/app/Notification;
    invoke-static/range {p0 .. p2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getNotificationForCustomLayout(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Landroid/widget/RemoteViews;

    move-result-object v34

    .line 209
    .local v34, "rv":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getClickedPendingIntent(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Landroid/app/PendingIntent;

    move-result-object v19

    .line 210
    .local v19, "intent":Landroid/app/PendingIntent;
    if-nez v19, :cond_5

    .line 211
    if-eqz v23, :cond_4

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "The click PendingIntent is null. "

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_4
    const-string v6, "The click PendingIntent is null. "

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_12

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v34

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getNotificationForLargeIcons(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;

    move-result-object v17

    .line 221
    .local v17, "getNotificationResult":Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->trafficSize:J

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->traffic:J

    .line 222
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->targetPkgName:Ljava/lang/String;

    .line 223
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->notification:Landroid/app/Notification;

    move-object/from16 v26, v0

    .line 287
    .end local v17    # "getNotificationResult":Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v6

    if-eqz v6, :cond_a

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_a

    .line 289
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 290
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "message_id"

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getInternal()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1a

    const/16 v35, 0x0

    .line 295
    .local v35, "scoreInfo":Ljava/lang/String;
    :goto_2
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 296
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "score_info"

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_8
    const/4 v15, -0x1

    .line 303
    .local v15, "eventMessageType":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 304
    const/16 v15, 0x3e8

    .line 308
    :cond_9
    :goto_3
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "eventMessageType"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .end local v15    # "eventMessageType":I
    .end local v35    # "scoreInfo":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1c

    const/16 v22, 0x0

    .line 314
    .local v22, "messageCountStr":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v22, :cond_b

    .line 316
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 317
    .local v21, "messageCount":I
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setMessageCount(Landroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 328
    .end local v21    # "messageCount":I
    :cond_b
    :goto_5
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isXMS()Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 329
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setTargetPackage(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;

    .line 334
    :cond_c
    const-string v6, "com.xiaomi.xmsf"

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/TypedShieldHelper;->processTypedShieldExtra(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Landroid/app/Notification;)V

    .line 338
    :cond_d
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v30

    .line 340
    .local v30, "notifyId":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0xa

    add-int v32, v6, v30

    .line 342
    .local v32, "realID":I
    move-object/from16 v0, v25

    move/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 343
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xbba

    const-string/jumbo v11, "try show business message"

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3ea

    const-string/jumbo v11, "try show notification message"

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    :cond_f
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_10

    .line 355
    move/from16 v27, v32

    .line 356
    .local v27, "notificationId":I
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v20

    .line 357
    .local v20, "jobManager":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->cancelJob(I)Z

    .line 358
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTimeout(Ljava/util/Map;)I

    move-result v38

    .line 359
    .local v38, "timeout":I
    if-lez v38, :cond_10

    .line 360
    new-instance v6, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;

    move/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;-><init>(ILandroid/app/NotificationManager;)V

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z

    .line 373
    .end local v20    # "jobManager":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    .end local v27    # "notificationId":I
    .end local v38    # "timeout":I
    :cond_10
    new-instance v29, Landroid/util/Pair;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .local v29, "notifyContainerPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    sget-object v7, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    monitor-enter v7

    .line 375
    :try_start_1
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v8, 0x64

    if-le v6, v8, :cond_11

    .line 377
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 379
    :cond_11
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 225
    .end local v22    # "messageCountStr":Ljava/lang/String;
    .end local v29    # "notifyContainerPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v30    # "notifyId":I
    .end local v32    # "realID":I
    :cond_12
    new-instance v26, Landroid/app/Notification;

    .end local v26    # "notification":Landroid/app/Notification;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIdForSmallIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 228
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->determineTitleAndDespByDIP(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;

    move-result-object v33

    .line 231
    .local v33, "ret":[Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    move-result-object v24

    .line 232
    .local v24, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v33, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aget-object v8, v33, v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v19, v6, v7

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 259
    .end local v24    # "method":Ljava/lang/reflect/Method;
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v16

    .line 260
    .local v16, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v16, :cond_13

    const-string/jumbo v6, "ticker"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 261
    const-string/jumbo v6, "ticker"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 263
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 264
    .local v12, "currentTime":J
    sget-wide v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    sub-long v6, v12, v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_15

    .line 265
    sput-wide v12, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    .line 266
    move-object/from16 v0, v23

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    move/from16 v31, v0

    .line 267
    .local v31, "notifyType":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v31

    .line 270
    :cond_14
    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 271
    if-eqz v16, :cond_15

    and-int/lit8 v6, v31, 0x1

    if-eqz v6, :cond_15

    .line 272
    const-string/jumbo v6, "sound_uri"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 273
    .local v37, "soundUri":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 274
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 275
    xor-int/lit8 v6, v31, 0x1

    move-object/from16 v0, v26

    iput v6, v0, Landroid/app/Notification;->defaults:I

    .line 276
    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v26

    iput-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 280
    .end local v31    # "notifyType":I
    .end local v37    # "soundUri":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v26

    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    move-object/from16 v0, v26

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 282
    if-eqz v34, :cond_6

    .line 283
    move-object/from16 v0, v34

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 233
    .end local v12    # "currentTime":J
    .end local v16    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v14

    .line 234
    .local v14, "e":Ljava/lang/NoSuchMethodException;
    if-eqz v23, :cond_16

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    :cond_16
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 239
    .end local v14    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v14

    .line 240
    .local v14, "e":Ljava/lang/IllegalAccessException;
    if-eqz v23, :cond_17

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    :cond_17
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 245
    .end local v14    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v14

    .line 246
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v23, :cond_18

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :cond_18
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 251
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v14

    .line 252
    .local v14, "e":Ljava/lang/reflect/InvocationTargetException;
    if-eqz v23, :cond_19

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    :cond_19
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 294
    .end local v14    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v33    # "ret":[Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getInternal()Ljava/util/Map;

    move-result-object v6

    const-string v7, "score_info"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v35, v6

    goto/16 :goto_2

    .line 305
    .restart local v15    # "eventMessageType":I
    .restart local v35    # "scoreInfo":Ljava/lang/String;
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 306
    const/16 v15, 0xbb8

    goto/16 :goto_3

    .line 313
    .end local v15    # "eventMessageType":I
    .end local v35    # "scoreInfo":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "message_count"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v22, v6

    goto/16 :goto_4

    .line 318
    .restart local v22    # "messageCountStr":Ljava/lang/String;
    :catch_4
    move-exception v14

    .line 319
    .local v14, "e":Ljava/lang/NumberFormatException;
    if-eqz v23, :cond_1d

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    :cond_1d
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method static setLocalNotifyType(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notifyType"    # I

    .prologue
    .line 1174
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1176
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1177
    return-void
.end method

.method private static setMessageCount(Landroid/app/Notification;I)V
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "messageCount"    # I

    .prologue
    .line 385
    const-string v1, "extraNotification"

    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "miuiNotification":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 387
    const-string v1, "setMessageCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_0
    return-void
.end method

.method private static setNotificationStyle(Landroid/content/Context;Ljava/util/Map;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Notification$Builder;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/Notification$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 813
    const-string v2, "2"

    const-string v4, "notification_style_type"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 814
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0, p2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 815
    .local v0, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    if-nez p1, :cond_1

    move-object v1, v3

    .line 817
    .local v1, "picture":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v1, :cond_2

    .line 827
    .end local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v1    # "picture":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object p2

    .line 815
    .restart local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    :cond_1
    const-string v2, "notification_bigPic_uri"

    .line 816
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 820
    .restart local v1    # "picture":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 821
    invoke-virtual {v0, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 822
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 823
    .end local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v1    # "picture":Landroid/graphics/Bitmap;
    :cond_3
    const-string v2, "1"

    const-string v3, "notification_style_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private static setNotificationStyleAction(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification$Builder;
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$Builder;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification$Builder;"
        }
    .end annotation

    .prologue
    .local p3, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 698
    const/4 v1, 0x1

    invoke-static {p1, p2, v1, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 699
    .local v0, "stylePendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    const-string v1, "notification_style_button_left_name"

    .line 700
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    const-string v1, "notification_style_button_left_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 703
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, p2, v1, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_1

    const-string v1, "notification_style_button_mid_name"

    .line 705
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    const-string v1, "notification_style_button_mid_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 708
    :cond_1
    const/4 v1, 0x3

    invoke-static {p1, p2, v1, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_2

    const-string v1, "notification_style_button_right_name"

    .line 710
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 711
    const-string v1, "notification_style_button_right_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 713
    :cond_2
    return-object p0
.end method

.method private static setTargetPackage(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;
    .locals 10
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1001
    :try_start_0
    const-class v0, Landroid/app/Notification;

    .line 1002
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "extraNotification"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1003
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1004
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1005
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setTargetPkg"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1008
    .local v4, "setMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1009
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "setMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object p0

    .line 1010
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static setXiaomiBrowserDefault(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 801
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.browser"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 802
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 803
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object p1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static uploadClearMessageData(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, "removeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1149
    const-string v2, "category_clear_notification"

    const-string v3, "clear_notification"

    .line 1151
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v4, v0

    const-string v6, ""

    move-object v1, p0

    .line 1149
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/push/service/TinyDataHelper;->cacheTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1153
    :cond_0
    return-void
.end method
