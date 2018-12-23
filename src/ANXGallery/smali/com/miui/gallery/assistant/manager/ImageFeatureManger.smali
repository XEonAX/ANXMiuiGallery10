.class public Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;,
        Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;
    }
.end annotation


# instance fields
.field private final mImageDeleteRunnable:Ljava/lang/Runnable;

.field private final mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

.field private final mImageFileInfoQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCaculating:Z

.field private volatile mProcessingCount:I

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    invoke-direct {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFileInfoQueue:Ljava/util/Queue;

    .line 80
    iput v8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    .line 81
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 85
    iput-boolean v8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    .line 86
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageDeleteRunnable:Ljava/lang/Runnable;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->deleteImageFromCard()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->deleteImagesFromCard()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->scheduleNewImages()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupAndSaveAsyncInternal(Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$810(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)I
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->schedule()V

    return-void
.end method

.method private calculateImageGroupAndSaveAsyncInternal(Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 2
    .param p2, "listener"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 500
    const/4 v0, 0x1

    new-instance v1, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateClusterGroupAsync(Ljava/util/List;ZLcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 527
    return-void
.end method

.method private createImagesDeleteRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    return-object v0
.end method

.method private createNewImageCalculateRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    return-object v0
.end method

.method private deleteImageFromCard()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->createImagesDeleteRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method private declared-synchronized deleteImagesFromCard()V
    .locals 11

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v2, "imageId>0 AND version=2 AND imageType=2"

    .line 114
    .local v2, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 116
    .local v7, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    const-string v0, "ImageFeatureManger"

    const-string v1, "Delete %d images,search them in cards"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v8, "sha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 124
    .local v6, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v7    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v8    # "sha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    .restart local v2    # "selection":Ljava/lang/String;
    .restart local v7    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .restart local v8    # "sha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/card/CardManager;->onDeleteImages(Ljava/util/List;)V

    .line 131
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "imageType"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "%s IN (\'%s\')"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sha1"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\',\'"

    .line 135
    invoke-static {v4, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 133
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "updateSelection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v9, v3}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static filterNearByImages(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nearByImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const-wide/16 v10, 0x0

    .line 299
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 300
    .local v6, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 301
    const-wide/16 v4, 0x0

    .line 302
    .local v4, "lastGroupId":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 303
    .local v3, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v2

    .line 304
    .local v2, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    if-nez v2, :cond_0

    .line 305
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterGroupId()J

    move-result-wide v0

    .line 308
    .local v0, "groupId":J
    cmp-long v8, v0, v10

    if-nez v8, :cond_1

    .line 309
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    cmp-long v8, v4, v10

    if-nez v8, :cond_2

    .line 312
    move-wide v4, v0

    .line 313
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_2
    cmp-long v8, v4, v0

    if-nez v8, :cond_3

    .line 315
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    .end local v0    # "groupId":J
    .end local v2    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v3    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v4    # "lastGroupId":J
    :cond_3
    return-object v6
.end method

.method private getBatchImageAlgorithmRequest(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
    .locals 9
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 634
    if-eqz p7, :cond_0

    .line 635
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)V

    .line 637
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;->access$100()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v0

    return-object v0
.end method

.method private getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xe0

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 667
    :goto_0
    return-object v0

    .line 648
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 649
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 650
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 655
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v4, v5, :cond_1

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v4, v5, :cond_2

    :cond_1
    move-object v0, v3

    .line 656
    goto :goto_0

    .line 658
    :cond_2
    const/16 v3, 0x190

    const/16 v4, 0x190

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/assistant/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 660
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 661
    iget-object v3, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;->get(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 663
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ImageFeatureManger"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private markCaculateState(Z)Z
    .locals 3
    .param p1, "isCaculating"    # Z

    .prologue
    .line 286
    const-string v0, "ImageFeatureManger"

    const-string v1, "New image Caculating : %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    .line 288
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    return v0
.end method

.method private queryAndBindMediaItemsById(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    const/4 v4, 0x0

    .line 331
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .local v9, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Landroid/util/LongSparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 335
    .local v8, "imageFeatureLongSparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 336
    .local v7, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v7}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 339
    .end local v7    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    :cond_0
    const-string v0, "%s IN (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, ","

    .line 341
    invoke-static {v5, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 339
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mixedDateTime ASC"

    new-instance v6, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;

    invoke-direct {v6, p0, v8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Landroid/util/LongSparseArray;)V

    .line 342
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 364
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "imageFeatureLongSparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v9    # "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_1
.end method

.method public static queryNearByMediaItems(J)Ljava/util/List;
    .locals 8
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const-string v0, "%s < %s AND %s > %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "mixedDateTime"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 376
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "mixedDateTime"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-wide/32 v4, 0x36ee80

    sub-long v4, p0, v4

    .line 378
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    .line 374
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mixedDateTime DESC"

    new-instance v6, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$6;

    invoke-direct {v6}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$6;-><init>()V

    .line 379
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;->put(Landroid/graphics/Bitmap;)V

    .line 543
    return-void
.end method

.method private declared-synchronized schedule()V
    .locals 3

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    .line 582
    .local v0, "imageFileInfo":Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;
    if-eqz v0, :cond_0

    .line 583
    iget v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    .line 584
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    .end local v0    # "imageFileInfo":Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;
    :cond_0
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleNewImages()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 234
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "ImageFeatureManger"

    const-string v1, "Status meet,trigger new image feature calculation"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageType = 1 AND (resultFlag | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clusterGroupId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imageDatetime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v3, 0x0

    const-string v4, "imageDatetime DESC"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s,%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 248
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/16 v11, 0x14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 249
    .local v6, "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v6}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->queryAndBindMediaItemsById(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 252
    .local v8, "newImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->queryNearByMediaItems(J)Ljava/util/List;

    move-result-object v7

    .line 254
    .local v7, "nearByImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v7}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 255
    invoke-static {v7}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->filterNearByImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    new-instance v1, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    invoke-virtual {p0, v0, v8, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 278
    invoke-direct {p0, v13}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->markCaculateState(Z)Z

    move-result v0

    .line 282
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "imageFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v7    # "nearByImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v8    # "newImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v12}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->markCaculateState(Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public calculateClusterGroupAsync(Ljava/util/List;ZLcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 2
    .param p2, "saveRuslt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;Z",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .local p3, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Z)V

    .line 408
    .local v0, "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    invoke-virtual {v0, p3}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->setMainThreadListener(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 409
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->execute()V

    .line 411
    .end local v0    # "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    :cond_0
    return-void
.end method

.method public calculateClusterGroupSync(Ljava/util/List;Z)Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    .locals 3
    .param p2, "saveRuslt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;Z)",
            "Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Z)V

    .line 398
    .local v0, "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->executeSync()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    .line 400
    .end local v0    # "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;-><init>(I)V

    goto :goto_0
.end method

.method public calculateImageGroupWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 17
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p3, "listener"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 431
    const-string v3, "ImageFeatureManger"

    const-string v4, "Calculate imageGroup with algorithm async,image count:%d"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    const/4 v3, 0x1

    new-array v14, v3, [I

    const/4 v3, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    aput v4, v14, v3

    .line 433
    .local v14, "imageCount":[I
    new-instance v12, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v12, v0, v14, v1, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;[ILjava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 458
    .local v12, "newListener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 459
    .local v15, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    const/4 v11, 0x0

    .line 460
    .local v11, "algorithmFlag":I
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v3

    if-nez v3, :cond_1

    .line 461
    const/16 v11, 0x15

    .line 470
    :cond_0
    if-eqz v11, :cond_4

    .line 471
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getOriginPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 472
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v10

    .line 475
    .local v10, "path":Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v5

    .line 476
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 475
    invoke-virtual/range {v3 .. v12}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->handleImageFileWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    goto :goto_0

    .line 464
    .end local v10    # "path":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_0

    aget v13, v4, v3

    .line 465
    .local v13, "flag":I
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/miui/gallery/assistant/model/ImageFeature;->isFeatureDone(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 466
    invoke-static {v11, v13}, Lcom/miui/gallery/util/assistant/FlagUtil;->setFlag(II)I

    move-result v11

    .line 464
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 473
    .end local v13    # "flag":I
    :cond_3
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getOriginPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 480
    :cond_4
    const/4 v3, 0x0

    aget v4, v14, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v14, v3

    goto :goto_0

    .line 484
    .end local v11    # "algorithmFlag":I
    .end local v12    # "newListener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    .end local v14    # "imageCount":[I
    .end local v15    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_5
    if-eqz p3, :cond_6

    .line 485
    invoke-interface/range {p3 .. p3}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    .line 488
    :cond_6
    return-void
.end method

.method public handleImageFileWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 12
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "algorithmFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p9, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    const-string v0, "ImageFeatureManger"

    const-string v1, "handle Image %d With Algorithm Async"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    iget-object v10, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFileInfoQueue:Ljava/util/Queue;

    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->schedule()V

    .line 419
    return-void
.end method

.method public declared-synchronized handleImageFileWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    .locals 12
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v9, p8

    .line 534
    invoke-virtual/range {v1 .. v9}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->handleImageWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    move-result-object v10

    .line 535
    .local v10, "result":Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    invoke-direct {p0, v8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "result":Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    :goto_0
    monitor-exit p0

    return-object v10

    :cond_0
    :try_start_1
    new-instance v10, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    const/4 v1, 0x3

    invoke-direct {v10, v1, p2, p3}, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;-><init>(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleImageWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 1
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .line 568
    .local p9, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    invoke-direct/range {p0 .. p8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getBatchImageAlgorithmRequest(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;

    move-result-object v0

    .line 569
    .local v0, "batchImageAlgorithmRequest":Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {v0, p9}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->setMainThreadListener(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 571
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->execute()V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    if-eqz p9, :cond_0

    .line 574
    invoke-interface {p9}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    goto :goto_0
.end method

.method public handleImageWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    .locals 4
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 548
    .line 549
    invoke-direct/range {p0 .. p8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getBatchImageAlgorithmRequest(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;

    move-result-object v0

    .line 550
    .local v0, "batchImageAlgorithmRequest":Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->executeSync()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .line 553
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p2, p3}, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;-><init>(IJ)V

    goto :goto_0
.end method

.method public onImageDelete(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 202
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->onImageDelete(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "ImageFeatureManger"

    const-string v1, "Image %s delete or add to secret, delete them in cards"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageDeleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_0
    return-void
.end method

.method public onImageDelete(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 178
    .local v2, "imageId":J
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->onImageDelete(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2    # "imageId":J
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ImageFeatureManger"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordNewImage(JLandroid/content/ContentValues;)V
    .locals 15
    .param p1, "imageId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v12, 0x1

    .line 146
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isImageFeatureSelectionEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v3, "serverType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 151
    .local v11, "type":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v12, :cond_0

    .line 152
    const-string v3, "localFile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, "localFile":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-static {v9}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "folderPath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "relativePath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "ImageFeatureManger"

    const-string v4, "New camera file insert!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "sha1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "sha1":Ljava/lang/String;
    const-string v3, "mixedDateTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 166
    .local v6, "dataTime":J
    new-instance v2, Lcom/miui/gallery/assistant/model/ImageFeature;

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/assistant/model/ImageFeature;-><init>(JLjava/lang/String;J)V

    .line 167
    .local v2, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v2, v12}, Lcom/miui/gallery/assistant/model/ImageFeature;->setImageType(I)V

    .line 168
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 169
    const-string v3, "ImageFeatureManger"

    const-string v4, "insert image %d feature, image is New created"

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v3, v4, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public triggerNewImageCalculation()V
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isImageFeatureSelectionEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->createNewImageCalculateRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
