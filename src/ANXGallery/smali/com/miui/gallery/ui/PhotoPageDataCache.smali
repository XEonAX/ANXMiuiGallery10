.class public Lcom/miui/gallery/ui/PhotoPageDataCache;
.super Ljava/lang/Object;
.source "PhotoPageDataCache.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/ui/PhotoPageDataCache;


# instance fields
.field private mAppointedInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mArguments:Landroid/os/Bundle;

.field private mCacheItem:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemViewParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLayout:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPairKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/ui/PhotoPageDataCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllItemInfos()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v5

    .line 120
    .local v5, "parent":Landroid/view/ViewGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    if-eqz v5, :cond_1

    .line 122
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 123
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, "item":Landroid/view/View;
    const v6, 0x7f12001f

    invoke-virtual {v3, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 126
    .local v4, "itemPos":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 127
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "itemPos":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "item":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 131
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_2
    return-object v2
.end method

.method public static getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/ui/PhotoPageDataCache;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageDataCache;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PhotoPageDataCache;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/ui/PhotoPageDataCache;

    .line 44
    :cond_0
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageDataCache;->sInstance:Lcom/miui/gallery/ui/PhotoPageDataCache;

    return-object v0
.end method

.method private getViewParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preLoad(Landroid/content/Context;Lcom/miui/gallery/model/ImageLoadParams;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/miui/gallery/model/ImageLoadParams;

    .prologue
    const/4 v4, 0x0

    .line 221
    if-eqz p1, :cond_1

    .line 222
    new-instance v7, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 223
    .local v7, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 224
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v0, v2, :cond_0

    .line 226
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 229
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->isSecret()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getSecretKey()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getRegionRectF()Landroid/graphics/RectF;

    move-result-object v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 250
    .end local v1    # "uri":Ljava/lang/String;
    .end local v7    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_1
    return-void

    .line 229
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local v7    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_2
    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPairKey:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPairKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 187
    const-string v0, "PhotoPageDataCache"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    .line 189
    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 192
    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 196
    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 200
    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    .line 205
    :cond_2
    return-void
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCacheItem()Landroid/view/View;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 159
    .restart local v0    # "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mCacheItem:Ljava/lang/ref/SoftReference;

    .line 162
    :cond_0
    const-string v1, "PhotoPageDataCache"

    const-string v2, "cache item %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-object v0
.end method

.method public getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 19
    .param p1, "tarPos"    # I

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getViewParent()Landroid/view/ViewGroup;

    move-result-object v17

    .line 75
    .local v17, "parent":Landroid/view/ViewGroup;
    if-eqz v17, :cond_5

    .line 76
    const v15, 0x7fffffff

    .line 77
    .local v15, "minPos":I
    const/high16 v13, -0x80000000

    .line 78
    .local v13, "maxPos":I
    const/16 v16, 0x0

    .line 79
    .local v16, "minPosChild":Landroid/view/View;
    const/4 v14, 0x0

    .line 80
    .local v14, "maxPosChild":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 81
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_3

    .line 82
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 83
    .local v11, "item":Landroid/view/View;
    const v2, 0x7f12001f

    invoke-virtual {v11, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    .line 84
    .local v12, "itemPos":Ljava/lang/Object;
    if-eqz v12, :cond_2

    .line 85
    check-cast v12, Ljava/lang/Integer;

    .end local v12    # "itemPos":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 86
    .local v18, "position":I
    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v11, v2}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v2

    .line 115
    .end local v8    # "childCount":I
    .end local v9    # "i":I
    .end local v11    # "item":Landroid/view/View;
    .end local v13    # "maxPos":I
    .end local v14    # "maxPosChild":Landroid/view/View;
    .end local v15    # "minPos":I
    .end local v16    # "minPosChild":Landroid/view/View;
    .end local v18    # "position":I
    :goto_1
    return-object v2

    .line 89
    .restart local v8    # "childCount":I
    .restart local v9    # "i":I
    .restart local v11    # "item":Landroid/view/View;
    .restart local v13    # "maxPos":I
    .restart local v14    # "maxPosChild":Landroid/view/View;
    .restart local v15    # "minPos":I
    .restart local v16    # "minPosChild":Landroid/view/View;
    .restart local v18    # "position":I
    :cond_0
    move/from16 v0, v18

    if-ge v0, v15, :cond_1

    .line 90
    move/from16 v15, v18

    .line 91
    move-object/from16 v16, v11

    .line 93
    :cond_1
    move/from16 v0, v18

    if-le v0, v13, :cond_2

    .line 94
    move/from16 v13, v18

    .line 95
    move-object v14, v11

    .line 81
    .end local v18    # "position":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 99
    .end local v11    # "item":Landroid/view/View;
    :cond_3
    if-eqz v16, :cond_4

    move/from16 v0, p1

    if-ge v0, v15, :cond_4

    .line 100
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v10

    .line 101
    .local v10, "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    new-instance v2, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v4

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v3

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v7

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/photoview/ItemViewInfo;-><init>(IIIII)V

    goto :goto_1

    .line 103
    .end local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    :cond_4
    if-eqz v14, :cond_5

    move/from16 v0, p1

    if-le v0, v13, :cond_5

    .line 104
    invoke-static {v14, v15}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v10

    .line 105
    .restart local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    new-instance v2, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v4

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v3

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v7

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/util/photoview/ItemViewInfo;-><init>(IIIII)V

    goto :goto_1

    .line 108
    .end local v8    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v13    # "maxPos":I
    .end local v14    # "maxPosChild":Landroid/view/View;
    .end local v15    # "minPos":I
    .end local v16    # "minPosChild":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 110
    .restart local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    invoke-virtual {v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getPosition()I

    move-result v3

    move/from16 v0, p1

    if-ne v3, v0, :cond_6

    move-object v2, v10

    .line 111
    goto/16 :goto_1

    .line 115
    .end local v10    # "info":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public getPageLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 174
    .restart local v0    # "item":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPageLayout:Ljava/lang/ref/SoftReference;

    .line 177
    :cond_0
    const-string v1, "PhotoPageDataCache"

    const-string v2, "page layout %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreInstance(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const-string v1, "key_save_arguments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageDataCache;->setArguments(Landroid/os/Bundle;)V

    .line 147
    const-string v1, "key_save_iteminfos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->setAppointedItemViewInfos(Ljava/util/List;)V

    .line 149
    return-void
.end method

.method public saveInstance(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 139
    const-string v1, "photo_enter_transit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v1, "key_save_arguments"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    :cond_0
    const-string v1, "key_save_iteminfos"

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getAllItemInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    return-void
.end method

.method public setAppointedItemViewInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mAppointedInfos:Ljava/util/List;

    .line 153
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const-string v0, "PhotoPageDataCache"

    const-string v1, "setArguments %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPairKey:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mPairKey:J

    .line 56
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mArguments:Landroid/os/Bundle;

    .line 57
    return-void
.end method

.method public setItemViewParent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageDataCache;->mItemViewParent:Ljava/lang/ref/WeakReference;

    .line 67
    :cond_0
    return-void
.end method
