.class public Lcom/miui/gallery/movie/nvsdk/NvMovieManager;
.super Lcom/miui/gallery/movie/core/MovieManager;
.source "NvMovieManager.java"


# static fields
.field private static final sCompileRateBlackList:[Ljava/lang/String;

.field private static sIsPaused:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExportListener:Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

.field private mLiveWindow:Lcom/meicam/sdk/NvsLiveWindowExt;

.field private mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

.field private mSeekIndex:I

.field private mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field private mThemeEnable:Z

.field private mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

.field private mTimeline:Lcom/meicam/sdk/NvsTimeline;

.field private mVideoHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->sCompileRateBlackList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/movie/core/MovieManager;-><init>()V

    .line 55
    new-instance v0, Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-direct {v0}, Lcom/meicam/themehelper/NvsThemeHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mExportListener:Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    return-object v0
.end method

.method private applyThemeAsset(Ljava/lang/String;)V
    .locals 3
    .param p1, "themeAsset"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v1, "movieAssetsNormal"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 139
    .local v0, "isNormal":Z
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->applyTimelineTheme(Ljava/lang/String;ZZ)Z

    .line 140
    return-void
.end method

.method private initTimeLine(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 90
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v5, :cond_0

    .line 91
    const-string v5, "NvMovieManager"

    const-string/jumbo v6, "streamingContext is null!"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 95
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v3, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v3}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 96
    .local v3, "videoEditRes":Lcom/meicam/sdk/NvsVideoResolution;
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v5

    iput v5, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 98
    const/high16 v5, 0x3f800000    # 1.0f

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/miui/gallery/util/ScreenUtils;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 99
    .local v1, "heightToWidth":F
    invoke-static {v1}, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->getFitRatio(F)Lcom/miui/gallery/movie/entity/MovieAspectRatio;

    move-result-object v2

    .line 100
    .local v2, "movieAspectRatio":Lcom/miui/gallery/movie/entity/MovieAspectRatio;
    iget v5, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/miui/gallery/movie/entity/MovieAspectRatio;->getRatio()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 101
    const-string v5, "NvMovieManager"

    const-string v6, "initTimeLine in size: %d:%d"

    iget v7, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    iget v5, v3, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    iput v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mVideoHeight:I

    .line 104
    new-instance v5, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v5, v9, v9}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v5, v3, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 105
    new-instance v4, Lcom/meicam/sdk/NvsRational;

    const/16 v5, 0x19

    invoke-direct {v4, v5, v9}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 107
    .local v4, "videoFps":Lcom/meicam/sdk/NvsRational;
    new-instance v0, Lcom/meicam/sdk/NvsAudioResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsAudioResolution;-><init>()V

    .line 108
    .local v0, "audioEditRes":Lcom/meicam/sdk/NvsAudioResolution;
    const v5, 0xac44

    iput v5, v0, Lcom/meicam/sdk/NvsAudioResolution;->sampleRate:I

    .line 109
    const/4 v5, 0x2

    iput v5, v0, Lcom/meicam/sdk/NvsAudioResolution;->channelCount:I

    .line 111
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v5, v3, v4, v0}, Lcom/meicam/sdk/NvsStreamingContext;->createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    .line 112
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    if-nez v5, :cond_1

    .line 113
    const-string v5, "NvMovieManager"

    const-string v6, "mTimeline is null!"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    new-instance v5, Lcom/miui/gallery/movie/nvsdk/NvStateController;

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v7, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-direct {v5, v6, v7}, Lcom/miui/gallery/movie/nvsdk/NvStateController;-><init>(Lcom/meicam/sdk/NvsStreamingContext;Lcom/meicam/sdk/NvsTimeline;)V

    iput-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    .line 117
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v7, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindowExt;

    invoke-virtual {v5, v6, v7}, Lcom/meicam/sdk/NvsStreamingContext;->connectTimelineWithLiveWindowExt(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindowExt;)Z

    .line 118
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v5, v6}, Lcom/meicam/sdk/NvsStreamingContext;->setStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 119
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v5, v6}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 120
    iget-object v5, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v6, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v5, v6}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 122
    const/4 v5, 0x0

    sput-boolean v5, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->sIsPaused:Z

    goto/16 :goto_0
.end method

.method private isDisableCompileRate()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 390
    sget-object v3, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->sCompileRateBlackList:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 391
    .local v0, "product":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    const/4 v1, 0x1

    .line 395
    .end local v0    # "product":Ljava/lang/String;
    :cond_0
    return v1

    .line 390
    .restart local v0    # "product":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseClipFromFile(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 128
    new-instance v2, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-direct {v2}, Lcom/meicam/themehelper/NvsImageFileDesc;-><init>()V

    .line 129
    .local v2, "imageInfo":Lcom/meicam/themehelper/NvsImageFileDesc;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/ImageEntity;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/ImageEntity;->image:Ljava/lang/String;

    iput-object v3, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    .line 130
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->hasFace:Z

    .line 131
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "imageInfo":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addImage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->parseClipFromFile(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->insertClip(Ljava/util/ArrayList;)Z

    .line 186
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->replay()V

    .line 187
    return-void
.end method

.method public addStateChangeListener(Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;)V
    .locals 1
    .param p1, "stateChangeListener"    # Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->addStateChangeListener(Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;)V

    .line 145
    return-void
.end method

.method public cancelExport()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->cancelExport()V

    .line 351
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 220
    sget-boolean v0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->sIsPaused:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 223
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->close()V

    .line 225
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mExportListener:Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    .line 226
    invoke-super {p0}, Lcom/miui/gallery/movie/core/MovieManager;->destroy()V

    .line 227
    return-void
.end method

.method public export(Ljava/lang/String;Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;)V
    .locals 12
    .param p1, "outputFileURI"    # Ljava/lang/String;
    .param p2, "esi"    # Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v10

    .line 303
    .local v10, "time":J
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    const-wide/16 v2, 0x3e8

    div-long v2, v10, v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->seek(I)V

    .line 306
    .end local v10    # "time":J
    :cond_0
    iput-object p2, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mExportListener:Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mExportListener:Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;

    invoke-interface {v0}, Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;->onEncodeStart()V

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    new-instance v1, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$1;-><init>(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)V

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    new-instance v1, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager$2;-><init>(Lcom/miui/gallery/movie/nvsdk/NvMovieManager;)V

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mVideoHeight:I

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCustomCompileVideoHeight(I)V

    .line 340
    const/4 v9, 0x4

    .line 341
    .local v9, "flag":I
    invoke-direct {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->isDisableCompileRate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    or-int/lit8 v9, v9, 0x2

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v4}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v4

    const/16 v7, 0x100

    const/4 v8, 0x2

    move-object v6, p1

    invoke-virtual/range {v0 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z

    .line 346
    return-void
.end method

.method public getThumbnailImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v0}, Lcom/meicam/themehelper/NvsThemeHelper;->getThumbnailImages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTotalTime()I
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getLibraryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meicam/sdk/NvsStreamingContext;->setNativeLibraryDirPath(Ljava/lang/String;)V

    .line 77
    const/16 v0, 0x12

    .local v0, "flag":I
    move-object v1, p1

    .line 78
    check-cast v1, Landroid/app/Activity;

    const-string v3, "assets:/nv/nvsdk.lic"

    invoke-static {v1, v3, v0}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 79
    new-instance v1, Lcom/meicam/sdk/NvsLiveWindowExt;

    invoke-direct {v1, p1}, Lcom/meicam/sdk/NvsLiveWindowExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindowExt;

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindowExt;

    iput-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mDisplayView:Landroid/view/View;

    .line 81
    sget-boolean v1, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v1, :cond_1

    .line 82
    sget-boolean v1, Lcom/miui/os/Rom;->IS_STABLE:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/meicam/sdk/NvsStreamingContext;->setDebugLevel(I)V

    .line 86
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->initTimeLine(Landroid/content/Context;)V

    .line 87
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->setDebugLevel(I)V

    goto :goto_1
.end method

.method public isSupportVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveImage(II)V
    .locals 1
    .param p1, "srcIndex"    # I
    .param p2, "destIndex"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/meicam/themehelper/NvsThemeHelper;->moveClip(II)Z

    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->replay()V

    .line 193
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->onPause()V

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->sIsPaused:Z

    .line 215
    invoke-super {p0}, Lcom/miui/gallery/movie/core/MovieManager;->onPause()V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->sIsPaused:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindowExt;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsLiveWindowExt;->repaintVideoFrame()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->onResume()V

    .line 208
    invoke-super {p0}, Lcom/miui/gallery/movie/core/MovieManager;->onResume()V

    .line 209
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->pause()V

    .line 366
    return-void
.end method

.method public pauseOrResume()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->isResume()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-boolean v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget v2, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mSeekIndex:I

    invoke-virtual {v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTimelinePosition(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->play(J)V

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->resume()V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget v2, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mSeekIndex:I

    invoke-virtual {v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTimelinePosition(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->play(J)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->play()V

    goto :goto_0
.end method

.method public removeImageAtIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->deleteClip(I)Z

    .line 175
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->replay()V

    .line 176
    return-void
.end method

.method public replay()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->replay()V

    .line 275
    return-void
.end method

.method public resetImage(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isShortVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v0, p2}, Lcom/meicam/themehelper/NvsThemeHelper;->changeTimelineDuration(Z)Z

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->parseClipFromFile(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->resetClip(Ljava/util/ArrayList;)Z

    .line 199
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget v2, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mSeekIndex:I

    invoke-virtual {v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTimelinePosition(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->play(J)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->resume()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->seek(I)V

    .line 283
    return-void
.end method

.method public seekToIndex(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mSeekIndex:I

    .line 288
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->setThemeEnable(Z)V

    .line 289
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v1, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->getTimelinePosition(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 290
    .local v0, "time":I
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mMovieController:Lcom/miui/gallery/movie/nvsdk/NvStateController;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/nvsdk/NvStateController;->seek(I)V

    .line 291
    return v0
.end method

.method public setAudio(Lcom/miui/gallery/movie/entity/AudioResource;)V
    .locals 4
    .param p1, "audio"    # Lcom/miui/gallery/movie/entity/AudioResource;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/movie/entity/AudioResource;->getResType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->changeMusic(Ljava/lang/String;I)Z

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->replay()V

    .line 249
    return-void

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/movie/entity/AudioResource;->getResType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {p1}, Lcom/miui/gallery/movie/entity/AudioResource;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->changeMusic(Ljava/lang/String;I)Z

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {p1}, Lcom/miui/gallery/movie/entity/AudioResource;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->changeMusic(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setInfo(Lcom/miui/gallery/movie/entity/MovieInfo;)V
    .locals 7
    .param p1, "movieInfo"    # Lcom/miui/gallery/movie/entity/MovieInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget-object v2, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v4, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->parseClipFromFile(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->initHelper(Landroid/content/Context;Lcom/meicam/sdk/NvsTimeline;Ljava/util/ArrayList;)Z

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    const-string v2, "assets:/nv/defaultRhythm.json"

    const-string v3, "assets:/nv/defaultRhythm10s.json"

    invoke-virtual {v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->setDefaultRhythmPath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget-object v2, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/meicam/themehelper/NvsThemeHelper;->changeCaptionText(Ljava/lang/String;I)Z

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget-object v2, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/meicam/themehelper/NvsThemeHelper;->changeCaptionText(Ljava/lang/String;I)Z

    .line 154
    iget-object v1, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "movieAssetsNormal"

    iput-object v1, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    .line 156
    const-string v1, "movieAssetsNormal"

    invoke-direct {p0, v1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->applyThemeAsset(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->replay()V

    .line 170
    return-void

    .line 157
    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    const-string v2, "Assets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->applyThemeAsset(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/factory/TemplateFactory;->getTemplateDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "dir":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v1, v0, v6, v5}, Lcom/meicam/themehelper/NvsThemeHelper;->applyTimelineTheme(Ljava/lang/String;ZZ)Z

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "movieAssetsNormal"

    iput-object v1, p1, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    .line 165
    const-string v1, "movieAssetsNormal"

    invoke-direct {p0, v1}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->applyThemeAsset(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIsShortVideo(Z)V
    .locals 1
    .param p1, "isShortVideo"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->changeTimelineDuration(Z)Z

    .line 181
    return-void
.end method

.method public setTemplate(Lcom/miui/gallery/movie/entity/TemplateResource;)V
    .locals 4
    .param p1, "templateResource"    # Lcom/miui/gallery/movie/entity/TemplateResource;

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/miui/gallery/movie/entity/TemplateResource;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "templatePath":Ljava/lang/String;
    const-string v2, "movieAssetsNormal"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 255
    .local v0, "isNormal":Z
    iget-object v3, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    iget-boolean v2, p1, Lcom/miui/gallery/movie/entity/TemplateResource;->isPackageAssets:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v1, v2, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->applyTimelineTheme(Ljava/lang/String;ZZ)Z

    .line 256
    invoke-virtual {p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->replay()V

    .line 257
    return-void

    .line 255
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setThemeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeEnable:Z

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->mThemeHelper:Lcom/meicam/themehelper/NvsThemeHelper;

    invoke-virtual {v0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->setThemeEnabled(Z)V

    .line 297
    return-void
.end method
