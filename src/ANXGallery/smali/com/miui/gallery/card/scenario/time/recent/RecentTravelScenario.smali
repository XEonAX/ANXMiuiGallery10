.class public Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;
.super Lcom/miui/gallery/card/scenario/time/LocationScenario;
.source "RecentTravelScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x72

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/card/scenario/time/LocationScenario;-><init>(III)V

    .line 38
    return-void
.end method


# virtual methods
.method public generateDescription(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 1
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
    .line 117
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTitle(Lcom/miui/gallery/card/scenario/Record;Ljava/util/List;)Ljava/lang/String;
    .locals 5
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
    .line 112
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0577

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/card/scenario/Record;->getLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepare(Ljava/util/List;Ljava/util/List;)Z
    .locals 24
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
    .line 42
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 45
    .local v20, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/card/scenario/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v16

    .line 46
    .local v16, "now":J
    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateTime(J)J

    move-result-wide v12

    .line 47
    .local v12, "endTime":J
    const-wide v2, 0x9a7ec800L

    sub-long v22, v12, v2

    .line 49
    .local v22, "startTime":J
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v6, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->TIME_SELECTION:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 51
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v7, v8

    const/4 v8, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "mixedDateTime DESC"

    new-instance v8, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;)V

    .line 49
    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 60
    .local v18, "pastImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 107
    :goto_0
    return v2

    .line 64
    :cond_0
    const/4 v9, 0x0

    .line 65
    .local v9, "cityNow":Ljava/lang/String;
    const/4 v10, 0x0

    .line 66
    .local v10, "cityRecentImage":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/16 v19, 0x0

    .line 67
    .local v19, "recentCityImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 68
    .local v15, "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    if-nez v9, :cond_2

    .line 69
    iget-object v9, v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    .line 70
    goto :goto_1

    .line 73
    :cond_2
    if-eqz v19, :cond_3

    .line 74
    iget-object v3, v10, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    iget-object v4, v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_3
    iget-object v3, v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v15, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    move-object v10, v15

    .line 84
    iget-wide v4, v10, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    sub-long v4, v16, v4

    const-wide/32 v6, 0xf731400

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 85
    new-instance v19, Ljava/util/LinkedList;

    .end local v19    # "recentCityImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .restart local v19    # "recentCityImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 94
    .end local v15    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_5
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 96
    .local v11, "first":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 97
    .local v14, "last":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    iget-wide v2, v14, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    iget-wide v4, v11, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x337f9800

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    iget-wide v2, v11, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 100
    iget-object v2, v10, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->mTargetCity:Ljava/lang/String;

    .line 101
    iget-wide v2, v11, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->setStartTime(J)V

    .line 102
    iget-wide v2, v14, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/card/scenario/time/recent/RecentTravelScenario;->setEndTime(J)V

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 107
    .end local v11    # "first":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v14    # "last":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
