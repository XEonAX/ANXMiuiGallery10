.class public Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
.super Ljava/lang/Object;
.source "ImageFeatureCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;,
        Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;
    }
.end annotation


# instance fields
.field private mGroupBestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;",
            ">;"
        }
    .end annotation
.end field

.field private mImageTinyFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;-><init>()V

    return-void
.end method

.method private addImageFeature(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V
    .locals 4
    .param p1, "imageFeature"    # Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillTinyFeaturesFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 208
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    invoke-direct {v0, p2}, Lcom/miui/gallery/assistant/model/TinyImageFeature;-><init>(Landroid/database/Cursor;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_1
    return-void
.end method

.method private declared-synchronized getAllImageFeatures()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v9, "allFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "imageId ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 182
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v9, v10}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->fillTinyFeaturesFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-object v9

    .line 178
    .end local v9    # "allFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getImageFeaturesById(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/TinyImageFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v10, "features":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "imageId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, ","

    .line 196
    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "imageId ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 200
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v10, v9}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->fillTinyFeaturesFromCursor(Ljava/util/List;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v3    # "selection":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    monitor-exit p0

    return-object v10

    .line 193
    .end local v10    # "features":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getImagesByGroup(J)Ljava/util/List;
    .locals 13
    .param p1, "clusterGroupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 126
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v11, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    sget-object v2, Lcom/miui/gallery/assistant/model/TinyImageFeature;->PROJECTION_GROUP:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_IQA_CLUSTER_SELECTION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "clusterGroupId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "imageId ASC"

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/GalleryEntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 131
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 133
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v10

    .line 137
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageFeatureCacheManager"

    const-string v1, "init mGroupBestMap fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 142
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v11

    .line 139
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;->access$100()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initGroupBestMap()V
    .locals 4

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 226
    .local v1, "imageFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 228
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v1    # "imageFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 231
    .restart local v1    # "imageFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V
    .locals 5
    .param p1, "imageFeature"    # Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .param p2, "isNewAdded"    # Z

    .prologue
    .line 240
    monitor-enter p0

    if-nez p1, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 241
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 243
    .local v0, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz p2, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->increase()V

    .line 246
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->tryReplcae(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 248
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;-><init>(ILcom/miui/gallery/assistant/model/TinyImageFeature;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .locals 3
    .param p1, "imageId"    # J

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 8

    .prologue
    const/16 v4, 0x10

    .line 48
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-nez v5, :cond_4

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 50
    .local v2, "start":J
    invoke-direct {p0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getAllImageFeatures()Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    invoke-direct {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v6, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    .line 52
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    :cond_0
    invoke-direct {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v5, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    .line 53
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 55
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    iget-object v5, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 48
    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v1    # "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .end local v2    # "start":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .restart local v2    # "start":J
    :cond_1
    move v5, v4

    .line 51
    goto :goto_0

    .line 57
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->initGroupBestMap()V

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    .line 61
    const-string v4, "ImageFeatureCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialize use time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v4, "ImageFeatureCacheManager"

    const-string v5, "ImageFeature count: %d ; Cluster group count: %d "

    iget-object v6, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mImageTinyFeatureMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v1    # "imageFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    .end local v2    # "start":J
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public isBestImage(JZ)Z
    .locals 9
    .param p1, "imageId"    # J
    .param p3, "considerSingleImage"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v1

    .line 161
    .local v1, "imageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    iget-boolean v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 162
    iget-object v4, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 163
    .local v0, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    iget v4, v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    if-le v4, v2, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mBestImage:Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 166
    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 168
    .end local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :goto_0
    return v2

    .restart local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :cond_1
    move v2, v3

    .line 166
    goto :goto_0

    .end local v0    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    :cond_2
    move v2, v3

    .line 168
    goto :goto_0
.end method

.method public declared-synchronized onImageDelete(J)Z
    .locals 13
    .param p1, "imageId"    # J

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v6

    .line 97
    .local v6, "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    iget-boolean v8, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mInitialized:Z

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 98
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "imageType"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v8, "%s = %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "imageId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 100
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v8

    const-class v9, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v5, v10}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 104
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getClusterGroupId()J

    move-result-wide v0

    .line 105
    .local v0, "clusterGroupId":J
    iget-object v8, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    .line 106
    .local v2, "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    if-eqz v2, :cond_0

    .line 107
    iget v8, v2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->mImageCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 108
    iget-object v8, p0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->mGroupBestMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    const/4 v8, 0x1

    .line 121
    .end local v0    # "clusterGroupId":J
    .end local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v8

    .line 110
    .restart local v0    # "clusterGroupId":J
    .restart local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->clear()V

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImagesByGroup(J)Ljava/util/List;

    move-result-object v3

    .line 112
    .local v3, "groupImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 114
    .local v4, "image":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->refreshGroupBestMap(Lcom/miui/gallery/assistant/model/TinyImageFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 96
    .end local v0    # "clusterGroupId":J
    .end local v2    # "groupBestImage":Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;
    .end local v3    # "groupImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "image":Ljava/lang/Long;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 121
    .restart local v6    # "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onImageFeaturesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "imageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeaturesById(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "tinyFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/TinyImageFeature;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/TinyImageFeature;

    .line 83
    .local v0, "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->addImageFeature(Lcom/miui/gallery/assistant/model/TinyImageFeature;)V

    goto :goto_0

    .line 86
    .end local v0    # "tinyFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    :cond_0
    return-void
.end method
