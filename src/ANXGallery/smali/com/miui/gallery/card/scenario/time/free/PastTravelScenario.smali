.class public Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;
.super Lcom/miui/gallery/card/scenario/time/LocationScenario;
.source "PastTravelScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 31
    const/16 v0, 0xc9

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/gallery/card/scenario/time/LocationScenario;-><init>(III)V

    .line 32
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
    .line 84
    .local p2, "selectImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getDatePeriodFromRecord(Lcom/miui/gallery/card/scenario/Record;)Ljava/lang/String;

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
    .line 79
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
    .line 36
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/Record;>;"
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getRecordStartTimesFromRecordAndCards(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 38
    .local v12, "recordStarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->ALL_IMAGE_SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mixedDateTime ASC"

    new-instance v6, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario$1;-><init>(Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 48
    .local v7, "allImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const/4 v13, 0x0

    .line 51
    .local v13, "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v8, 0x0

    .line 53
    .local v8, "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 54
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 55
    .local v11, "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    if-nez v13, :cond_1

    .line 56
    move-object v13, v11

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    iget-object v1, v11, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    add-int/lit8 v0, v9, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    check-cast v8, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;

    .line 59
    .restart local v8    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    iget-wide v0, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    iget-wide v2, v8, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getMediaIdsByStartEndTime(JJ)Ljava/util/List;

    move-result-object v10

    .line 60
    .local v10, "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v0, v8, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    iget-wide v2, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x337f9800

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    if-eqz v10, :cond_2

    .line 61
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->getMinImageCount()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-wide v0, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->mTargetCity:Ljava/lang/String;

    .line 64
    iget-wide v0, v13, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->setStartTime(J)V

    .line 65
    iget-wide v0, v8, Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;->mDateTime:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/card/scenario/time/free/PastTravelScenario;->setEndTime(J)V

    .line 66
    const/4 v0, 0x1

    .line 74
    .end local v8    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v9    # "i":I
    .end local v10    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v11    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v13    # "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :goto_2
    return v0

    .line 68
    .restart local v8    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .restart local v9    # "i":I
    .restart local v10    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v11    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .restart local v13    # "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_2
    move-object v13, v11

    goto :goto_1

    .line 74
    .end local v8    # "endMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v9    # "i":I
    .end local v10    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v11    # "mediaItem":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    .end local v13    # "startMedia":Lcom/miui/gallery/card/scenario/time/LocationScenario$MediaItem;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
