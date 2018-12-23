.class public Lcom/miui/gallery/preference/GalleryPreferences$Search;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# direct methods
.method public static getFeedbackReportedTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 829
    const-string v0, "search_feedback_task_reported_tags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserLastRequestOpenTime()J
    .locals 4

    .prologue
    .line 814
    const-string v0, "search_user_last_request_open_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isSearchCacheStatusOpen(Z)Z
    .locals 1
    .param p0, "defaultValue"    # Z

    .prologue
    .line 854
    const-string v0, "search_cache_status"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserSearchSwitchOpen(Z)Z
    .locals 1
    .param p0, "defaultValue"    # Z

    .prologue
    .line 802
    const-string v0, "search_user_switch_status"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserSearchSwitchSet()Z
    .locals 1

    .prologue
    .line 810
    const-string v0, "search_user_switch_status"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static remove()V
    .locals 1

    .prologue
    .line 866
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->removeIsUserSearchSwitchOpen()V

    .line 868
    const-string v0, "search_feedback_task_reported_tags"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 869
    const-string v0, "search_user_last_request_open_time"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->removeSearchCacheStatus()V

    .line 871
    return-void
.end method

.method public static removeIsUserSearchSwitchOpen()V
    .locals 1

    .prologue
    .line 822
    const-string v0, "search_user_switch_status"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public static removeSearchCacheStatus()V
    .locals 1

    .prologue
    .line 862
    const-string v0, "search_cache_status"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public static setFeedbackReportedTags(Ljava/lang/String;)V
    .locals 1
    .param p0, "tags"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v0, "search_feedback_task_reported_tags"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public static setIsSearchCacheStatusOpen(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 858
    const-string v0, "search_cache_status"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    return-void
.end method

.method public static setIsUserSearchSwitchOpen(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 806
    const-string v0, "search_user_switch_status"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 807
    return-void
.end method

.method public static setShouldShowFeedbackPolicy(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 850
    const-string v0, "search_feedback_task_should_show_policy"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 851
    return-void
.end method

.method public static setUserLastRequestOpenTime(J)V
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 818
    const-string v0, "search_user_last_request_open_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 819
    return-void
.end method

.method public static shouldShowFeedbackPolicy()Z
    .locals 2

    .prologue
    .line 843
    const-string v0, "search_feedback_task_should_show_policy"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
