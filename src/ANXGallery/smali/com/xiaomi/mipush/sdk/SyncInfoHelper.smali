.class public Lcom/xiaomi/mipush/sdk/SyncInfoHelper;
.super Ljava/lang/Object;
.source "SyncInfoHelper.java"


# direct methods
.method static synthetic access$000(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->getMd5Summary(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doSyncInfoAsync(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "md5Info"    # Z

    .prologue
    .line 66
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method private static formatList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    const-string v1, ""

    .line 212
    :cond_0
    return-object v1

    .line 203
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    .local v0, "listLocal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 205
    const-string v1, ""

    .line 206
    .local v1, "listStr":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    goto :goto_0
.end method

.method private static getMd5Summary(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x4

    .line 189
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "listStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "listStrMd5":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 193
    :cond_0
    const-string v2, ""

    .line 195
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static saveInfo(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need to update local info with: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v11

    const-string v12, "accept_time"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "acceptTime":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAcceptTime(Landroid/content/Context;)V

    .line 137
    const-string v11, "-"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "acceptTimes":[Ljava/lang/String;
    array-length v11, v1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 139
    const/4 v11, 0x0

    aget-object v11, v1, v11

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-static {p0, v11, v12}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v11, "00:00"

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "00:00"

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 141
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->setPaused(Z)V

    .line 149
    .end local v1    # "acceptTimes":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v11

    const-string v12, "aliases"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 150
    .local v7, "allAliases":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 151
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAllAliases(Landroid/content/Context;)V

    .line 152
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 153
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "aliasArr":[Ljava/lang/String;
    array-length v12, v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v4, v5, v11

    .line 155
    .local v4, "alias":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 143
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "aliasArr":[Ljava/lang/String;
    .end local v7    # "allAliases":Ljava/lang/String;
    .restart local v1    # "acceptTimes":[Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->setPaused(Z)V

    goto :goto_0

    .line 161
    .end local v1    # "acceptTimes":[Ljava/lang/String;
    .restart local v7    # "allAliases":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v12, "topics"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 162
    .local v8, "allTopics":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 163
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAllTopics(Landroid/content/Context;)V

    .line 164
    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 165
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "topicArr":[Ljava/lang/String;
    array-length v12, v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_3

    aget-object v9, v10, v11

    .line 167
    .local v9, "topic":Ljava/lang/String;
    invoke-static {p0, v9}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addTopic(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 173
    .end local v9    # "topic":Ljava/lang/String;
    .end local v10    # "topicArr":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v12, "user_accounts"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 174
    .local v6, "allAccounts":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 175
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAllAccounts(Landroid/content/Context;)V

    .line 176
    const-string v11, ""

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 177
    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "accountArr":[Ljava/lang/String;
    array-length v12, v3

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_4

    aget-object v2, v3, v11

    .line 179
    .local v2, "account":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 183
    .end local v2    # "account":Ljava/lang/String;
    .end local v3    # "accountArr":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static tryToSyncInfo(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, -0x1

    .line 48
    const-string v7, "mipush_extra"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 51
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "last_sync_info"

    invoke-interface {v6, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 52
    .local v2, "lastSyncInfo":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 53
    .local v0, "currentInSecond":J
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ConfigKey;->SyncInfoFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 54
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v8

    const v9, 0x127500

    invoke-virtual {v7, v8, v9}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v7

    int-to-long v4, v7

    .line 56
    .local v4, "periodInSecond":J
    cmp-long v7, v2, v12

    if-nez v7, :cond_1

    .line 58
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_sync_info"

    invoke-interface {v7, v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 60
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->doSyncInfoAsync(Landroid/content/Context;Z)V

    .line 61
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_sync_info"

    invoke-interface {v7, v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
