.class public Lcom/miui/gallery/model/BaseDataItem;
.super Ljava/lang/Object;
.source "BaseDataItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/model/BaseDataItem$Func;,
        Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private transient mCacheLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mContentDescription:Ljava/lang/String;

.field protected mCreateTime:J

.field private volatile transient mDisplayBetterPath:Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;

.field protected mDuration:I

.field protected mFilePath:Ljava/lang/String;

.field protected mHeight:I

.field protected mIsSecret:Z

.field protected mKey:J

.field protected mLatitude:F

.field protected mLocalGroupId:J

.field protected mLocation:Ljava/lang/String;

.field protected mLongitude:F

.field protected mMicroPath:Ljava/lang/String;

.field protected mMimeType:Ljava/lang/String;

.field protected mSecretKey:[B

.field protected mSize:J

.field private volatile transient mSupportOperations:I

.field protected mThumbPath:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "BaseDataItem"

    sput-object v0, Lcom/miui/gallery/model/BaseDataItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mCacheLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    new-instance v0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;-><init>(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/model/BaseDataItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mDisplayBetterPath:Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mSupportOperations:I

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mCreateTime:J

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/model/BaseDataItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mSupportOperations:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/model/BaseDataItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mSupportOperations:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/model/BaseDataItem;)Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mDisplayBetterPath:Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;

    return-object v0
.end method

.method private lock()Z
    .locals 6

    .prologue
    .line 476
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const/4 v1, 0x0

    .line 479
    .local v1, "locked":Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mCacheLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 483
    :goto_0
    sget-object v2, Lcom/miui/gallery/model/BaseDataItem;->TAG:Ljava/lang/String;

    const-string v3, "UI thread acquired %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    .end local v1    # "locked":Z
    :goto_1
    return v1

    .line 480
    .restart local v1    # "locked":Z
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 486
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "locked":Z
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mCacheLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private refillBetterPath()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->checkOriginalFileExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getMicroPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getMicroPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private safeRun(Lcom/miui/gallery/model/BaseDataItem$Func;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/model/BaseDataItem$Func",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "func":Lcom/miui/gallery/model/BaseDataItem$Func;, "Lcom/miui/gallery/model/BaseDataItem$Func<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;->lock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/model/BaseDataItem$Func;->doFunc()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 503
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;->unlock()V

    .line 506
    :goto_0
    return-object v0

    .line 503
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;->unlock()V

    throw v0

    .line 506
    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/model/BaseDataItem$Func;->doFunc()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private unlock()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mCacheLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    return-void
.end method


# virtual methods
.method public checkOriginalFileExist()Z
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createNSGifDecoder(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 285
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x30000000

    .line 284
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create(Ljava/io/FileDescriptor;[B)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 290
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 296
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 287
    .restart local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/miui/gallery/model/BaseDataItem;->TAG:Ljava/lang/String;

    const-string v3, "createNSGifDecoder failed %s"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 290
    .restart local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 293
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create(Ljava/lang/String;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 331
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 332
    check-cast v0, Lcom/miui/gallery/model/BaseDataItem;

    .line 333
    .local v0, "other":Lcom/miui/gallery/model/BaseDataItem;
    iget-wide v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mKey:J

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 337
    .end local v0    # "other":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    return v1
.end method

.method public getBigPhotoImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/miui/gallery/Config$BigPhotoConfig;->BIG_PHOTO_SIZE_DEFAULT:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mContentDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mCreateTime:J

    iget-object v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mContentDescription:Ljava/lang/String;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUriForExternal()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mThumbPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mThumbPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoordidate([F)V
    .locals 2
    .param p1, "latLong"    # [F

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLatitude:F

    aput v1, p1, v0

    .line 325
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLongitude:F

    aput v1, p1, v0

    .line 327
    :cond_0
    return-void
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mCreateTime:J

    return-wide v0
.end method

.method public getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 212
    new-instance v1, Lcom/miui/gallery/model/PhotoDetailInfo;

    invoke-direct {v1}, Lcom/miui/gallery/model/PhotoDetailInfo;-><init>()V

    .line 213
    .local v1, "info":Lcom/miui/gallery/model/PhotoDetailInfo;
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getCreateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 214
    const/16 v2, 0xc8

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 216
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 217
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 218
    new-array v0, v6, [F

    .line 219
    .local v0, "coordidate":[F
    invoke-virtual {p0, v0}, Lcom/miui/gallery/model/BaseDataItem;->getCoordidate([F)V

    .line 220
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 227
    :goto_0
    return-object v1

    .line 224
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 225
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mDuration:I

    return v0
.end method

.method public getFavoriteInfo(Z)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 1
    .param p1, "strictMode"    # Z

    .prologue
    .line 208
    new-instance v0, Lcom/miui/gallery/model/FavoriteInfo;

    invoke-direct {v0}, Lcom/miui/gallery/model/FavoriteInfo;-><init>()V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mHeight:I

    return v0
.end method

.method public getKey()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mKey:J

    return-wide v0
.end method

.method public getLocalGroupId()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mLocalGroupId:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMicroImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getMicroPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mMicroPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplayBetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/miui/gallery/model/BaseDataItem$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/model/BaseDataItem$3;-><init>(Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/model/BaseDataItem;->safeRun(Lcom/miui/gallery/model/BaseDataItem$Func;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mSecretKey:[B

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mSize:J

    return-wide v0
.end method

.method public getSupportOperations()I
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/miui/gallery/model/BaseDataItem$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/model/BaseDataItem$1;-><init>(Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/model/BaseDataItem;->safeRun(Lcom/miui/gallery/model/BaseDataItem$Func;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getThumnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getViewSubTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    const/16 v0, 0x2c

    .line 398
    .local v0, "flag":I
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getViewTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    const/16 v0, 0x380

    .line 393
    .local v0, "flag":I
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mWidth:I

    return v0
.end method

.method public hasFace()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 342
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mKey:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method protected initSupportOperations()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method protected invalidCache()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isGifFromMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isModified(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mIsSecret:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCacheLoaded()V
    .locals 6

    .prologue
    .line 422
    iget-object v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 423
    .local v2, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mSize:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mHeight:I

    if-nez v4, :cond_1

    .line 424
    :cond_0
    iput-wide v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mSize:J

    .line 426
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 427
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mWidth:I

    .line 428
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/miui/gallery/model/BaseDataItem;->mHeight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/miui/gallery/model/BaseDataItem;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onLoadCache()V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;->refillBetterPath()V

    .line 439
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->initSupportOperations()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mSupportOperations:I

    .line 440
    return-void
.end method

.method public reloadCache()V
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/miui/gallery/model/BaseDataItem$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/model/BaseDataItem$5;-><init>(Lcom/miui/gallery/model/BaseDataItem;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/model/BaseDataItem;->safeRun(Lcom/miui/gallery/model/BaseDataItem$Func;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public removeSupportOperation(I)V
    .locals 1
    .param p1, "operation"    # I

    .prologue
    .line 247
    new-instance v0, Lcom/miui/gallery/model/BaseDataItem$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/model/BaseDataItem$2;-><init>(Lcom/miui/gallery/model/BaseDataItem;I)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/model/BaseDataItem;->safeRun(Lcom/miui/gallery/model/BaseDataItem$Func;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public save(Landroid/app/Activity;Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    .prologue
    .line 310
    return-void
.end method

.method public setCreateTime(J)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mCreateTime:J

    .line 99
    return-object p0
.end method

.method public setDuration(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mDuration:I

    .line 144
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V

    .line 89
    return-object p0
.end method

.method public setHeight(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mHeight:I

    .line 139
    return-object p0
.end method

.method public setKey(J)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mKey:J

    .line 66
    return-object p0
.end method

.method public setLatitude(F)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "latitude"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLatitude:F

    .line 114
    return-object p0
.end method

.method public setLocalGroupId(J)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "localGroupId"    # J

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLocalGroupId:J

    .line 149
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLocation:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setLongitude(F)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "longitude"    # F

    .prologue
    .line 118
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mLongitude:F

    .line 119
    return-object p0
.end method

.method public setMicroPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "microPath"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mMicroPath:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V

    .line 77
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mMimeType:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method protected setPathDisplayBetter(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lcom/miui/gallery/model/BaseDataItem$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/model/BaseDataItem$4;-><init>(Lcom/miui/gallery/model/BaseDataItem;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/model/BaseDataItem;->safeRun(Lcom/miui/gallery/model/BaseDataItem$Func;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method public setSecretKey([B)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "secretKey"    # [B

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mIsSecret:Z

    .line 128
    :goto_0
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mSecretKey:[B

    .line 129
    return-object p0

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/model/BaseDataItem;->mIsSecret:Z

    goto :goto_0
.end method

.method public setSize(J)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mSize:J

    .line 109
    return-object p0
.end method

.method public setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "thumbPath"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mThumbPath:Ljava/lang/String;

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/model/BaseDataItem;->setPathDisplayBetter(ILjava/lang/String;)V

    .line 83
    return-object p0
.end method

.method public setWidth(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem;->mWidth:I

    .line 134
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/model/BaseDataItem;->mKey:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thumb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/model/BaseDataItem;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
