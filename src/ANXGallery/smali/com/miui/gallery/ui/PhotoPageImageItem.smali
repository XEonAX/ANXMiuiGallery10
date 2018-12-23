.class public Lcom/miui/gallery/ui/PhotoPageImageItem;
.super Lcom/miui/gallery/ui/PhotoPageItem;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z

.field private static sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;


# instance fields
.field private mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

.field private mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

.field private mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

.field private mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

.field private mIsImageFirstDisplay:Z

.field private volatile mIsSupportRegion:Z

.field private mMaxScale:F

.field private mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "PhotoPageImageItem"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->DEBUG_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    .line 93
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    .line 100
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageImageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/ui/PhotoPageImageItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    return p1
.end method

.method static synthetic access$1400()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->releaseRenderer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageImageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isRenderable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->DEBUG_ENABLE:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    return-object v0
.end method

.method private static getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$2;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    .line 234
    :cond_0
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    return-object v0
.end method

.method private isRenderable()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseRenderer()V
    .locals 3

    .prologue
    .line 598
    const-string v1, "PhotoPageImageItem"

    const-string v2, "releasing renderer"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    if-eqz v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .line 601
    .local v0, "api":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .line 602
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->release()V

    .line 604
    .end local v0    # "api":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    :cond_0
    return-void
.end method

.method private statMaxScale()V
    .locals 5

    .prologue
    .line 157
    const-string v2, "photo"

    const-string v3, "photo_item_select_count"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "maxScale"

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getBaseDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 163
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 164
    const-string v2, "maxScaleToOrigin"

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v0    # "baseRect":Landroid/graphics/RectF;
    :cond_0
    const-string v2, "photo"

    const-string v3, "photo_max_scale"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 1230
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 1231
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onUnSelected()V

    .line 1232
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->statMaxScale()V

    .line 1233
    return-void
.end method

.method protected createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-object v0
.end method

.method protected createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    return-object v0
.end method

.method protected displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "loadingListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 207
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$1;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 213
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v7, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 214
    .local v7, "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->access$300(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->resetRegionDecoderIfNeeded()V

    .line 222
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    .line 223
    return-void

    .line 217
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iget-object v5, v7, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mPostLoadListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_0
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 1216
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 1217
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 1219
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getBaseDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1220
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v1, v2, v3

    .line 1222
    .local v1, "scale":F
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1223
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    .line 1226
    .end local v1    # "scale":F
    :cond_0
    return-void
.end method

.method protected doOnSelected(Z)V
    .locals 1
    .param p1, "resumed"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(Z)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onSelected()V

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->onSelected()V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onSelected()V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onSelected()V

    .line 141
    return-void
.end method

.method protected doOnUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnUnSelected(Z)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onUnSelected()V

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->onUnSelected()V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onUnSelected()V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onUnSelected()V

    .line 150
    if-nez p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->statMaxScale()V

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    .line 154
    :cond_0
    return-void
.end method

.method protected getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 184
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/miui/gallery/util/ProcessingMediaHelper;->getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/ProcessingMediaHelper;->isMediaInProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {v0}, Lcom/miui/gallery/Config$ThumbConfig;->appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method protected getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p1, "loadThumbnail"    # Z

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 193
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 196
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 199
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isMediaInProcessing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-static {v0}, Lcom/miui/gallery/Config$BigPhotoConfig;->appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 202
    :cond_1
    return-object v0
.end method

.method public getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMediaInProcessing()Z
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->access$3200(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 4
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 1203
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 1204
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 1205
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1206
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1210
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1211
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isActionBarVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1212
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->access$400(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->release()V

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->release()V

    .line 131
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onDetachedFromWindow()V

    .line 132
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onFinishInflate()V

    .line 106
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    .line 107
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    .line 108
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .line 109
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    .line 110
    return-void
.end method

.method protected onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 3
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 117
    .local v0, "checkManager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isMediaInProcessing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->access$300(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 117
    :goto_0
    invoke-virtual {v2, v1}, Luk/co/senab/photoview/PhotoView;->setRegionDecodeEnable(Z)V

    .line 119
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V
    .locals 1
    .param p1, "processingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V

    .line 243
    :cond_0
    return-void
.end method

.method public swapItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v1, 0x1

    .line 173
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/model/BaseDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    .line 176
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    .line 178
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 179
    return-void
.end method
