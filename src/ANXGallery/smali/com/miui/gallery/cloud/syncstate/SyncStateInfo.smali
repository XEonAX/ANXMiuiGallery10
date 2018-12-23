.class public Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
.super Ljava/lang/Object;
.source "SyncStateInfo.java"


# instance fields
.field private mCloudSpaceRemainingSize:J

.field private mCloudSpaceTotalSize:J

.field private mDirtySize:J

.field private mImageDirtyCount:I

.field private mImageSyncedCount:I

.field private volatile mInited:Z

.field private volatile mIsBatteryLow:Z

.field private volatile mIsCloudSpaceFull:Z

.field private volatile mIsDirtyChanged:Z

.field private volatile mIsLocalSpaceFull:Z

.field private volatile mIsSyncedChanged:Z

.field private mLock:Ljava/lang/Object;

.field private final mObservable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshTimeRunnable:Ljava/lang/Runnable;

.field private mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field private mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Lcom/miui/gallery/cloud/syncstate/SyncStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDirtyCount:I

.field private mVideoSyncedCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageSyncedCount:I

    .line 41
    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoSyncedCount:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$2;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 57
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 58
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateSyncStatus(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->doRefreshTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateSyncStatusInternal(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->triggerSync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsDirtyChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsDirtyChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsSyncedChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsSyncedChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->notifyObservers()V

    return-void
.end method

.method private canPendingHandle()Z
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->canUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsLocalSpaceFull:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSyncTag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 444
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canUpload()Z
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsMetaDataPending(Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 459
    if-eqz p1, :cond_0

    const-string v0, "com.miui.gallery.cloud.provider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsPending(Landroid/accounts/Account;)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->canPendingHandle()Z

    move-result v0

    .line 486
    .local v0, "canPendingHandled":Z
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->checkIsMetaDataPending(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 487
    const-string v2, "SyncStateInfo"

    const-string/jumbo v3, "sync pending"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIsSyncing(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v1, 0x1

    .line 463
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->canUpload()Z

    move-result v0

    .line 464
    .local v0, "canUpload":Z
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->checkIsSyncingMetaData(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->checkIsUploading()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIsSyncingMetaData(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->canSyncTag()Z

    move-result v0

    .line 450
    .local v0, "canSyncTag":Z
    if-eqz p1, :cond_0

    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 451
    const-string v1, "SyncStateInfo"

    const-string/jumbo v2, "sync active"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x1

    .line 455
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIsUploading()Z
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->isUploading()Z

    move-result v0

    return v0
.end method

.method private doRefreshTime()V
    .locals 0

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 500
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    iget-boolean v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mInited:Z

    if-eqz v1, :cond_2

    .line 262
    iget-object v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    monitor-enter v4

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    monitor-exit v4

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_1
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsCloudSpaceFull:Z

    .line 273
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    iput-boolean v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsLocalSpaceFull:Z

    .line 276
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    :goto_3
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsBatteryLow:Z

    goto :goto_0

    .line 266
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 268
    :cond_2
    iput-boolean v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mInited:Z

    goto :goto_1

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    move v1, v2

    .line 274
    goto :goto_2

    .line 277
    :cond_4
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v2

    goto :goto_3
.end method

.method public static isBackSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Z
    .locals 1
    .param p0, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 194
    if-eqz p0, :cond_1

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyObservers()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$1;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method private startRefreshTime()V
    .locals 6

    .prologue
    .line 503
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mRefreshTimeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$4;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mRefreshTimeRunnable:Ljava/lang/Runnable;

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->stopRefreshTime()V

    .line 511
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 513
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mRefreshTimeRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    :cond_1
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopRefreshTime()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mRefreshTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 520
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mRefreshTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    :cond_0
    return-void
.end method

.method private triggerSync(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    const-string v1, "SyncStateInfo"

    const-string/jumbo v2, "triggerSync"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v1, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 385
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 386
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 387
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v0

    .line 389
    .local v0, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {p1, v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 390
    return-void
.end method

.method private tryRefreshSyncType()V
    .locals 5

    .prologue
    .line 393
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne v0, v2, :cond_2

    .line 395
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getBackupOnlyInWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsBatteryLow:Z

    if-eqz v0, :cond_1

    .line 399
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 403
    :goto_0
    const-string v0, "SyncStateInfo"

    const-string v2, "refresh sync type %s to %s"

    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iget-object v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->notifyObservers()V

    .line 405
    monitor-exit v1

    .line 415
    :goto_1
    return-void

    .line 401
    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 408
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsBatteryLow:Z

    if-nez v0, :cond_3

    .line 409
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 410
    const-string v0, "SyncStateInfo"

    const-string v2, "refresh sync type %s to %s"

    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iget-object v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->notifyObservers()V

    .line 412
    monitor-exit v1

    goto :goto_1

    .line 414
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private updateDirtyCount(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 418
    invoke-static {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtyCount(Landroid/content/Context;)[I

    move-result-object v0

    .line 419
    .local v0, "dirtyCount":[I
    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageDirtyCount:I

    aget v2, v0, v4

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoDirtyCount:I

    aget v2, v0, v3

    if-eq v1, v2, :cond_1

    .line 420
    :cond_0
    aget v1, v0, v4

    iput v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageDirtyCount:I

    .line 421
    aget v1, v0, v3

    iput v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoDirtyCount:I

    .line 422
    iput-boolean v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsDirtyChanged:Z

    .line 423
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateDirtySize(Landroid/content/Context;)V

    .line 425
    :cond_1
    return-void
.end method

.method private updateDirtySize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    invoke-static {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtySize(Landroid/content/Context;)[J

    move-result-object v0

    .line 429
    .local v0, "size":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mDirtySize:J

    .line 430
    return-void
.end method

.method private updateSyncStatus(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 201
    :cond_0
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo$3;-><init>(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateTask:Landroid/os/AsyncTask;

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateTask:Landroid/os/AsyncTask;

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    return-void
.end method

.method private updateSyncStatusInternal(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->init(Landroid/content/Context;)V

    .line 286
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CTA_NOT_ALLOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 379
    :goto_0
    return-object v3

    .line 290
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 292
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 293
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_ACCOUNT:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->MASTER_SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 300
    :cond_2
    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 301
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_OFF:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 305
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v1

    .line 306
    .local v1, "hasFirstSynced":Z
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->checkIsSyncingMetaData(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 307
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateSyncedCount(Landroid/content/Context;)V

    .line 308
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING_METADATA:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 311
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateDirtyCount(Landroid/content/Context;)V

    .line 312
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->tryRefreshSyncType()V

    .line 314
    iget v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageDirtyCount:I

    if-nez v3, :cond_7

    iget v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoDirtyCount:I

    if-nez v3, :cond_7

    .line 315
    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    sget-object v4, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v3, v4, :cond_5

    if-nez v1, :cond_6

    .line 316
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->updateSyncedCount(Landroid/content/Context;)V

    .line 318
    :cond_6
    if-eqz v1, :cond_7

    .line 319
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 323
    :cond_7
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil;->isSyncPause(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 324
    const-string v3, "SyncStateInfo"

    const-string/jumbo v4, "start refresh time"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->startRefreshTime()V

    .line 326
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PAUSE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 328
    :cond_8
    const-string v3, "SyncStateInfo"

    const-string/jumbo v4, "stop refresh time"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->stopRefreshTime()V

    .line 332
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->checkIsSyncing(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 333
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 336
    :cond_9
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->checkIsPending(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 337
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto :goto_0

    .line 343
    :cond_a
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    .line 344
    invoke-static {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getCloudSpaceInfo(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;

    move-result-object v2

    .line 345
    .local v2, "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getTotal()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mCloudSpaceTotalSize:J

    .line 346
    iget-wide v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mCloudSpaceTotalSize:J

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getUsed()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mCloudSpaceRemainingSize:J

    .line 347
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->CLOUD_SPACE_FULL:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 350
    .end local v2    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    :cond_b
    iget-boolean v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsLocalSpaceFull:Z

    if-eqz v3, :cond_c

    .line 351
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYSTEM_SPACE_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 354
    :cond_c
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_d

    .line 355
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->DISCONNECTED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 358
    :cond_d
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    .line 359
    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    sget-object v4, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne v3, v4, :cond_e

    .line 360
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 361
    :cond_e
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getBackupOnlyInWifi()Z

    move-result v3

    if-nez v3, :cond_10

    .line 362
    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    sget-object v4, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v3, v4, :cond_f

    .line 363
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->triggerSync(Landroid/content/Context;)V

    .line 370
    :cond_f
    iget-boolean v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsBatteryLow:Z

    if-eqz v3, :cond_12

    .line 371
    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 372
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 366
    :cond_10
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 374
    :cond_11
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->BATTERY_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0

    .line 379
    :cond_12
    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    goto/16 :goto_0
.end method

.method private updateSyncedCount(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 433
    invoke-static {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getSyncedCount(Landroid/content/Context;)[I

    move-result-object v1

    .line 434
    .local v1, "syncedCount":[I
    const/4 v3, 0x0

    aget v0, v1, v3

    .line 435
    .local v0, "imageSynced":I
    aget v2, v1, v4

    .line 436
    .local v2, "videoSynced":I
    iget v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageSyncedCount:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoSyncedCount:I

    if-eq v2, v3, :cond_1

    .line 437
    :cond_0
    iput-boolean v4, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsSyncedChanged:Z

    .line 438
    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageSyncedCount:I

    .line 439
    iput v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoSyncedCount:I

    .line 441
    :cond_1
    return-void
.end method


# virtual methods
.method public getCloudSpaceRemainingSize()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mCloudSpaceRemainingSize:J

    return-wide v0
.end method

.method public getCloudSpaceTotalSize()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mCloudSpaceTotalSize:J

    return-wide v0
.end method

.method public getDirtyCount()[I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageDirtyCount:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoDirtyCount:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getDirtySize()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mDirtySize:J

    return-wide v0
.end method

.method public getResumeInterval(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil;->getResumeTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    return-object v0
.end method

.method public getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method

.method public getSyncedCount()[I
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mImageSyncedCount:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mVideoSyncedCount:I

    aput v2, v0, v1

    return-object v0
.end method

.method invalidate()V
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->hasCallbacksCompat(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "SyncStateInfo"

    const-string v1, "has pending runnable, ignore"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onSyncCommandDispatched()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 134
    return-void
.end method

.method registerObserver(Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The observer is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 144
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq v0, v1, :cond_2

    .line 147
    invoke-interface {p1, p0}, Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;->onSyncStateChanged(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 149
    :cond_2
    return-void
.end method

.method setIsBatteryLow(Z)V
    .locals 1
    .param p1, "isBatteryLow"    # Z

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsBatteryLow:Z

    if-eq v0, p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsBatteryLow:Z

    .line 116
    return-void
.end method

.method setIsLocalSpaceFull(Z)V
    .locals 1
    .param p1, "isLocalSpaceFull"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsLocalSpaceFull:Z

    if-eq v0, p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 122
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mIsLocalSpaceFull:Z

    .line 123
    return-void
.end method

.method setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)V
    .locals 4
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-eq v0, p1, :cond_0

    .line 97
    const-string v0, "SyncStateInfo"

    const-string v2, "setSyncType old: %s, new: %s"

    iget-object v3, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 101
    :cond_0
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterObserver(Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V
    .locals 5
    .param p1, "observer"    # Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 157
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 160
    .restart local v0    # "index":I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->mObservable:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 161
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void
.end method
