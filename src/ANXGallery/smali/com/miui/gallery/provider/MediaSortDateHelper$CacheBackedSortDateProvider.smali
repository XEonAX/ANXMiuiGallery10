.class Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;
.super Ljava/lang/Object;
.source "MediaSortDateHelper.java"

# interfaces
.implements Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/MediaSortDateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheBackedSortDateProvider"
.end annotation


# static fields
.field private static final DEFAULT_SORT_DATE:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;


# instance fields
.field private mFeatureStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

.field private mSortByModifyAlbumIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSortByModifyAlbumPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->CREATE_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    sput-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->DEFAULT_SORT_DATE:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getCachedSortByModifyAlbumPaths()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumPaths:Ljava/util/Set;

    .line 90
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->getCachedSortByModifyAlbumIds()Ljava/util/Set;

    move-result-object v1

    .line 91
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumIds:Ljava/util/Set;

    .line 93
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;-><init>(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;)V

    iput-object v2, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mFeatureStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .line 115
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v2

    const-string v3, "album-sort-date"

    iget-object v4, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mFeatureStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->registerStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .line 117
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 80
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->updateCacheInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;)Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mFeatureStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;
    .param p1, "x1"    # Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mFeatureStatusObserver:Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    return-object p1
.end method

.method private static updateCacheInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 150
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumSortDateStrategy()Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;

    move-result-object v9

    .line 151
    .local v9, "sortDateStrategy":Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;
    if-nez v9, :cond_0

    .line 152
    invoke-static {v4}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setCachedSortByModifyAlbumPaths(Ljava/util/Set;)V

    .line 180
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    sget-object v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;->DATE_MODIFIED:Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;

    .line 155
    invoke-virtual {v9, v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;->getAlbumPathsBySortDate(Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$SortDate;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v8, "cachePathSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setCachedSortByModifyAlbumPaths(Ljava/util/Set;)V

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, "cacheIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "%s COLLATE NOCASE IN (\'%s\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "local_path"

    aput-object v6, v5, v10

    const-string v6, "\', \'"

    .line 162
    invoke-static {v6, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$2;

    invoke-direct {v6}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$2;-><init>()V

    move-object v5, v4

    .line 160
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "cacheIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    check-cast v7, Ljava/util/HashSet;

    .line 178
    .restart local v7    # "cacheIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v7}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->setCachedSortByModifyAlbumIds(Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlbumIdsBySortDate(Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;)Ljava/util/List;
    .locals 2
    .param p1, "sortDate"    # Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumIds:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getAlbumPathsBySortDate(Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;)Ljava/util/List;
    .locals 2
    .param p1, "sortDate"    # Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumPaths:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumPaths:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDefaultSortDate()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->DEFAULT_SORT_DATE:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    return-object v0
.end method

.method public getSortDateByAlbumPath(Ljava/lang/String;)Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    .locals 2
    .param p1, "albumPath"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumPaths:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->mSortByModifyAlbumPaths:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->DEFAULT_SORT_DATE:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->DEFAULT_SORT_DATE:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    goto :goto_0
.end method
