.class public Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "LastMonthScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x6d

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 23
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 70
    .local v0, "startTime":J
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getYearMonthLocale(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Lcom/miui/gallery/card/scenario/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/card/scenario/Record;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 58
    .local v2, "startTime":J
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getMonth(J)I

    move-result v0

    .line 60
    .local v0, "month":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "pastYearsMonths":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, v1

    if-le v4, v0, :cond_0

    .line 62
    aget-object v4, v1, v0

    .line 64
    :goto_0
    return-object v4

    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method public loadMediaItem()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/miui/gallery/card/scenario/Constants;->TAGS_PARTY:[Ljava/lang/Integer;

    sget-object v1, Lcom/miui/gallery/card/scenario/Constants;->TAGS_FOODS:[Ljava/lang/Integer;

    .line 48
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/card/scenario/Constants;->TAGS_ACTIVITY:[Ljava/lang/Integer;

    sget-object v2, Lcom/miui/gallery/card/scenario/Constants;->TAGS_SPORTS:[Ljava/lang/Integer;

    .line 49
    invoke-static {v1, v2}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 51
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/scenario/Record;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 29
    .local v8, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 30
    .local v0, "currentTime":J
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getFirstDayOfMonthTime(J)J

    move-result-wide v2

    .line 32
    .local v2, "firstDayofMonth":J
    cmp-long v9, v0, v2

    if-lez v9, :cond_2

    sub-long v10, v0, v2

    const-wide/32 v12, 0xa4cb800

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 33
    const/4 v9, 0x0

    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearMonthTime(IJZ)J

    move-result-wide v6

    .line 34
    .local v6, "lastMonthStart":J
    const/4 v9, 0x0

    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/card/scenario/DateUtils;->getLastNYearMonthTime(IJZ)J

    move-result-wide v4

    .line 35
    .local v4, "lastMonthEnd":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-ltz v9, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-ltz v9, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 36
    :cond_0
    const/4 v9, 0x0

    .line 42
    .end local v4    # "lastMonthEnd":J
    .end local v6    # "lastMonthStart":J
    :goto_0
    return v9

    .line 38
    .restart local v4    # "lastMonthEnd":J
    .restart local v6    # "lastMonthStart":J
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->setStartTime(J)V

    .line 39
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/recent/LastMonthScenario;->setEndTime(J)V

    .line 40
    const/4 v9, 0x1

    goto :goto_0

    .line 42
    .end local v4    # "lastMonthEnd":J
    .end local v6    # "lastMonthStart":J
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method
