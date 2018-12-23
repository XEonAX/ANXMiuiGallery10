.class public Lcom/miui/gallery/push/messagehandler/NotificationMessageHandler;
.super Lcom/miui/gallery/push/messagehandler/MessageHandler;
.source "NotificationMessageHandler.java"


# static fields
.field private static mLastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/gallery/push/messagehandler/NotificationMessageHandler;->mLastTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/push/messagehandler/MessageHandler;-><init>()V

    return-void
.end method

.method private getPushNotificationId(I)I
    .locals 1
    .param p1, "originId"    # I

    .prologue
    .line 164
    invoke-static {p1}, Lcom/miui/gallery/util/NotificationHelper;->getPushNotificationId(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v32, "NotificationMessageHandler"

    const-string v33, "context is null"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v18

    .line 60
    .local v18, "messageData":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 61
    const-string v32, "NotificationMessageHandler"

    const-string v33, "message data is null"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    :try_start_0
    new-instance v22, Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v22, "notificationJSON":Lorg/json/JSONObject;
    const-string v32, "id"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/miui/gallery/push/messagehandler/NotificationMessageHandler;->getPushNotificationId(I)I

    move-result v14

    .line 70
    .local v14, "id":I
    const-string v32, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 71
    .local v19, "nm":Landroid/app/NotificationManager;
    if-nez v19, :cond_2

    .line 72
    const-string v32, "NotificationMessageHandler"

    const-string v33, "notification manager is null"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v14    # "id":I
    .end local v19    # "nm":Landroid/app/NotificationManager;
    .end local v22    # "notificationJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 159
    .local v12, "e":Ljava/lang/Exception;
    const-string v32, "NotificationMessageHandler"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "fail to parse notification data from"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "id":I
    .restart local v19    # "nm":Landroid/app/NotificationManager;
    .restart local v22    # "notificationJSON":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v32, "isCancel"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 76
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 77
    const-string v32, "NotificationMessageHandler"

    const-string v33, "is cancel message"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 82
    .local v6, "cur":J
    sget-wide v32, Lcom/miui/gallery/push/messagehandler/NotificationMessageHandler;->mLastTime:J

    sub-long v10, v6, v32

    .line 83
    .local v10, "duration":J
    sput-wide v6, Lcom/miui/gallery/push/messagehandler/NotificationMessageHandler;->mLastTime:J

    .line 84
    const-wide/32 v32, 0x927c0

    cmp-long v32, v10, v32

    if-gez v32, :cond_4

    .line 85
    const-string v32, "NotificationMessageHandler"

    const-string/jumbo v33, "too frequently to push notification, time duration is %d"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    :cond_4
    const-string/jumbo v32, "version"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    .line 90
    .local v31, "version":I
    if-lez v31, :cond_5

    .line 91
    const-string v32, "NotificationMessageHandler"

    const-string v33, "message version is not fit, server version is %d, local version is %d"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v32 .. v35}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 95
    :cond_5
    const-string/jumbo v32, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 96
    .local v30, "url":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 97
    const-string v32, "NotificationMessageHandler"

    const-string v33, "empty url"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_6
    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 102
    .local v29, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v32, "android.intent.action.VIEW"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v5, "contentIntent":Landroid/content/Intent;
    const-string v32, "is_activity_action"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 104
    const-string v32, "NotificationMessageHandler"

    const-string v33, "is activity action"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v32, "intent_package_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 106
    .local v23, "packageName":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 107
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_7
    const-string v32, "intent_extra"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 111
    .local v13, "extraJSON":Lorg/json/JSONObject;
    if-eqz v13, :cond_8

    .line 112
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 113
    .local v16, "keySet":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 114
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 115
    .local v15, "key":Ljava/lang/String;
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 119
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "keySet":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 120
    .local v26, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v32

    if-nez v32, :cond_9

    .line 121
    const-string v32, "NotificationMessageHandler"

    const-string v33, "no activity to handle this uri"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v13    # "extraJSON":Lorg/json/JSONObject;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    const-string/jumbo v32, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 127
    .local v28, "titleJSON":Lorg/json/JSONObject;
    const-string v32, "description"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 128
    .local v9, "descriptionJSON":Lorg/json/JSONObject;
    const/16 v27, 0x0

    .local v27, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 129
    .local v8, "description":Ljava/lang/String;
    if-eqz v28, :cond_a

    if-eqz v9, :cond_a

    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 131
    .local v17, "local":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 132
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .end local v17    # "local":Ljava/lang/String;
    :cond_a
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 135
    :cond_b
    const-string v32, "NotificationMessageHandler"

    const-string v33, "no title or description"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_c
    new-instance v21, Landroid/content/Intent;

    const-string v32, "android.intent.action.VIEW"

    sget-object v33, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_PUSH_LANDING_PAGE:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v21, "notificationIntent":Landroid/content/Intent;
    const-string v32, "com.miui.gallery"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v32, "notification_content_intent"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    const-string v32, "notification_content_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const/16 v32, 0x0

    const/high16 v33, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v21

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 145
    .local v25, "pi":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v4, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 149
    const/high16 v32, 0x7f030000

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 150
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 151
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 152
    .local v20, "notification":Landroid/app/Notification;
    const/16 v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, v20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 153
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v24, "param":Ljava/util/Map;
    const-string v32, "pushContent"

    sget-object v33, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v34, "%d_%s"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    aput-object v30, v35, v36

    invoke-static/range {v33 .. v35}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v32, "push_notification"

    const-string v33, "push_notification_arrive"

    invoke-static/range {v32 .. v33}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public handlePull(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 50
    return-void
.end method
