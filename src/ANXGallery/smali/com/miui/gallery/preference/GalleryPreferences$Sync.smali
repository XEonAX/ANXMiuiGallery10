.class public Lcom/miui/gallery/preference/GalleryPreferences$Sync;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sync"
.end annotation


# static fields
.field private static final DEFAULT_AUTO_BATCH_DOWNLOAD:Z

.field private static final DEFAULT_DOWNLOAD_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownload()Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_AUTO_BATCH_DOWNLOAD:Z

    .line 371
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getAutoDownloadType()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "thumbnail"

    :goto_0
    sput-object v0, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_DOWNLOAD_TYPE:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "origin"

    goto :goto_0
.end method

.method public static getAutoDownloadTime()J
    .locals 4

    .prologue
    .line 458
    const-string v0, "auto_download_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBackupOnlyInWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 405
    invoke-static {}, Lcom/miui/gallery/util/FeatureUtil;->isSupportBackupOnlyWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    :goto_0
    return v0

    :cond_0
    const-string v1, "backup_only_in_wifi"

    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 3

    .prologue
    .line 474
    const-string v1, "download_type"

    sget-object v2, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_DOWNLOAD_TYPE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 481
    :goto_0
    return-object v1

    .line 478
    :cond_0
    const-string v1, "origin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 481
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEverRefillLocalGroupId()Z
    .locals 2

    .prologue
    .line 434
    const-string v0, "ever_refill_local_group_id"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEverSyncedSystemAlbum()Z
    .locals 2

    .prologue
    .line 442
    const-string v0, "ever_synced_system_album"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsPlugged()Z
    .locals 2

    .prologue
    .line 386
    const-string v0, "is_plugged"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPowerCanSync()Z
    .locals 2

    .prologue
    .line 378
    const-string v0, "power_can_sync"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSyncCompletelyFinish()Z
    .locals 2

    .prologue
    .line 394
    const-string/jumbo v0, "sync_completely_finish"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoDownload()Z
    .locals 2

    .prologue
    .line 466
    const-string v0, "auto_download"

    sget-boolean v1, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_AUTO_BATCH_DOWNLOAD:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDeviceStorageLow()Z
    .locals 2

    .prologue
    .line 498
    const-string v0, "device_storage_low"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEverAutoDownloaded()Z
    .locals 2

    .prologue
    .line 450
    const-string v0, "ever_auto_download"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static remove()V
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backup_only_in_wifi"

    .line 507
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_completely_finish"

    .line 508
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "slim_after_backuped_v2"

    .line 509
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ever_synced_system_album"

    .line 510
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ever_auto_download"

    .line 511
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_download_time"

    .line 512
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_type"

    .line 513
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_download"

    .line 514
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    return-void
.end method

.method public static setAutoDownload(Z)V
    .locals 1
    .param p0, "autoDownload"    # Z

    .prologue
    .line 470
    const-string v0, "auto_download"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    return-void
.end method

.method public static setAutoDownloadTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 462
    const-string v0, "auto_download_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 463
    return-void
.end method

.method public static setBackupOnlyInWifi(Z)V
    .locals 1
    .param p0, "onlyInWifi"    # Z

    .prologue
    .line 398
    invoke-static {}, Lcom/miui/gallery/util/FeatureUtil;->isSupportBackupOnlyWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "backup_only_in_wifi"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setDeviceStorageLow(Z)V
    .locals 1
    .param p0, "low"    # Z

    .prologue
    .line 502
    const-string v0, "device_storage_low"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    return-void
.end method

.method public static setDownloadType(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 3
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 485
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 486
    .local v0, "old":Lcom/miui/gallery/sdk/download/DownloadType;
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v1, :cond_2

    .line 487
    const-string v1, "download_type"

    const-string/jumbo v2, "thumbnail"

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_0
    if-eq v0, p0, :cond_1

    .line 492
    const-string v1, "auto_download_time"

    invoke-static {v1}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 493
    const-string v1, "ever_auto_download"

    invoke-static {v1}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 495
    :cond_1
    return-void

    .line 488
    :cond_2
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v1, :cond_0

    .line 489
    const-string v1, "download_type"

    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setEverAutoDownloaded()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "ever_auto_download"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    return-void
.end method

.method public static setEverRefillLocalGroupId()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "ever_refill_local_group_id"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    return-void
.end method

.method public static setEverSyncedSystemAlbum()V
    .locals 2

    .prologue
    .line 446
    const-string v0, "ever_synced_system_album"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    return-void
.end method

.method public static setIsPlugged(Z)V
    .locals 1
    .param p0, "isPlugged"    # Z

    .prologue
    .line 382
    const-string v0, "is_plugged"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    return-void
.end method

.method public static setPowerCanSync(Z)V
    .locals 1
    .param p0, "powerCanSync"    # Z

    .prologue
    .line 374
    const-string v0, "power_can_sync"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    return-void
.end method

.method public static setSyncCompletelyFinish(Z)V
    .locals 1
    .param p0, "syncCompletelyFinish"    # Z

    .prologue
    .line 390
    const-string/jumbo v0, "sync_completely_finish"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    return-void
.end method
