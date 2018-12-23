.class public abstract Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;
.super Lcom/miui/gallery/adapter/BaseMediaAdapter;
.source "BaseMediaSyncStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;,
        Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;
    }
.end annotation


# static fields
.field private static volatile sIsGalleryCloudSyncable:Z

.field private static volatile sIsLoginAccount:Z

.field private static sUpdateRunnable:Ljava/lang/Runnable;


# instance fields
.field protected mShowScene:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

.field protected mSyncStateDisplayOptions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;->SCENE_NONE:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    .prologue
    .line 25
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;
    .param p3, "syncStateDisplayOptions"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->mShowScene:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    .line 31
    iput p3, p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->mSyncStateDisplayOptions:I

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->updateGalleryCloudSyncableState()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sIsLoginAccount:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 11
    sput-boolean p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sIsLoginAccount:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sIsGalleryCloudSyncable:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 11
    sput-boolean p0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sIsGalleryCloudSyncable:Z

    return p0
.end method


# virtual methods
.method protected getSyncStateInternal(I)I
    .locals 1
    .param p1, "syncState"    # I

    .prologue
    .line 44
    sget-boolean v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sIsGalleryCloudSyncable:Z

    if-nez v0, :cond_0

    .line 45
    sget-boolean v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sIsLoginAccount:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 46
    const/4 p1, 0x4

    .line 51
    :cond_0
    :goto_0
    return p1

    .line 48
    :cond_1
    const p1, 0x7fffffff

    goto :goto_0
.end method

.method public updateGalleryCloudSyncableState()V
    .locals 4

    .prologue
    .line 36
    sget-object v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateRunnable;-><init>(Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;)V

    sput-object v0, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    .line 39
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter;->sUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    return-void
.end method
