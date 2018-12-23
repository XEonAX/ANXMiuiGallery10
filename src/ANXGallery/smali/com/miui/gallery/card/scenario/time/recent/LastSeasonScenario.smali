.class public Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;
.super Lcom/miui/gallery/card/scenario/time/TimeScenario;
.source "LastSeasonScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x6c

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/TimeScenario;-><init>(III)V

    .line 27
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 4
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
    .line 74
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v0

    .line 75
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getMonthPeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v2

    .line 78
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
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
    .line 61
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getRecordStartTime(Lcom/miui/gallery/card/scenario/Record;)J

    move-result-wide v2

    .line 62
    .local v2, "startTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 63
    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeason(J)I

    move-result v0

    .line 64
    .local v0, "season":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "seasons":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, v1

    if-le v4, v0, :cond_0

    .line 66
    aget-object v4, v1, v0

    .line 69
    .end local v0    # "season":I
    .end local v1    # "seasons":[Ljava/lang/String;
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
    .line 52
    sget-object v0, Lcom/miui/gallery/card/scenario/Constants;->TAGS_PARTY:[Ljava/lang/Integer;

    sget-object v1, Lcom/miui/gallery/card/scenario/Constants;->TAGS_FOODS:[Ljava/lang/Integer;

    .line 53
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/card/scenario/Constants;->TAGS_ACTIVITY:[Ljava/lang/Integer;

    sget-object v2, Lcom/miui/gallery/card/scenario/Constants;->TAGS_SPORTS:[Ljava/lang/Integer;

    .line 54
    invoke-static {v1, v2}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/miui/gallery/card/CardUtil;->concat([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getEndTime()J

    move-result-wide v4

    move-object v0, p0

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getCameraMediaIdsByStartEndTimeTags([Ljava/lang/Integer;JJ)Ljava/util/List;

    move-result-object v6

    .line 56
    .local v6, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-virtual {p0, v6}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getImageIdsFromImageFeatures(Ljava/util/List;)Ljava/util/List;

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
    .line 31
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 33
    .local v8, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, "currentTime":J
    invoke-static {v0, v1}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeasonStartTime(J)J

    move-result-wide v2

    .line 36
    .local v2, "firstDayofSeason":J
    cmp-long v9, v0, v2

    if-lez v9, :cond_2

    sub-long v10, v0, v2

    const-wide/32 v12, 0xa4cb800

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 37
    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeasonStartTime(J)J

    move-result-wide v6

    .line 38
    .local v6, "lastSeasonStart":J
    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Lcom/miui/gallery/card/scenario/DateUtils;->getSeasonEndTime(J)J

    move-result-wide v4

    .line 40
    .local v4, "lastSeasonEnd":J
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

    .line 41
    :cond_0
    const/4 v9, 0x0

    .line 47
    .end local v4    # "lastSeasonEnd":J
    .end local v6    # "lastSeasonStart":J
    :goto_0
    return v9

    .line 43
    .restart local v4    # "lastSeasonEnd":J
    .restart local v6    # "lastSeasonStart":J
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->setStartTime(J)V

    .line 44
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/card/scenario/time/recent/LastSeasonScenario;->setEndTime(J)V

    .line 45
    const/4 v9, 0x1

    goto :goto_0

    .line 47
    .end local v4    # "lastSeasonEnd":J
    .end local v6    # "lastSeasonStart":J
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method
