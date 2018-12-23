.class public Lcom/miui/extraphoto/refocus/RefocusManager;
.super Ljava/lang/Object;
.source "RefocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;,
        Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;
    }
.end annotation


# static fields
.field public static final QUALITY_HEIGHT:I = 0x0

.field public static final QUALITY_LOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RefocusManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataPath:Ljava/lang/String;

.field private mDataSeparation:[I

.field private mImageOrientation:I

.field private mMirror:Z

.field private mOriginBokehSize:I

.field private mOriginExifTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginFocusX:I

.field private mOriginFocusY:I

.field private mOriginHeight:I

.field private mOriginWidth:I

.field private mProcessHeight:I

.field private mProcessWidth:I

.field private mRefocusNativeContext:J

.field private mSoftMode:Z

.field private mUData:[B

.field private mUserFocusX:I

.field private mUserFocusY:I

.field private mUserRelightingSourceOnView:[F

.field private mUserRelightingSourceX:I

.field private mUserRelightingSourceY:I

.field private mVData:[B

.field private mWaterMark:Landroid/graphics/Bitmap;

.field private mWaterMarkTime:Landroid/graphics/Bitmap;

.field private mYData:[B


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPath"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mImageOrientation:I

    .line 39
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusX:I

    .line 40
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusY:I

    .line 41
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserFocusX:I

    .line 42
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserFocusY:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginBokehSize:I

    .line 47
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mSoftMode:Z

    .line 48
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mMirror:Z

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceOnView:[F

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    .line 58
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataPath:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static getDegreeByOrientation(I)I
    .locals 2
    .param p0, "orientation"    # I

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "degree":I
    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 401
    :cond_1
    const/16 v0, 0x5a

    .line 402
    goto :goto_0

    .line 398
    :cond_2
    const/16 v0, 0xb4

    .line 399
    nop

    .line 407
    :goto_0
    return v0
.end method

.method private initBuffer()V
    .locals 3

    .line 162
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    mul-int/2addr v0, v1

    .line 163
    .local v0, "ySize":I
    div-int/lit8 v1, v0, 0x4

    .line 164
    .local v1, "uvSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mYData:[B

    .line 165
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUData:[B

    .line 166
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mVData:[B

    .line 167
    return-void
.end method

.method private resolveInitError(Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;)V
    .locals 0
    .param p1, "initListener"    # Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;->onDecodeError()V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustForDisplay(FLcom/miui/extraphoto/refocus/effect/RefocusEffect;)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    .line 203
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->enableEffectByProgress(FJ)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult()V

    .line 205
    return-void
.end method

.method public adjustToNormal()V
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->adjustToBokeh(J)V

    .line 199
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult()V

    .line 200
    return-void
.end method

.method public configBitmapByResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 289
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBitmapByResult(Landroid/graphics/Bitmap;J)V

    .line 290
    return-void
.end method

.method public configProcessQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .line 297
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->configProcessQuality(IJ)V

    .line 298
    return-void
.end method

.method public configSingleYUVByResult()V
    .locals 8

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    .local v0, "a":J
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mYData:[B

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUData:[B

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mVData:[B

    iget-wide v5, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/extraphoto/refocus/RefocusJni;->configYUVSingleDataByResult([B[B[BJ)V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    .local v2, "b":J
    const-string v4, "RefocusManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy yuv coast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public configSingleYUVByResult([B[B[B)V
    .locals 2
    .param p1, "y"    # [B
    .param p2, "u"    # [B
    .param p3, "v"    # [B

    .line 308
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->configYUVSingleDataByResult([B[B[BJ)V

    .line 309
    return-void
.end method

.method public configYUVByResult([B)V
    .locals 2
    .param p1, "dst"    # [B

    .line 253
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->configYUVDataByResult([BJ)V

    .line 254
    return-void
.end method

.method public decodeBokehBitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "originBytes"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 178
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    invoke-static {p1, v0, p2}, Lcom/miui/extraphoto/refocus/RefocusUtils;->decodeUserDisplayBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeOriginBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 170
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->loadData(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/extraphoto/refocus/RefocusManager;->decodeOriginBitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeOriginBitmap([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "originBytes"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 174
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    invoke-static {p1, v0, p2}, Lcom/miui/extraphoto/refocus/RefocusUtils;->decodeOriginBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public destroyEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V
    .locals 2
    .param p1, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->destroyEffect(J)V

    .line 242
    :cond_0
    return-void
.end method

.method public enableEffectByProgress(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;F)V
    .locals 2
    .param p1, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    .param p2, "progress"    # F

    .line 245
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->enableEffectByProgress(FJ)V

    .line 246
    return-void
.end method

.method public enableEffectByProgress(Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;I)V
    .locals 2
    .param p1, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;
    .param p2, "size"    # I

    .line 249
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->enableEffectByBokehSize(IJ)V

    .line 250
    return-void
.end method

.method public getCurrentBokehSize()I
    .locals 4

    .line 190
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->getCurrentBokehSize(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getImageOrientation()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mImageOrientation:I

    return v0
.end method

.method public getOriginExifTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginExifTags:Ljava/util/List;

    return-object v0
.end method

.method public getOriginHeight()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginHeight:I

    return v0
.end method

.method public getOriginWidth()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginWidth:I

    return v0
.end method

.method public getProcessHeight()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    return v0
.end method

.method public getProcessWidth()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    return v0
.end method

.method public getRefocusNativeContext()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    return-wide v0
.end method

.method public getRelightingLightSource([F)V
    .locals 3
    .param p1, "point"    # [F

    .line 261
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->configRelightingLightSource([FJ)V

    .line 262
    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 263
    const/4 v0, 0x1

    aget v1, p1, v0

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 264
    return-void
.end method

.method public getUData()[B
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUData:[B

    return-object v0
.end method

.method public getUserRelightingSourceOnView()[F
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceOnView:[F

    return-object v0
.end method

.method public getUserRelightingSourceX()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    return v0
.end method

.method public getUserRelightingSourceY()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    return v0
.end method

.method public getVData()[B
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mVData:[B

    return-object v0
.end method

.method public getWaterMark()Landroid/graphics/Bitmap;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mWaterMark:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWaterMarkTime()Landroid/graphics/Bitmap;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mWaterMarkTime:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getYData()[B
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mYData:[B

    return-object v0
.end method

.method public getYUVDataLength()I
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->getYUVDataLength(J)I

    move-result v0

    return v0
.end method

.method public hasWaterMark()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mWaterMark:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mWaterMarkTime:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init(Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;)V
    .locals 24
    .param p1, "initListener"    # Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;

    move-object/from16 v1, p0

    .line 63
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->loadData(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    .local v3, "data":[B
    if-eqz v3, :cond_7

    array-length v0, v3

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 68
    :cond_0
    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getDataSeparation([B)[I

    move-result-object v0

    iput-object v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    .line 69
    iget-object v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    array-length v0, v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    .line 74
    :cond_1
    const/4 v5, 0x0

    .line 75
    .local v5, "originBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 76
    .local v6, "displayBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 77
    .local v7, "originSizeBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;

    invoke-direct {v0}, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;-><init>()V

    move-object v8, v0

    .line 79
    .local v8, "imageExif":Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    :try_start_0
    iget-object v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    const/4 v9, 0x0

    invoke-static {v3, v0, v9}, Lcom/miui/extraphoto/refocus/RefocusUtils;->decodeOriginBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 81
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginWidth:I

    .line 82
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginHeight:I

    .line 84
    const-string v0, "RefocusManager"

    const-string v9, "origin bitmap width : %d height : %d"

    new-array v10, v4, [Ljava/lang/Object;

    iget v11, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget v11, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x4

    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 89
    iget-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    invoke-static {v3, v9}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getAllExifTag([B[I)Ljava/util/List;

    move-result-object v9

    iput-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginExifTags:Ljava/util/List;

    .line 90
    iget-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginExifTags:Ljava/util/List;

    invoke-static {v9, v8}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getNecessaryExif(Ljava/util/List;Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    .line 91
    iget v9, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->orientation:I

    iput v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mImageOrientation:I

    .line 92
    iget-boolean v9, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->mirror:Z

    iput-boolean v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mMirror:Z

    .line 93
    iget-boolean v9, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->isSoftBokeh:Z

    iput-boolean v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mSoftMode:Z

    .line 95
    iget-object v9, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->waterMark:Landroid/graphics/Bitmap;

    iput-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mWaterMark:Landroid/graphics/Bitmap;

    .line 96
    iget-object v9, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->waterMarkTime:Landroid/graphics/Bitmap;

    iput-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mWaterMarkTime:Landroid/graphics/Bitmap;

    .line 98
    iget-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    invoke-static {v3, v9, v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->decodeOriginBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 99
    iget-object v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    invoke-static {v3, v9, v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->decodeUserDisplayBitmap([B[ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v9

    .line 101
    invoke-static {v6}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getBitmapForYUV(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v9

    .line 102
    invoke-static {v5}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getBitmapForYUV(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 103
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    .line 104
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 111
    const-string v0, "RefocusManager"

    const-string v9, "process bitmap width : %d height : %d"

    new-array v10, v4, [Ljava/lang/Object;

    iget v11, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    iget v11, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataSeparation:[I

    invoke-static {v3, v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->getDeepData([B[I)[B

    move-result-object v0

    .line 114
    .local v0, "deepData":[B
    iget-boolean v13, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mSoftMode:Z

    iget v14, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginWidth:I

    iget v15, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginHeight:I

    iget v11, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    iget v10, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    array-length v9, v0

    iget v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mImageOrientation:I

    .line 123
    invoke-static {v4}, Lcom/miui/extraphoto/refocus/RefocusManager;->getDegreeByOrientation(I)I

    move-result v20

    iget-boolean v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mMirror:Z

    iget v12, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->filter:I

    .line 114
    move/from16 v19, v9

    move-object v9, v7

    move/from16 v17, v10

    move-object v10, v5

    move/from16 v16, v11

    move-object v11, v6

    move/from16 v22, v12

    const/4 v12, 0x0

    move-object/from16 v18, v0

    move/from16 v21, v4

    invoke-static/range {v9 .. v22}, Lcom/miui/extraphoto/refocus/RefocusJni;->initRefocusNativeContext(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZIIII[BIIZI)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    .line 125
    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusX:I

    const/high16 v9, 0x40800000    # 4.0f

    if-lez v4, :cond_2

    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusY:I

    if-lez v4, :cond_2

    .line 126
    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusX:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusX:I

    .line 127
    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusY:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusY:I

    goto :goto_0

    .line 129
    :cond_2
    iget v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    const/4 v10, 0x2

    div-int/2addr v4, v10

    iput v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusX:I

    .line 130
    iget v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    div-int/2addr v4, v10

    iput v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusY:I

    .line 132
    :goto_0
    iget v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusX:I

    iget v10, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusY:I

    iget-wide v11, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v4, v10, v11, v12}, Lcom/miui/extraphoto/refocus/RefocusJni;->configFocusPoint(IIJ)V

    .line 134
    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    if-gez v4, :cond_3

    .line 135
    const/16 v4, 0x32

    iput v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    .line 138
    :cond_3
    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    iput v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginBokehSize:I

    .line 139
    iget v4, v8, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    iget-wide v10, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v4, v10, v11}, Lcom/miui/extraphoto/refocus/RefocusJni;->configOriginBokehSize(IJ)V

    .line 141
    iget-boolean v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mSoftMode:Z

    if-nez v4, :cond_4

    .line 142
    iget v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginBokehSize:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-wide v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v4, v9, v10}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehSize(IJ)V

    .line 143
    iget-wide v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v9, v10}, Lcom/miui/extraphoto/refocus/RefocusJni;->processImageByHolder(J)V

    .line 145
    :cond_4
    iget-wide v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v9, v10}, Lcom/miui/extraphoto/refocus/RefocusJni;->configToBokeh(J)V

    .line 146
    iget-wide v9, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v9, v10}, Lcom/miui/extraphoto/refocus/RefocusJni;->adjustToDisplay(J)V

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/miui/extraphoto/refocus/RefocusManager;->initBuffer()V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult()V

    .line 150
    if-eqz v2, :cond_5

    .line 151
    iget v4, v1, Lcom/miui/extraphoto/refocus/RefocusManager;->mImageOrientation:I

    invoke-interface {v2, v6, v4, v8}, Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;->onPreviewDecode(Landroid/graphics/Bitmap;ILcom/miui/extraphoto/refocus/RefocusManager$ImageExif;)V

    .line 153
    :cond_5
    return-void

    .line 105
    .end local v0    # "deepData":[B
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "RefocusManager"

    const-string v9, "refocus decode error"

    invoke-static {v4, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    invoke-direct/range {p0 .. p1}, Lcom/miui/extraphoto/refocus/RefocusManager;->resolveInitError(Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;)V

    .line 108
    return-void

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "originBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "displayBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "originSizeBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "imageExif":Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
    :cond_6
    :goto_1
    const-string v0, "RefocusManager"

    const-string v4, "refocus decode error data separation"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct/range {p0 .. p1}, Lcom/miui/extraphoto/refocus/RefocusManager;->resolveInitError(Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;)V

    .line 72
    return-void

    .line 65
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/miui/extraphoto/refocus/RefocusManager;->resolveInitError(Lcom/miui/extraphoto/refocus/RefocusManager$InitListener;)V

    .line 66
    return-void
.end method

.method public initEffect(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V
    .locals 3
    .param p1, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->initEffect(Landroid/content/Context;J)V

    .line 230
    :cond_0
    return-void
.end method

.method public initForGenerateVideo(Lcom/miui/extraphoto/refocus/effect/RefocusEffect;)V
    .locals 2
    .param p1, "refocusEffect"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffect;

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->initForVideo(J)V

    .line 236
    :cond_0
    return-void
.end method

.method public isMirror()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mMirror:Z

    return v0
.end method

.method public isSoftMode()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mSoftMode:Z

    return v0
.end method

.method public onAdjustToStatic()V
    .locals 4

    .line 223
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserFocusX:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserFocusY:I

    iget-wide v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configFocusPoint(IIJ)V

    .line 224
    return-void
.end method

.method public onPreviewVideo()V
    .locals 4

    .line 219
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusX:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mOriginFocusY:I

    iget-wide v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configFocusPoint(IIJ)V

    .line 220
    return-void
.end method

.method public readOriginBytes()[B
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mDataPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusUtils;->loadData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public refocus(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 212
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {p1, p2, v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->refocus(IIJ)V

    .line 213
    iput p1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserFocusX:I

    .line 214
    iput p2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserFocusY:I

    .line 215
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusManager;->configSingleYUVByResult()V

    .line 216
    return-void
.end method

.method public releaseAll()V
    .locals 2

    .line 344
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->releaseNativeContext(J)V

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mYData:[B

    .line 347
    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUData:[B

    .line 348
    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mVData:[B

    .line 349
    return-void
.end method

.method public reprocess()V
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusJni;->processImageByHolder(J)V

    .line 209
    return-void
.end method

.method public resetData(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleSize"    # I

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-wide v4, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/extraphoto/refocus/RefocusJni;->resetData(Landroid/graphics/Bitmap;IIIJ)V

    .line 294
    return-void
.end method

.method public setRelightingLightSource(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/extraphoto/refocus/RefocusManager;->setRelightingLightSource(FFZ)V

    .line 258
    return-void
.end method

.method public setRelightingLightSource(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "origin"    # Z

    .line 271
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    .line 272
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    .line 273
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    if-le v0, v1, :cond_0

    .line 274
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessWidth:I

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    .line 276
    :cond_0
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 277
    iput v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    .line 279
    :cond_1
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    iget v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    if-le v0, v2, :cond_2

    .line 280
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mProcessHeight:I

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    .line 282
    :cond_2
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    if-gez v0, :cond_3

    .line 283
    iput v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    .line 285
    :cond_3
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceX:I

    iget v1, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceY:I

    iget-wide v2, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mRefocusNativeContext:J

    invoke-static {v0, v1, p3, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusJni;->setRelightingLightSource(IIZJ)V

    .line 286
    return-void
.end method

.method public setUserRelightingSourceOnView(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 368
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceOnView:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 369
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager;->mUserRelightingSourceOnView:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 370
    return-void
.end method
