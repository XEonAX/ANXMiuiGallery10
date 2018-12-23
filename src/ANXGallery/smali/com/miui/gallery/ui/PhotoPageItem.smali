.class public abstract Lcom/miui/gallery/ui/PhotoPageItem;
.super Landroid/widget/RelativeLayout;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/util/photoview/TrimMemoryCallback;
.implements Lcom/miui/gallery/widget/slip/ISlipAnimView;
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;,
        Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;,
        Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;,
        Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;,
        Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;,
        Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;,
        Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;,
        Lcom/miui/gallery/ui/PhotoPageItem$InitTask;,
        Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;
    }
.end annotation


# static fields
.field private static sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private static sMenuBarHeight:I

.field private static sStatusBarHeight:I

.field private static sStrokeColor:I


# instance fields
.field private isActionBarVisible:Z

.field private isAnimEntering:Z

.field private isAnimExiting:Z

.field private isCacheImageLoading:Z

.field private isInitialized:Z

.field private isSelected:Z

.field private mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

.field protected mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

.field protected mDataItem:Lcom/miui/gallery/model/BaseDataItem;

.field protected mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

.field protected mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

.field private mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mInitTask:Landroid/os/AsyncTask;

.field private mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mMemoryTrimFlags:I

.field protected mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

.field protected mPhotoView:Luk/co/senab/photoview/PhotoView;

.field private mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 113
    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    .line 114
    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    .line 130
    const/high16 v0, -0x80000000

    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    .line 134
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$BigPhotoConfig;->BIG_PHOTO_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 136
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler(Landroid/os/Handler;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$1;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 140
    :cond_0
    sget v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    .line 143
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/PhotoPageItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->canDoSelected()Z

    move-result v0

    return v0
.end method

.method private canDoSelected()Z
    .locals 6

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 564
    .local v0, "can":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string v1, "PhotoPageItem"

    const-string v2, "canDoSelected %s, isAnimEntering %s, isInitialized %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 567
    :cond_0
    return v0

    .line 563
    .end local v0    # "can":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayCacheImage(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v0, v2, :cond_0

    .line 180
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/ImageLoadParams;->setPath(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;Z)V

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 186
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getRegionRectF()Landroid/graphics/RectF;

    move-result-object v7

    move-object v5, p3

    .line 183
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 187
    return-void
.end method

.method private executeInitTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    .line 394
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 397
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;Lcom/miui/gallery/ui/PhotoPageItem$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    .line 398
    return-void
.end method

.method private getCacheImageLoadingListener()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$2;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 244
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    return-object v0
.end method

.method private getImageLoadingListener()Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$1;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 223
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    return-object v0
.end method

.method private isPathValidate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActionModeChanged(Z)V
    .locals 3
    .param p1, "inAction"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setZoomable(Z)V

    .line 1493
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    sget v1, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/PhotoView;->setStroke(II)V

    .line 1501
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onActionModeChanged(Z)V

    .line 1502
    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1, v1}, Luk/co/senab/photoview/PhotoView;->setStroke(II)V

    .line 1496
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->displayImage(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1499
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->updateFeatures()V

    goto :goto_0
.end method


# virtual methods
.method public addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 625
    return-void
.end method

.method public animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 2
    .param p1, "enterInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 646
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$3;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/ui/PhotoPageItem$3;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 656
    .local v0, "tempListener":Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    .line 657
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, p1, v0}, Luk/co/senab/photoview/PhotoView;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 658
    return-void
.end method

.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting:Z

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1, p2}, Luk/co/senab/photoview/PhotoView;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 663
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->release()V

    .line 664
    return-void
.end method

.method protected createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-object v0
.end method

.method protected createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .locals 1

    .prologue
    .line 818
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-object v0
.end method

.method protected final displayImage(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 7
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v5, 0x0

    .line 373
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isMediaInProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const/4 v6, 0x0

    .line 375
    .local v6, "isMicro":Z
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "uri":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->isPathValidate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 377
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->isPathValidate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 380
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getMicroPath()Ljava/lang/String;

    move-result-object v1

    .line 381
    const/4 v6, 0x1

    .line 383
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v6, :cond_4

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->isPathValidate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :cond_4
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_5
    invoke-virtual {p0, v6}, Lcom/miui/gallery/ui/PhotoPageItem;->getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isMediaInProcessing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    :cond_6
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getMicroImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getImageLoadingListener()Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;

    move-result-object v4

    move-object v0, p0

    .line 387
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageItem;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_0

    :cond_7
    move-object v3, v5

    .line 388
    goto :goto_1
.end method

.method protected displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "loadingListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 439
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 440
    return-void
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 601
    return-void
.end method

.method protected doOnSelected(Z)V
    .locals 4
    .param p1, "resumed"    # Z

    .prologue
    .line 571
    const-string v0, "PhotoPageItem"

    const-string v1, "doOnSelected pos: %s, resumed: %s"

    const v2, 0x7f12001f

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onUnSelected()V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onSelected()V

    goto :goto_0
.end method

.method protected doOnUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 588
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onUnSelected()V

    .line 589
    return-void
.end method

.method public downloadOrigin()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin()V

    .line 639
    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->endCheck()V

    .line 1486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionModeChanged(Z)V

    .line 1488
    :cond_0
    return-void
.end method

.method protected getActionBarHeight()I
    .locals 5

    .prologue
    .line 1817
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->getActionBarHeight()I

    move-result v0

    .line 1818
    .local v0, "actionBarHeight":I
    if-lez v0, :cond_0

    move v1, v0

    .line 1825
    .end local v0    # "actionBarHeight":I
    .local v1, "actionBarHeight":I
    :goto_0
    return v1

    .line 1821
    .end local v1    # "actionBarHeight":I
    .restart local v0    # "actionBarHeight":I
    :cond_0
    sget v2, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1822
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    .line 1824
    :cond_1
    sget v2, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    move v1, v0

    .line 1825
    .end local v0    # "actionBarHeight":I
    .restart local v1    # "actionBarHeight":I
    goto :goto_0
.end method

.method protected getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getSecretKey()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getFileLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getFileLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 198
    :goto_0
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0

    .line 196
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_0
.end method

.method public getCacheItem()Lcom/miui/gallery/model/ImageLoadParams;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    return-object v0
.end method

.method protected getContentDescriptionForTalkBack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    .line 1837
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 1842
    :goto_0
    return-object v0

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1842
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataItem()Lcom/miui/gallery/model/BaseDataItem;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    return-object v0
.end method

.method protected getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 8
    .param p1, "loadThumbnail"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 445
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 450
    :goto_0
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 451
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    .line 453
    .local v0, "scheme":Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-eq v0, v1, :cond_0

    .line 454
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 457
    .end local v0    # "scheme":Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 458
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 459
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 463
    :goto_1
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    return-object v1

    .line 447
    :cond_1
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 448
    sget-object v4, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    .line 461
    :cond_3
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_1
.end method

.method protected getMenuBarHeight()I
    .locals 2

    .prologue
    .line 1829
    sget v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->getMenuBarHeight()I

    move-result v0

    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    .line 1832
    :cond_0
    sget v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrimMemoryCallback()Lcom/miui/gallery/util/photoview/TrimMemoryCallback;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1794
    const/4 v0, 0x0

    return v0
.end method

.method protected final isActionBarVisible()Z
    .locals 1

    .prologue
    .line 1813
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible:Z

    return v0
.end method

.method protected isAnimEntering()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    return v0
.end method

.method protected isAnimExiting()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting:Z

    return v0
.end method

.method protected isInActionMode()Z
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    return v0
.end method

.method protected isInitialized()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    return v0
.end method

.method protected isMediaInProcessing()Z
    .locals 1

    .prologue
    .line 1523
    const/4 v0, 0x0

    return v0
.end method

.method protected isPagerSelected()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    return v0
.end method

.method public loadCacheImage(Lcom/miui/gallery/model/ImageLoadParams;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;

    .prologue
    const/4 v2, 0x1

    .line 168
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 170
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 171
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMemoryOnly(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 172
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 173
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->displayCacheImage(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 175
    .end local v0    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_0
    return-void
.end method

.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 4
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 1798
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible:Z

    .line 1799
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1800
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1810
    return-void
.end method

.method protected onCacheImageLoadFinish(Z)V
    .locals 1
    .param p1, "cancelled"    # Z

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    .line 339
    if-nez p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 342
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1804
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1805
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1806
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 510
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 511
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->recycleBitmap()V

    .line 512
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 513
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->release()V

    .line 514
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->endCheck()V

    .line 515
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 517
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    .line 522
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 523
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 524
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoPageItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 525
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .line 526
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 527
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 528
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 529
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 530
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    .line 531
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    .line 532
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible:Z

    .line 533
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    .line 534
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting:Z

    .line 535
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    .line 536
    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    .line 537
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 538
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 498
    const v0, 0x7f120219

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Luk/co/senab/photoview/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 499
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .line 500
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    .line 501
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    .line 502
    return-void
.end method

.method protected onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 5
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 315
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 317
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 318
    .local v2, "ss":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 319
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq p1, v3, :cond_1

    .line 320
    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-ne p1, v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    :cond_0
    const v3, 0x7f0e0188

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setTip(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    .line 335
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "ss":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 325
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "ss":Ljava/lang/CharSequence;
    :cond_2
    const v3, 0x7f0e0189

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 333
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "ss":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1786
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1787
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->access$2300(Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;Landroid/graphics/RectF;)V

    .line 1790
    :cond_0
    return-void
.end method

.method public final onMatrixChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 595
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 596
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 598
    :cond_0
    return-void
.end method

.method protected onPostInitialized()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    .line 402
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->canDoSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method public final onSelected(Z)V
    .locals 1
    .param p1, "resumed"    # Z

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    if-nez v0, :cond_1

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    .line 555
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->canDoSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(Z)V

    .line 558
    :cond_0
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 560
    :cond_1
    return-void
.end method

.method public onSlipping(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->onAlphaChanged(F)V

    .line 1513
    :cond_0
    return-void
.end method

.method public onStopTrimMemory(I)V
    .locals 6
    .param p1, "flag"    # I

    .prologue
    .line 260
    const-string v0, "PhotoPageItem"

    const-string v1, "onStopTrimMemory flag: %d, before: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 262
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    .line 263
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    if-nez v0, :cond_0

    .line 264
    const-string v1, "PhotoPageItem"

    const-string v2, "reloadData: %s"

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->refreshItem()V

    .line 268
    :cond_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 6
    .param p1, "flag"    # I

    .prologue
    .line 249
    const-string v0, "PhotoPageItem"

    const-string v1, "onTrimMemory flag: %d, before: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    if-nez v0, :cond_0

    .line 251
    const-string v1, "PhotoPageItem"

    const-string/jumbo v2, "trimMemory: %s"

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 253
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->recycleBitmap()V

    .line 255
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    .line 256
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    .line 582
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnUnSelected(Z)V

    .line 583
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 585
    :cond_0
    return-void
.end method

.method protected recycleBitmap()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 475
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v4}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 476
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 477
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v4, v8}, Luk/co/senab/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 480
    const/4 v2, 0x0

    .line 481
    .local v2, "cachedBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    if-eqz v4, :cond_0

    .line 482
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 483
    invoke-virtual {v5}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v6}, Lcom/miui/gallery/model/ImageLoadParams;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 482
    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadFromMemoryCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    move-object v1, v3

    .line 486
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 487
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    .local v0, "bit":Landroid/graphics/Bitmap;
    if-eq v2, v0, :cond_1

    .line 489
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->put(Landroid/graphics/Bitmap;)V

    .line 493
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public refreshItem()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 354
    return-void
.end method

.method public removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 629
    return-void
.end method

.method public setCacheItem(Lcom/miui/gallery/model/ImageLoadParams;Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .prologue
    const/4 v2, 0x1

    .line 154
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    .line 157
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 158
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 159
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoadFromThumbCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 161
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 162
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheImageLoadingListener()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->displayCacheImage(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 164
    .end local v0    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_0
    return-void
.end method

.method public setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 643
    return-void
.end method

.method public setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V

    .line 633
    return-void
.end method

.method public setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V

    .line 617
    return-void
.end method

.method public setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 609
    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 621
    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 613
    return-void
.end method

.method public setPhotoPageCallback(Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .line 147
    return-void
.end method

.method public setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V
    .locals 0
    .param p1, "processingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;

    .prologue
    .line 1516
    return-void
.end method

.method public setTrimMemoryCallback(Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V
    .locals 0
    .param p1, "trimMemoryCallback"    # Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .line 207
    return-void
.end method

.method public startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 5
    .param p1, "originInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .param p2, "selectInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .param p3, "renderInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1475
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    new-array v1, v1, [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    aput-object p3, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1481
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    new-array v1, v1, [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    aput-object p3, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1479
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionModeChanged(Z)V

    goto :goto_0
.end method

.method public swapItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/model/BaseDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->recycleBitmap()V

    .line 361
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 362
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    if-eqz v0, :cond_2

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_3

    .line 366
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->executeInitTask()V

    .line 367
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContentDescriptionForTalkBack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->updateFeatures()V

    goto :goto_0
.end method

.method protected updateFeatures()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v1, :cond_0

    .line 346
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Luk/co/senab/photoview/PhotoView;->setZoomable(Z)V

    .line 347
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isGif()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 348
    .local v0, "rotatable":Z
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, v0}, Luk/co/senab/photoview/PhotoView;->setRotatable(Z)V

    .line 350
    .end local v0    # "rotatable":Z
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 346
    goto :goto_0

    :cond_2
    move v0, v3

    .line 347
    goto :goto_1
.end method
