.class public Lcom/miui/gallery/preference/GalleryPreferences$Assistant;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Assistant"
.end annotation


# direct methods
.method public static getLastGuaranteeTriggerTime()J
    .locals 4

    .prologue
    .line 1396
    const-string v0, "assistant_last_guarantee_trigger_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastTriggerTime()J
    .locals 4

    .prologue
    .line 1388
    const-string v0, "assistant_last_trigger_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasCardEver()Z
    .locals 2

    .prologue
    .line 1404
    const-string v0, "assistant_has_card_ever"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setHasCardEver()V
    .locals 2

    .prologue
    .line 1408
    const-string v0, "assistant_has_card_ever"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1409
    return-void
.end method

.method public static setLastGuaranteeTriggerTime(J)V
    .locals 2
    .param p0, "lastRequestTime"    # J

    .prologue
    .line 1400
    const-string v0, "assistant_last_guarantee_trigger_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 1401
    return-void
.end method

.method public static setLastTriggerTime(J)V
    .locals 2
    .param p0, "lastRequestTime"    # J

    .prologue
    .line 1392
    const-string v0, "assistant_last_trigger_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 1393
    return-void
.end method
