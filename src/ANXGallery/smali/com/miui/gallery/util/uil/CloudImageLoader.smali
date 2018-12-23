.class public Lcom/miui/gallery/util/uil/CloudImageLoader;
.super Ljava/lang/Object;
.source "CloudImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;,
        Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;,
        Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;,
        Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;,
        Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;,
        Lcom/miui/gallery/util/uil/CloudImageLoader$DecodeListenerWrapper;,
        Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;
    }
.end annotation


# static fields
.field private static sLoader:Lcom/miui/gallery/util/uil/CloudImageLoader;


# instance fields
.field private final mDelayRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private volatile mPauseLoading:Z

.field private final mPendingRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

.field private final mRequestingRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$1;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;)V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .line 185
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/uil/CloudImageLoader$2;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;)V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPendingRequest:Ljava/util/Map;

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDelayRequest:Ljava/util/Map;

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 348
    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/uil/CloudImageLoader;ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/uil/CloudImageLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->dispatchMessage(ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    return-void
.end method

.method private cancelInvalidRequest(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 8
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 628
    if-nez p1, :cond_1

    .line 649
    :cond_0
    return-void

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getAllRequestingAware()Ljava/util/List;

    move-result-object v1

    .line 632
    .local v1, "requesting":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v2, "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 634
    .local v3, "value":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 635
    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalKey()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "requestKey":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isValidRequest(Ljava/lang/String;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 637
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    .end local v0    # "requestKey":Ljava/lang/String;
    .end local v3    # "value":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 642
    .restart local v3    # "value":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v5

    if-ne v5, p1, :cond_4

    .line 643
    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 644
    const-string v5, "CloudImageLoader"

    const-string v6, "cancel invalid request %s"

    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_1
.end method

.method private directShowImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 499
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 500
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$8;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dispatchListener(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;Z)V
    .locals 5
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;
    .param p2, "caller"    # Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;
    .param p3, "clean"    # Z

    .prologue
    .line 225
    invoke-direct {p0, p1, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getMatchAware(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Z)Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 227
    .local v0, "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    if-eqz v0, :cond_0

    .line 228
    invoke-interface {p2, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;->call(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V

    goto :goto_0

    .line 231
    .end local v0    # "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 232
    const-string v2, "CloudImageLoader"

    const-string v3, "The ref for %s should not be null"

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_2
    return-void
.end method

.method private dispatchMessage(ILcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 335
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    return-void
.end method

.method private doRequestDelay(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 8
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 593
    iget-object v5, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDelayRequest:Ljava/util/Map;

    monitor-enter v5

    .line 594
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDelayRequest:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 595
    .local v1, "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz v1, :cond_2

    .line 598
    monitor-enter v1

    .line 599
    :try_start_1
    invoke-static {v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->map2List(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 600
    .local v3, "validRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 601
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 602
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 603
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 604
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 605
    .local v0, "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isValidRequest(Ljava/lang/String;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 608
    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getInternalDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getLoadingListener()Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onInvalidDownloadItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    goto :goto_0

    .line 595
    .end local v0    # "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    .end local v1    # "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    .end local v3    # "validRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 601
    .restart local v1    # "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 612
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    .restart local v3    # "validRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :cond_1
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 614
    invoke-direct {p0, v3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->requestLoading(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 615
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 616
    .restart local v0    # "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->putToPending(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    goto :goto_1

    .line 621
    .end local v0    # "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    .end local v3    # "validRequests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :cond_2
    return-void
.end method

.method private static generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 340
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAllRequestingAware()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->map2List(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDelayMap(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/util/Map;
    .locals 3
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDelayRequest:Ljava/util/Map;

    monitor-enter v2

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDelayRequest:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 562
    .local v0, "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 564
    .restart local v0    # "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDelayRequest:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_0
    monitor-exit v2

    return-object v0

    .line 567
    .end local v0    # "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDelayMessage(Lcom/miui/gallery/sdk/download/DownloadType;)I
    .locals 2
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 571
    sget-object v0, Lcom/miui/gallery/util/uil/CloudImageLoader$10;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/DownloadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 577
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 573
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 575
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/miui/gallery/util/uil/CloudImageLoader;->sLoader:Lcom/miui/gallery/util/uil/CloudImageLoader;

    return-object v0
.end method

.method private getMatchAware(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Z)Ljava/util/List;
    .locals 5
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;
    .param p2, "clean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$300(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoader;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    monitor-enter v4

    .line 424
    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getRequestingAwareBy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 425
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    if-eqz p2, :cond_0

    .line 426
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->removeMatchAware(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    .line 428
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isValidRequest(Ljava/lang/String;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 428
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 435
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    :cond_2
    return-object v2
.end method

.method private getRequestingAwareBy(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->set2List(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const-class v1, Lcom/miui/gallery/util/uil/CloudImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/util/uil/CloudImageLoader;->sLoader:Lcom/miui/gallery/util/uil/CloudImageLoader;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/uil/CloudImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/util/uil/CloudImageLoader;->sLoader:Lcom/miui/gallery/util/uil/CloudImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :cond_0
    monitor-exit v1

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isValidRequest(Ljava/lang/String;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z
    .locals 1
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 363
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImageDelay(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V
    .locals 2
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getDelayMap(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/util/Map;

    move-result-object v0

    .line 552
    .local v0, "delayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    monitor-enter v0

    .line 553
    :try_start_0
    invoke-static {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->put(Ljava/util/Map;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->sendDelayMessage(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 556
    :cond_0
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static map2List(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/util/Set<TT;>;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 379
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 380
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Ljava/util/Set<TT;>;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 382
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-eqz v3, :cond_0

    .line 383
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v0    # "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_1
    return-object v2
.end method

.method private needCancelInvalidRequest(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
    .locals 4
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    const/4 v3, 0x1

    .line 290
    const-string v0, "CloudImageLoader"

    const-string v1, "onLoadingCancelled %s"

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$5;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->dispatchListener(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;Z)V

    .line 300
    return v3
.end method

.method private onFailLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
    .locals 4
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    const/4 v3, 0x1

    .line 304
    const-string v0, "CloudImageLoader"

    const-string v1, "onLoadingFailed %s"

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$6;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->dispatchListener(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;Z)V

    .line 315
    return v3
.end method

.method private onInvalidDownloadItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V
    .locals 1
    .param p1, "downloadUri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "loadingListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .prologue
    .line 762
    if-eqz p4, :cond_1

    .line 763
    if-nez p1, :cond_0

    const/4 p1, 0x0

    .end local p1    # "downloadUri":Landroid/net/Uri;
    :cond_0
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 766
    :cond_1
    return-void
.end method

.method private onProgressUpdate(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
    .locals 3
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    .line 319
    const-string v0, "CloudImageLoader"

    const-string v1, "onProgressUpdate %s"

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$7;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$7;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->dispatchListener(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;Z)V

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method private onStartLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
    .locals 3
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    .line 237
    const-string v0, "CloudImageLoader"

    const-string v1, "onStartLoading %s"

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$3;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->dispatchListener(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;Z)V

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method private onSuccessLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z
    .locals 4
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    const/4 v3, 0x1

    .line 251
    const-string v0, "CloudImageLoader"

    const-string v1, "onEndLoading remove requesting item %s"

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$4;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/miui/gallery/util/uil/CloudImageLoader;->dispatchListener(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;Lcom/miui/gallery/util/uil/CloudImageLoader$Caller;Z)V

    .line 286
    return v3
.end method

.method private static put(Ljava/util/Map;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z
    .locals 3
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;>;",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    const/4 v2, 0x0

    .line 695
    :goto_0
    return v2

    .line 690
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 691
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    if-nez v1, :cond_1

    .line 692
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 693
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private putToPending(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z
    .locals 2
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 705
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPendingRequest:Ljava/util/Map;

    monitor-enter v1

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPendingRequest:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->put(Ljava/util/Map;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putToRequesting(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z
    .locals 2
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    .line 699
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    monitor-enter v1

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->put(Ljava/util/Map;Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeMatchAware(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)V
    .locals 3
    .param p1, "wrapper"    # Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .prologue
    .line 439
    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$200(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;->access$300(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    monitor-enter v2

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit v2

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z
    .locals 11
    .param p1, "aware"    # Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 711
    iget-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_3

    .line 712
    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v9

    .line 713
    .local v9, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->putToRequesting(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v7

    .line 714
    .local v7, "putSuccess":Z
    invoke-virtual {p0, v9}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v9}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v8, v10

    .line 715
    .local v8, "queueFirst":Z
    :cond_1
    invoke-virtual {p0, v9}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v6

    .line 716
    .local v6, "interruptExecuting":Z
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    .line 717
    invoke-static {v9}, Lcom/miui/gallery/Config$ImageDownload;->requireWLAN(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 718
    invoke-virtual {v0, v8}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setQueueFirst(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v0, v6}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setInterruptExecuting(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v3

    .line 721
    .local v3, "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    iget-object v5, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/sdk/download/ImageDownloader;->load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)V

    .line 722
    if-eqz v7, :cond_2

    invoke-direct {p0, v9}, Lcom/miui/gallery/util/uil/CloudImageLoader;->needCancelInvalidRequest(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    invoke-direct {p0, v9}, Lcom/miui/gallery/util/uil/CloudImageLoader;->cancelInvalidRequest(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 727
    .end local v3    # "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    .end local v6    # "interruptExecuting":Z
    .end local v7    # "putSuccess":Z
    .end local v8    # "queueFirst":Z
    .end local v9    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_2
    :goto_0
    return v10

    :cond_3
    move v10, v8

    goto :goto_0
.end method

.method private requestLoading(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "awares":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 735
    iget-boolean v0, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_5

    .line 736
    const/4 v9, 0x0

    .line 737
    .local v9, "putSuccess":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 738
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 739
    .local v6, "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    invoke-virtual {v6}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v11

    .line 740
    .local v11, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-direct {p0, v6}, Lcom/miui/gallery/util/uil/CloudImageLoader;->putToRequesting(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 741
    invoke-virtual {p0, v11}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v11}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v10, v13

    .line 742
    .local v10, "queueFirst":Z
    :goto_1
    invoke-virtual {p0, v11}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    move v8, v13

    .line 743
    .local v8, "interruptExecuting":Z
    :goto_2
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    .line 744
    invoke-static {v11}, Lcom/miui/gallery/Config$ImageDownload;->requireWLAN(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 745
    invoke-virtual {v0, v10}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setQueueFirst(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 746
    invoke-virtual {v0, v8}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setInterruptExecuting(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v3

    .line 748
    .local v3, "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {v6}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    iget-object v5, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/sdk/download/ImageDownloader;->load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)V

    .line 737
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v3    # "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    .end local v8    # "interruptExecuting":Z
    .end local v10    # "queueFirst":Z
    :cond_1
    move v10, v12

    .line 741
    goto :goto_1

    .restart local v10    # "queueFirst":Z
    :cond_2
    move v8, v12

    .line 742
    goto :goto_2

    .line 750
    .end local v6    # "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    .end local v10    # "queueFirst":Z
    .end local v11    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 751
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v11

    .line 752
    .restart local v11    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-direct {p0, v11}, Lcom/miui/gallery/util/uil/CloudImageLoader;->needCancelInvalidRequest(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 753
    invoke-direct {p0, v11}, Lcom/miui/gallery/util/uil/CloudImageLoader;->cancelInvalidRequest(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 758
    .end local v7    # "i":I
    .end local v9    # "putSuccess":Z
    .end local v11    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_4
    :goto_3
    return v13

    :cond_5
    move v13, v12

    goto :goto_3
.end method

.method private sendDelayMessage(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 6
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getDelayMessage(Lcom/miui/gallery/sdk/download/DownloadType;)I

    move-result v0

    .line 583
    .local v0, "delayWhat":I
    if-ltz v0, :cond_0

    .line 584
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 586
    .local v1, "message":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 587
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 589
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static set2List(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 368
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    if-eqz p0, :cond_0

    .line 369
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 370
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 674
    invoke-static {p1, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPendingRequest:Ljava/util/Map;

    monitor-enter v2

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPendingRequest:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 679
    invoke-virtual {p0, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 681
    :goto_0
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 683
    :cond_0
    return-void

    .line 677
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 680
    :cond_1
    sget-object p2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0
.end method

.method public displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZ)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "regionRect"    # Landroid/graphics/RectF;
    .param p7, "delayRequest"    # Z
    .param p8, "showLoadingImage"    # Z

    .prologue
    .line 457
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/miui/gallery/util/uil/CloudImageLoader;->displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;ZZ)V

    .line 458
    return-void
.end method

.method public displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .param p7, "progressListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .prologue
    .line 462
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/miui/gallery/util/uil/CloudImageLoader;->displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;ZZ)V

    .line 463
    return-void
.end method

.method public displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;ZZ)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p6, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .param p7, "progressListener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .param p8, "regionDecodeRect"    # Landroid/graphics/RectF;
    .param p9, "delayRequest"    # Z
    .param p10, "showLoadingImage"    # Z

    .prologue
    .line 468
    if-nez p1, :cond_2

    .line 469
    const-string v7, "CloudImageLoader"

    const-string v8, "Can\'t display an image with null uri"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/util/uil/CloudImageLoader;->directShowImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 473
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onInvalidDownloadItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 477
    .local v16, "id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v16, v8

    if-gtz v7, :cond_4

    .line 478
    const-string v7, "CloudImageLoader"

    const-string v8, "Can\'t display an image with illegal id %s"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnFail()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/util/uil/CloudImageLoader;->directShowImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 482
    :cond_3
    if-eqz p6, :cond_1

    .line 483
    sget-object v7, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v7}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 487
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p10, :cond_5

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/util/uil/CloudImageLoader;->directShowImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 490
    :cond_5
    new-instance v6, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-direct/range {v6 .. v15}, Lcom/miui/gallery/util/uil/CloudImageLoader$WeakRefViewAwareImp;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 491
    .local v6, "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    sget-object v7, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    move-object/from16 v0, p2

    if-eq v0, v7, :cond_6

    if-eqz p9, :cond_7

    .line 492
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/gallery/util/uil/CloudImageLoader;->loadImageDelay(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)V

    goto :goto_0

    .line 493
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/gallery/util/uil/CloudImageLoader;->requestLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/gallery/util/uil/CloudImageLoader;->putToPending(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    goto/16 :goto_0
.end method

.method public getStatusAsync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "callBack"    # Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;

    .prologue
    .line 782
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gallery/util/uil/CloudImageLoader$9;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 794
    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 795
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "item":Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 197
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "item":Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;
    check-cast v0, Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;

    .line 199
    .restart local v0    # "item":Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 217
    :goto_0
    return v1

    .line 201
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onStartLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z

    move-result v1

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onSuccessLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z

    move-result v1

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onCancelLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z

    move-result v1

    goto :goto_0

    .line 207
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onFailLoading(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z

    move-result v1

    goto :goto_0

    .line 209
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onProgressUpdate(Lcom/miui/gallery/util/uil/CloudImageLoader$DownloadWrapper;)Z

    move-result v1

    goto :goto_0

    .line 211
    :pswitch_5
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->doRequestDelay(Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_0

    .line 214
    :pswitch_6
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->doRequestDelay(Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 769
    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequesting(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 777
    invoke-static {p1, p2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mPendingRequest:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/util/uil/CloudImageLoader;->mRequestingRequest:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 773
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImages(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoadingListener;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p2, "imageTypes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/DownloadType;>;"
    .local p3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingListener;>;"
    .local p4, "progressListeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;>;"
    const/4 v9, 0x0

    .line 529
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    return-void

    .line 532
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 534
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 535
    const-string v0, "CloudImageLoader"

    const-string v1, "Null download uri!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/sdk/download/DownloadType;

    if-nez p3, :cond_2

    move-object v2, v9

    :goto_1
    invoke-direct {p0, v0, v1, v9, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->onInvalidDownloadItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 533
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 536
    :cond_2
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    goto :goto_1

    .line 539
    :cond_3
    new-instance v0, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/sdk/download/DownloadType;

    if-nez p3, :cond_4

    move-object v4, v9

    .line 540
    :goto_3
    if-nez p4, :cond_5

    move-object v5, v9

    :goto_4
    move-object v1, p0

    .line 541
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/uil/CloudImageLoader$NonViewAwareImp;-><init>(Lcom/miui/gallery/util/uil/CloudImageLoader;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)V

    .line 539
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 540
    :cond_4
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-object v4, v1

    goto :goto_3

    .line 541
    :cond_5
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    move-object v5, v1

    goto :goto_4

    .line 543
    :cond_6
    invoke-direct {p0, v8}, Lcom/miui/gallery/util/uil/CloudImageLoader;->requestLoading(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;

    .line 545
    .local v6, "aware":Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;
    invoke-direct {p0, v6}, Lcom/miui/gallery/util/uil/CloudImageLoader;->putToPending(Lcom/miui/gallery/util/uil/CloudImageLoader$ViewAware;)Z

    goto :goto_5
.end method
