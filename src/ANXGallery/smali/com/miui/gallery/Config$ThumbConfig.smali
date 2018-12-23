.class public Lcom/miui/gallery/Config$ThumbConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbConfig"
.end annotation


# static fields
.field public static final MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static final THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sInstance:Lcom/miui/gallery/Config$ThumbConfig;


# instance fields
.field public final sAlbumHeaderThumbTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final sImageMemoryCache:I

.field public final sMicroHorizontalDocumentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final sMicroPanoColumns:I

.field public final sMicroPanoTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final sMicroRecentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final sMicroScreenshotTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final sMicroThumbColumnsLand:I

.field public final sMicroThumbColumnsPortrait:I

.field public final sMicroThumbHorizontalDocumentColumns:I

.field public final sMicroThumbRecentColumnsLand:I

.field public final sMicroThumbRecentColumnsPortrait:I

.field public final sMicroThumbScreenshotColumnsLand:I

.field public final sMicroThumbScreenshotColumnsPortrait:I

.field public final sPreloadNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 57
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 62
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0201a9

    .line 64
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 67
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 69
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadOriginScaleThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 73
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 20

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbHorizontalDocumentColumns:I

    .line 45
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroPanoColumns:I

    .line 77
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 78
    .local v10, "resources":Landroid/content/res/Resources;
    const v14, 0x7f0b0017

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 79
    .local v4, "horizontalSpacing":I
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v12

    .line 80
    .local v12, "screenWidth":I
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v11

    .line 82
    .local v11, "screenHeight":I
    const v14, 0x7f09000e

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    .line 83
    const v14, 0x7f09000f

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    .line 85
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v4

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    move/from16 v16, v0

    .line 86
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    div-int v7, v14, v15

    .line 87
    .local v7, "microThumbSize":I
    new-instance v14, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v14, v7, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 88
    new-instance v14, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v14, v7, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroRecentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 90
    const v14, 0x7f090019

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 91
    .local v2, "albumHeaderColumns":I
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    div-int v7, v14, v2

    .line 92
    new-instance v14, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    int-to-double v0, v7

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    invoke-direct {v14, v7, v15}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sAlbumHeaderThumbTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 94
    const v14, 0x7f09005d

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbRecentColumnsPortrait:I

    .line 95
    const v14, 0x7f09005e

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbRecentColumnsLand:I

    .line 97
    const v14, 0x7f090010

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbScreenshotColumnsPortrait:I

    .line 98
    const v14, 0x7f090011

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbScreenshotColumnsLand:I

    .line 100
    const v14, 0x7f0b01c5

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 101
    .local v13, "width":I
    const v14, 0x7f0b01c4

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 102
    .local v3, "height":I
    new-instance v14, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v14, v13, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroScreenshotTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 104
    const v14, 0x7f0b01c3

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 105
    const v14, 0x7f0b01c2

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 106
    new-instance v14, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v14, v13, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroPanoTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 108
    const v14, 0x7f0b01c1

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 109
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isXiaoMi()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 110
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v14

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    div-int/lit8 v13, v14, 0x2

    .line 112
    const v14, 0x7f090022

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    mul-int/2addr v14, v13

    const v15, 0x7f090023

    .line 113
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    div-int v3, v14, v15

    .line 115
    :cond_0
    new-instance v14, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v14, v13, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroHorizontalDocumentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 117
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/gallery/util/BitmapUtils;->getConfigSize(Landroid/graphics/Bitmap$Config;)S

    move-result v9

    .line 118
    .local v9, "onePixelSize":S
    const v14, 0x3fcccccd    # 1.6f

    int-to-float v15, v12

    mul-float/2addr v14, v15

    int-to-float v15, v11

    mul-float/2addr v14, v15

    int-to-float v15, v9

    mul-float/2addr v14, v15

    float-to-int v8, v14

    .line 119
    .local v8, "minMemorySize":I
    const/high16 v14, 0x800000

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sImageMemoryCache:I

    .line 121
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/Config$ThumbConfig;->sImageMemoryCache:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    mul-int v15, v7, v7

    mul-int/2addr v15, v9

    int-to-float v15, v15

    div-float/2addr v14, v15

    float-to-int v5, v14

    .line 122
    .local v5, "maxCacheSize":I
    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v15, v12

    mul-float/2addr v14, v15

    int-to-float v15, v11

    mul-float/2addr v14, v15

    mul-int v15, v7, v7

    int-to-float v15, v15

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 123
    .local v6, "maxOneScreenNum":I
    sub-int v14, v5, v6

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/Config$ThumbConfig;->sPreloadNum:I

    .line 124
    return-void
.end method

.method public static appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p0, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 147
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getBlurRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->blurRadius(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get()Lcom/miui/gallery/Config$ThumbConfig;
    .locals 2

    .prologue
    .line 127
    const-class v1, Lcom/miui/gallery/Config$ThumbConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/Config$ThumbConfig;->sInstance:Lcom/miui/gallery/Config$ThumbConfig;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/miui/gallery/Config$ThumbConfig;

    invoke-direct {v0}, Lcom/miui/gallery/Config$ThumbConfig;-><init>()V

    sput-object v0, Lcom/miui/gallery/Config$ThumbConfig;->sInstance:Lcom/miui/gallery/Config$ThumbConfig;

    .line 130
    :cond_0
    sget-object v0, Lcom/miui/gallery/Config$ThumbConfig;->sInstance:Lcom/miui/gallery/Config$ThumbConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getBlurRadius()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x3

    return v0
.end method

.method public static getDiskCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getThumbConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
