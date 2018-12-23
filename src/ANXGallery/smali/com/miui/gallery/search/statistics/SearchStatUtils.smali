.class public Lcom/miui/gallery/search/statistics/SearchStatUtils;
.super Ljava/lang/Object;
.source "SearchStatUtils.java"


# static fields
.field private static final POW:D

.field private static sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

.field private static final sCachedLogLock:Ljava/lang/Object;

.field private static sGson:Lcom/google/gson/Gson;

.field private static final sSerialLock:Ljava/lang/Object;

.field private static sSerialRandom:Ljava/util/Random;

.field private static sSerialStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    sput-object v4, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialLock:Ljava/lang/Object;

    .line 135
    sput-object v4, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLogLock:Ljava/lang/Object;

    .line 280
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->POW:D

    .line 281
    sput-object v4, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialRandom:Ljava/util/Random;

    .line 290
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static buildSearchEventExtras(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "reusedExtra"    # Landroid/os/Bundle;
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object p0

    .line 87
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne p0, v0, :cond_3

    .line 88
    :cond_2
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "reusedExtra":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .restart local p0    # "reusedExtra":Landroid/os/Bundle;
    :cond_3
    const-string v0, "search_event_keys"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    const-string v0, "search_event_values"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static buildSearchEventParams(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 7
    .param p0, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 96
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    const-string v5, "search_event_keys"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "keys":[Ljava/lang/String;
    const-string v5, "search_event_values"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "values":[Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v2

    array-length v6, v4

    if-ne v5, v6, :cond_0

    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v3, "searchEventParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 106
    aget-object v5, v2, v1

    aget-object v6, v4, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SearchStatUtils"

    const-string v6, "Error occurred while build search event extras %s"

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static cacheEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->formLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    move-result-object v0

    .line 200
    .local v0, "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    const/4 v1, 0x0

    .line 201
    .local v1, "previousItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    sget-object v3, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLogLock:Ljava/lang/Object;

    monitor-enter v3

    .line 202
    :try_start_0
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    if-eqz v2, :cond_0

    .line 203
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .line 205
    :cond_0
    sput-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .line 206
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v1, :cond_1

    .line 208
    invoke-static {v1}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)V

    .line 210
    :cond_1
    return-void

    .line 206
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static createNewSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    if-nez v1, :cond_1

    .line 142
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialLock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_0
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    .line 146
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->createNewSerialId()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "serialId":Ljava/lang/String;
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_1
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    return-object v0

    .line 146
    .end local v0    # "serialId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 152
    .restart local v0    # "serialId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static createNewSerialId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 283
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialRandom:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialRandom:Ljava/util/Random;

    .line 286
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    add-double/2addr v2, v4

    sget-wide v4, Lcom/miui/gallery/search/statistics/SearchStatUtils;->POW:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 287
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/search/statistics/SearchStatLogItem;"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 267
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 269
    .restart local p2    # "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "isInternational"

    sget-boolean v3, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz p0, :cond_1

    .line 271
    const-string v2, "from"

    invoke-interface {p2, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_1
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->getSerialStackHead()Landroid/util/Pair;

    move-result-object v0

    .line 274
    .local v0, "serialHead":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 275
    .local v1, "serialId":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    invoke-direct {v2, v1, p1, p2}, Lcom/miui/gallery/search/statistics/SearchStatLogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    .line 274
    .end local v1    # "serialId":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method

.method public static getCurrentSerial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->getSerialStackHead()Landroid/util/Pair;

    move-result-object v0

    .line 181
    .local v0, "head":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDataJson(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)Ljava/lang/String;
    .locals 1
    .param p0, "log"    # Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .prologue
    .line 298
    sget-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataJson(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/statistics/SearchStatLogItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;>;"
    const-string v1, "items"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSerialStackHead()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 186
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    monitor-exit v1

    .line 192
    :goto_0
    return-object v0

    .line 190
    :cond_0
    monitor-exit v1

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onCompleteSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 159
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 174
    :goto_0
    return-object v1

    .line 164
    :cond_0
    sget-object v3, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialLock:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->getSerialStackHead()Landroid/util/Pair;

    move-result-object v0

    .line 166
    .local v0, "head":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 169
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v0, :cond_2

    .line 171
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 169
    .end local v0    # "head":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 173
    .restart local v0    # "head":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v1, "SearchStatUtils"

    const-string v3, "Current serial stack empty or head is not from %s, stack size %d!"

    sget-object v4, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sSerialStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, p0, v4}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 174
    goto :goto_0
.end method

.method public static pullCachedEvent()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    if-nez v2, :cond_1

    .line 223
    .local v0, "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    :cond_0
    :goto_0
    return-object v1

    .line 219
    .end local v0    # "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    :cond_1
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLogLock:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    sget-object v0, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .line 221
    .restart local v0    # "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    const/4 v3, 0x0

    sput-object v3, Lcom/miui/gallery/search/statistics/SearchStatUtils;->sCachedLog:Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .line 222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->getDataJson(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static reportEvent(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)V
    .locals 4
    .param p0, "logItem"    # Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .prologue
    .line 254
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/search/statistics/SearchStatReportService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_LOG_ITEM:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 258
    sget-object v2, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_UPLOAD:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 263
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "dataKey"    # Ljava/lang/String;
    .param p3, "dataValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "dataKey1"    # Ljava/lang/String;
    .param p3, "dataValue1"    # Ljava/lang/String;
    .param p4, "dataKey2"    # Ljava/lang/String;
    .param p5, "dataValue2"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 238
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 241
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->formLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    move-result-object v0

    .line 248
    .local v0, "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    invoke-static {v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)V

    .line 249
    return-void
.end method
