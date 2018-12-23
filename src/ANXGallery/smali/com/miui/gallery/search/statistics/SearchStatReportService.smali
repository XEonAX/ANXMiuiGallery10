.class public Lcom/miui/gallery/search/statistics/SearchStatReportService;
.super Landroid/app/IntentService;
.source "SearchStatReportService.java"


# static fields
.field public static EXTRA_LOG_ITEM:Ljava/lang/String;

.field public static EXTRA_UPLOAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "upload"

    sput-object v0, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_UPLOAD:Ljava/lang/String;

    .line 23
    const-string v0, "log_item"

    sput-object v0, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_LOG_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "SearchStatReportService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private uploadStatEvents(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)V
    .locals 11
    .param p1, "logItem"    # Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .prologue
    .line 50
    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "userID":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    invoke-static {p1}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->saveLogItem(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)I

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->getSavedLogs()Ljava/util/ArrayList;

    move-result-object v3

    .line 61
    .local v3, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    if-eqz p1, :cond_1

    .line 66
    :cond_4
    if-nez v3, :cond_5

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .restart local v3    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    :cond_5
    if-eqz p1, :cond_6

    .line 70
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_6
    const/4 v5, 0x0

    .line 75
    .local v5, "startPos":I
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, v5, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 78
    .local v2, "endPos":I
    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 81
    .local v0, "batchItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    :try_start_1
    const-string v7, "SearchStatReportService"

    const-string/jumbo v8, "uploading batch statistic events [%d-%d][%s]..."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, v0}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    new-instance v7, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;-><init>()V

    const/16 v8, 0x3ea

    .line 83
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setMethod(I)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 84
    invoke-static {v6}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getDefaultUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 85
    invoke-virtual {v7, v6}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string v8, "actionlog"

    .line 86
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryAppendPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string v8, "data"

    .line 87
    invoke-static {v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->getDataJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const/4 v8, 0x0

    .line 88
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setReportError(Z)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 89
    invoke-virtual {v7}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v4

    .line 90
    .local v4, "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    invoke-virtual {v4}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    .line 91
    const-string v7, "SearchStatReportService"

    const-string v8, "Upload batch succeed"

    invoke-static {v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->clearSavedLogs()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    move v5, v2

    .line 97
    goto :goto_1

    .line 93
    .end local v4    # "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "SearchStatReportService"

    const-string v8, "Upload batch failed, %s"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    move v5, v2

    .line 97
    goto :goto_1

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move v5, v2

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .end local v0    # "batchItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .end local v2    # "endPos":I
    :catch_1
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "SearchStatReportService"

    invoke-static {v7, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    const-string v7, "SearchStatReportService"

    const-string v8, "Done uploading [%d] items, delete uploaded events"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->clearSavedLogs()V

    goto/16 :goto_0

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v7, "SearchStatReportService"

    const-string v8, "Done uploading [%d] items, delete uploaded events"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->clearSavedLogs()V

    goto/16 :goto_0

    .line 102
    :catchall_1
    move-exception v7

    const-string v8, "SearchStatReportService"

    const-string v9, "Done uploading [%d] items, delete uploaded events"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->clearSavedLogs()V

    throw v7
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    if-nez p1, :cond_1

    .line 33
    const-string v1, "SearchStatReportService"

    const-string v2, "Received a NULL intent!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    .local v0, "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_LOG_ITEM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 38
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_LOG_ITEM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0    # "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    check-cast v0, Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .line 39
    .restart local v0    # "logItem":Lcom/miui/gallery/search/statistics/SearchStatLogItem;
    const-string v1, "SearchStatReportService"

    const-string v2, "On log [%s]"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_2
    sget-object v1, Lcom/miui/gallery/search/statistics/SearchStatReportService;->EXTRA_UPLOAD:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    invoke-direct {p0, v0}, Lcom/miui/gallery/search/statistics/SearchStatReportService;->uploadStatEvents(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)V

    goto :goto_0

    .line 44
    :cond_3
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->saveLogItem(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)I

    goto :goto_0
.end method
