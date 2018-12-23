.class public Lcom/miui/gallery/provider/cloudmanager/FileHandleService;
.super Landroid/app/Service;
.source "FileHandleService.java"

# interfaces
.implements Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mNeedNotifyUri:Z

.field private volatile mServiceHandler:Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mNeedNotifyUri:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cloudmanager/FileHandleService;
    .param p1, "x1"    # [J

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->handleRecords([J)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->stopSelfIfComplete()V

    return-void
.end method

.method public static checkUnhandledMedias(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "check_unhandled_media_ids"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method

.method public static dispatchTask(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "dirtyIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 57
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;

    invoke-static {p1}, Lcom/miui/gallery/util/Numbers;->toArray(Ljava/util/List;)[J

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;-><init>(Landroid/content/Context;[J)V

    invoke-virtual {v1, v3, v3}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    .line 58
    .local v0, "results":[J
    invoke-static {v0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->needNotifyUri([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->notifyUri(Landroid/content/Context;)V

    .line 60
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static execute(Landroid/content/Context;ZLjava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executeSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "dirtyIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    .line 45
    invoke-static {p0, p2}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->dispatchTask(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dispatch_media_ids"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    const-string v1, "ids"

    invoke-static {p2}, Lcom/miui/gallery/util/Numbers;->toArray(Ljava/util/List;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private handleRecords([J)V
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    invoke-direct {v0, p0, p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;-><init>(Landroid/content/Context;Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->submit([J)V

    .line 196
    return-void
.end method

.method private static needNotifyUri([J)Z
    .locals 10
    .param p0, "results"    # [J

    .prologue
    const/4 v4, 0x0

    .line 173
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_2

    :cond_0
    move v0, v4

    .line 180
    :cond_1
    return v0

    .line 176
    :cond_2
    const/4 v0, 0x0

    .line 177
    .local v0, "needNotifyUri":Z
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-wide v2, p0, v5

    .line 178
    .local v2, "result":J
    const-wide/16 v8, 0x1

    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v0, v1

    .line 177
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_3
    move v1, v4

    .line 178
    goto :goto_1
.end method

.method private static notifyUri(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 186
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 187
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 188
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 189
    return-void
.end method

.method private stopSelfIfComplete()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mNeedNotifyUri:Z

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "CloudManager.FileHandleService"

    const-string v1, "Stop self and request sync"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->stopSelf()V

    .line 206
    :cond_2
    return-void
.end method


# virtual methods
.method public onAllTaskExecuted()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->stopSelfIfComplete()V

    .line 162
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->stopSelfIfComplete()V

    .line 168
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CloudManager.FileHandleService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mServiceLooper:Landroid/os/Looper;

    .line 111
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;-><init>(Lcom/miui/gallery/provider/cloudmanager/FileHandleService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mServiceHandler:Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 131
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    .line 134
    .local v0, "executor":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mTaskExecutor:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;

    .line 135
    invoke-virtual {v0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->shutdown()V

    .line 137
    .end local v0    # "executor":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;
    :cond_0
    return-void
.end method

.method public onRecordsHandled([J[J)V
    .locals 3
    .param p1, "ids"    # [J
    .param p2, "results"    # [J

    .prologue
    .line 142
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 143
    :cond_0
    const-string v0, "CloudManager.FileHandleService"

    const-string v1, "Invalid results ids:%s, results:%s"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkManager;->doneHandleFileForMediaIds([J)Z

    .line 150
    const-string v0, "CloudManager.FileHandleService"

    const-string v1, "On receive results [%s]"

    const-string v2, ","

    invoke-static {v2, p2}, Lcom/miui/gallery/util/StringUtils;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-static {p2}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->needNotifyUri([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "CloudManager.FileHandleService"

    const-string v1, "Need notify uri"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->notifyUri(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mNeedNotifyUri:Z

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 121
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mServiceHandler:Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 123
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->mServiceHandler:Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    const/4 v1, 0x3

    return v1
.end method
