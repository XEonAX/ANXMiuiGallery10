.class public Lcom/miui/gallery/util/PreferenceCleaner;
.super Ljava/lang/Object;
.source "PreferenceCleaner.java"


# direct methods
.method public static clean()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Lcom/miui/gallery/util/PreferenceCleaner;->transferOldPreference()V

    .line 10
    return-void
.end method

.method private static transferOldPreference()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 13
    const-string v12, "old_preferences_transfered"

    invoke-static {v12, v11}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 51
    .local v0, "canConnectNetwork":Z
    .local v1, "cloudFaceStatus":I
    .local v2, "faceStatusNextCheckTime":J
    .local v4, "faceSwitchPending":Z
    .local v5, "interval":I
    .local v6, "onlySyncInWifi":Z
    .local v7, "remindNever":Z
    .local v8, "showHiddenAlbum":Z
    .local v9, "urlForQueuing":Ljava/lang/String;
    .local v10, "urlForWaiting":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 16
    .end local v0    # "canConnectNetwork":Z
    .end local v1    # "cloudFaceStatus":I
    .end local v2    # "faceStatusNextCheckTime":J
    .end local v4    # "faceSwitchPending":Z
    .end local v5    # "interval":I
    .end local v6    # "onlySyncInWifi":Z
    .end local v7    # "remindNever":Z
    .end local v8    # "showHiddenAlbum":Z
    .end local v9    # "urlForQueuing":Ljava/lang/String;
    .end local v10    # "urlForWaiting":Ljava/lang/String;
    :cond_1
    const-string v12, "old_preferences_transfered"

    invoke-static {v12, v7}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetSlideshowInterval()I

    move-result v12

    div-int/lit16 v5, v12, 0x3e8

    .line 20
    .restart local v5    # "interval":I
    const/4 v12, 0x3

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v13, 0xe10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->setSlideShowInterval(I)V

    .line 23
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsShowHidden()Z

    move-result v8

    .line 24
    .restart local v8    # "showHiddenAlbum":Z
    invoke-static {v8}, Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;->setShowHiddenAlbum(Z)V

    .line 26
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sOnlySyncInWifi()Z

    move-result v6

    .line 27
    .restart local v6    # "onlySyncInWifi":Z
    invoke-static {v6}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setBackupOnlyInWifi(Z)V

    .line 29
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetCloudFaceStatus()I

    move-result v1

    .line 30
    .restart local v1    # "cloudFaceStatus":I
    const-string v12, "cloud_face_status"

    invoke-static {v12, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetCloudFaceStatusNextCheckTime()J

    move-result-wide v2

    .line 33
    .restart local v2    # "faceStatusNextCheckTime":J
    const-string v12, "cloud_face_status_retry_time"

    invoke-static {v12, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 36
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFaceFeaturePending()Z

    move-result v4

    .line 37
    .restart local v4    # "faceSwitchPending":Z
    const-string v12, "face_feature_switch_pending"

    invoke-static {v12, v4}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFaceUrlForQueuing()Ljava/lang/String;

    move-result-object v9

    .line 41
    .restart local v9    # "urlForQueuing":Ljava/lang/String;
    const-string v12, "face_url_for_queuing"

    invoke-static {v12, v9}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFaceUrlForWaiting()Ljava/lang/String;

    move-result-object v10

    .line 44
    .restart local v10    # "urlForWaiting":Ljava/lang/String;
    const-string v12, "face_url_for_waiting"

    invoke-static {v12, v10}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sCanConnectNetworkByImpunity()Z

    move-result v0

    .line 47
    .restart local v0    # "canConnectNetwork":Z
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetImpunityDeclarationEveryTime()Z

    move-result v12

    if-nez v12, :cond_2

    .line 48
    .restart local v7    # "remindNever":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 49
    invoke-static {v7}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    goto :goto_0

    .end local v7    # "remindNever":Z
    :cond_2
    move v7, v11

    .line 47
    goto :goto_1
.end method
