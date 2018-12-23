.class public Lcom/miui/gallery/push/GalleryPushManager;
.super Ljava/lang/Object;
.source "GalleryPushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/push/GalleryPushManager$SingletonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/push/GalleryPushManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/push/GalleryPushManager$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/push/GalleryPushManager;-><init>()V

    return-void
.end method

.method private getAccountTopic(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 159
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 161
    .local v0, "accountName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s_%s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "xiaomi_account"

    aput-object v5, v4, v6

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "accountTopic":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 159
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountTopic":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 164
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s_%s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "xiaomi_account_sample"

    aput-object v5, v4, v6

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SampleStatistic;->getUniqId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0xa

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "accountTopic":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getInstance()Lcom/miui/gallery/push/GalleryPushManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/miui/gallery/push/GalleryPushManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/push/GalleryPushManager;

    return-object v0
.end method

.method private getMiuiVersionTopic()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "miuiVersionTopic":Ljava/lang/String;
    sget-boolean v1, Lcom/miui/os/Rom;->IS_STABLE:Z

    if-eqz v1, :cond_1

    .line 149
    const-string v0, "miui_version_stable"

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    sget-boolean v1, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-eqz v1, :cond_2

    .line 151
    const-string v0, "miui_version_alpha"

    goto :goto_0

    .line 152
    :cond_2
    sget-boolean v1, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v1, :cond_0

    .line 153
    const-string v0, "miui_version_dev"

    goto :goto_0
.end method

.method private getPrintTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PrintInstallHelper;->isPhotoPrintEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "photo_print"

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUserAccount(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAccount"    # Ljava/lang/String;
    .param p3, "unsetOthers"    # Z

    .prologue
    const/4 v4, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "alreadyRegistered":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/Encode;->SHA1Encode([B)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "encodedUserAccount":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "registeredAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 80
    if-eqz p3, :cond_0

    .line 81
    invoke-static {p1, v0, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "account":Ljava/lang/String;
    .end local v2    # "encodedUserAccount":Ljava/lang/String;
    .end local v3    # "registeredAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v2, v4

    .line 73
    goto :goto_0

    .line 85
    .restart local v2    # "encodedUserAccount":Ljava/lang/String;
    .restart local v3    # "registeredAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 86
    invoke-static {p1, v2, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_3
    return-void
.end method

.method private shouldInit(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 182
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 183
    .local v4, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "mainProcessName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 186
    .local v3, "myPid":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 187
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_0

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    const/4 v5, 0x1

    .line 192
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "mainProcessName":Ljava/lang/String;
    .end local v3    # "myPid":I
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private varargs subscribeTopics(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unsubscribeOthers"    # Z
    .param p3, "topics"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 69
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "subscribedTopics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    array-length v4, p3

    if-nez v4, :cond_3

    .line 47
    :cond_2
    if-eqz p2, :cond_0

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "subscribedTopic":Ljava/lang/String;
    invoke-static {p1, v0, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0    # "subscribedTopic":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .local v3, "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .restart local v0    # "subscribedTopic":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 60
    if-eqz p2, :cond_4

    .line 61
    invoke-static {p1, v0, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    .end local v0    # "subscribedTopic":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "topic":Ljava/lang/String;
    invoke-static {p1, v2, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private unregisterPush(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/miui/gallery/push/GalleryPushManager;->shouldInit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unregisterPush(Landroid/content/Context;)V

    .line 213
    :cond_0
    return-void
.end method

.method private unsubscribeAccountTopic(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "subscribedTopics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "subscribedTopic":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "xiaomi_account"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v0    # "subscribedTopic":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAddAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x1

    .line 91
    if-nez p1, :cond_1

    .line 101
    :cond_0
    return-void

    .line 93
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/gallery/push/GalleryPushManager;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 98
    :goto_0
    invoke-static {}, Lcom/miui/gallery/push/MessageHandlerFactory;->getAllMessageHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/push/messagehandler/MessageHandler;

    .line 99
    .local v0, "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    invoke-virtual {v0}, Lcom/miui/gallery/push/messagehandler/MessageHandler;->onAddAccount()V

    goto :goto_1

    .line 96
    .end local v0    # "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/gallery/push/GalleryPushManager;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDeleteAccount(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0, p1, v5, v4}, Lcom/miui/gallery/push/GalleryPushManager;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 107
    invoke-static {}, Lcom/miui/gallery/push/MessageHandlerFactory;->getAllMessageHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/push/messagehandler/MessageHandler;

    .line 108
    .local v0, "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    invoke-virtual {v0}, Lcom/miui/gallery/push/messagehandler/MessageHandler;->onDeleteAccount()V

    goto :goto_1

    .line 110
    .end local v0    # "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/push/GalleryPushManager;->unsubscribeAccountTopic(Landroid/content/Context;)V

    .line 111
    new-array v1, v4, [Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/gallery/push/GalleryPushManager;->getAccountTopic(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v3, v1}, Lcom/miui/gallery/push/GalleryPushManager;->subscribeTopics(Landroid/content/Context;Z[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerPush(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-static {p1}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isGalleryAgreementEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    const-string v0, "GalleryPushManager"

    const-string v1, "Register push failed: privacy agreement disabled"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/miui/gallery/push/GalleryPushManager;->unregisterPush(Landroid/content/Context;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    .line 204
    :cond_2
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gallery/push/GalleryPushManager;->shouldInit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "2882303761517492012"

    const-string v1, "5601749292012"

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserAccountAndTopics(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 115
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 118
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/miui/gallery/push/GalleryPushManager;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 124
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "cloud_control"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/push/GalleryPushManager;->getPrintTopic()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "printTopic":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/push/GalleryPushManager;->getMiuiVersionTopic()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "versionTopic":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/gallery/push/GalleryPushManager;->getAccountTopic(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p0, p1, v5, v4}, Lcom/miui/gallery/push/GalleryPushManager;->subscribeTopics(Landroid/content/Context;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v1    # "printTopic":Ljava/lang/String;
    .end local v2    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "versionTopic":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/miui/gallery/push/GalleryPushManager;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method
