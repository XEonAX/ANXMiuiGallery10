.class public Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;
.super Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;
.source "ExistImageFeatureChargingTask.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;-><init>(I)V

    .line 24
    return-void
.end method

.method private recordTriggerEvent()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 50
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Trigger_Date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "assistant"

    const-string v2, "assistant_schedule_exist_image_charging_task"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->process(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public process(Lorg/json/JSONObject;)Z
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->recordTriggerEvent()V

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->getToProcessImages()Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "toProcessImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->processImages(Lorg/json/JSONObject;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->TAG:Ljava/lang/String;

    const-string v2, "Have more un processed images,schedule next ExistImageFeatureTask"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    const-class v4, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 45
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;->rescheduleBrokenImages()V

    goto :goto_0
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
