.class public Lcom/miui/gallery/ui/PhotoDetailFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "PhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;,
        Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;,
        Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;
    }
.end annotation


# instance fields
.field private mAddressFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentContainer:Landroid/view/View;

.field private mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

.field private mFileInfoItem:Landroid/view/View;

.field private mFileInfoSub:Landroid/widget/TextView;

.field private mFileInfoTitle:Landroid/widget/TextView;

.field private mItem:Lcom/miui/gallery/model/BaseDataItem;

.field private mLoaderCallBack:Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

.field private mLocation:Landroid/widget/TextView;

.field private mLocationItem:Landroid/view/View;

.field private mNeedConfirmPassword:Z

.field private mParamsItem:Landroid/view/View;

.field private mPath:Landroid/widget/TextView;

.field private mPathItem:Landroid/view/View;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mScreenshotPackageInfo:Landroid/widget/TextView;

.field private mScreenshotPackageItem:Landroid/view/View;

.field private mTakenParamsSub:Landroid/widget/TextView;

.field private mTakenParamsThird:Landroid/widget/TextView;

.field private mTakenParamsTitle:Landroid/widget/TextView;

.field private mTimeItem:Landroid/view/View;

.field private mTimeSub:Landroid/widget/TextView;

.field private mTimeTitle:Landroid/widget/TextView;

.field private mTipNoDownload:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 114
    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$1;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 616
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/model/PhotoDetailInfo;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindDetail(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    return-void
.end method

.method private bindDetail(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 3
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 430
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindTime(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindFileInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindNotDownloadTip(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindTakenParams(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindPath(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindLocation(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 436
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindScreenshotPackageInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mContentContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 442
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private bindFileInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 8
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, "isShow":Z
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 274
    const/4 v2, 0x1

    .line 275
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoTitle:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 280
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 281
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    check-cast v3, Ljava/lang/Long;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v4

    .line 285
    .local v4, "width":Ljava/lang/Object;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 286
    .local v1, "height":Ljava/lang/Object;
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 287
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genPixels(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_2
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 291
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 292
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/FormatUtil;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 296
    const/4 v2, 0x1

    .line 297
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 303
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoItem:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 304
    return-void

    .line 300
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindLocation(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 8
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 396
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 397
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 398
    check-cast v2, [F

    .end local v2    # "obj":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [F

    .line 399
    .local v0, "coordidate":[F
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genLocation([F)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 403
    aget v3, v0, v4

    float-to-double v4, v3

    aget v3, v0, v6

    float-to-double v6, v3

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/miui/gallery/ui/PhotoDetailFragment;->requestAddress(DD)V

    .line 410
    .end local v0    # "coordidate":[F
    .end local v1    # "location":Ljava/lang/String;
    :goto_0
    return-void

    .line 405
    .restart local v0    # "coordidate":[F
    .restart local v1    # "location":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 408
    .end local v0    # "coordidate":[F
    .end local v1    # "location":Ljava/lang/String;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindNotDownloadTip(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 3
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 307
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindPath(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 4
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 383
    const/16 v2, 0xc8

    invoke-virtual {p1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 385
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/miui/gallery/util/StorageUtils;->getPathForDisplay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "filePathForDisplay":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPath:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPathItem:Landroid/view/View;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 392
    .end local v0    # "filePathForDisplay":Ljava/lang/String;
    :goto_0
    return-void

    .line 390
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPathItem:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindScreenshotPackageInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 7
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v6, 0x0

    .line 413
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    .line 414
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_1

    .line 415
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    .line 416
    .local v0, "name":Ljava/lang/Object;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getLocalGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "name":Ljava/lang/Object;
    const-string v2, "Screenshot"

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageInfo:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 426
    :goto_0
    return-void

    .line 421
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    invoke-direct {p0, v2, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    invoke-direct {p0, v2, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindTakenParams(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 7
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "isShow":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 321
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    :cond_0
    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_1

    .line 326
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 329
    const/4 v1, 0x1

    .line 330
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 339
    const/16 v3, 0x69

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_2

    .line 341
    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genAperture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_2
    const/16 v3, 0x6b

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 345
    .restart local v2    # "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 346
    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genExposureTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_3
    const/16 v3, 0x6c

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 350
    .restart local v2    # "obj":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 351
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genISO(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 354
    const/4 v1, 0x1

    .line 355
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 361
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 363
    const/16 v3, 0x67

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_5

    .line 365
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genFocalLength(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_5
    const/16 v3, 0x66

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_6

    move-object v3, v2

    .line 370
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genFlashFired(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 373
    const/4 v1, 0x1

    .line 374
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 379
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mParamsItem:Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 380
    :goto_2
    return-void

    .line 333
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mParamsItem:Landroid/view/View;

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_2

    .line 358
    :cond_8
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 377
    :cond_9
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method private bindTime(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 8
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v7, 0x1

    .line 250
    invoke-virtual {p1, v7}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 251
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 252
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 253
    .local v4, "time":J
    const/16 v1, 0x380

    .line 255
    .local v1, "flag":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeTitle:Landroid/widget/TextView;

    invoke-static {v4, v5, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x400

    .line 258
    invoke-static {v4, v5, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const/16 v1, 0x2c

    .line 261
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4, v5, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeItem:Landroid/view/View;

    invoke-direct {p0, v3, v7}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 267
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "flag":I
    .end local v4    # "time":J
    :goto_0
    return-void

    .line 265
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeItem:Landroid/view/View;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private cancelAddressRequest()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    .line 515
    :cond_0
    return-void
.end method

.method private finishActivity(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 184
    return-void
.end method

.method private genAperture(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "0+?$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genExposureTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 214
    .local v2, "time":D
    cmpg-double v4, v2, v10

    if-gez v4, :cond_1

    .line 215
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "1/%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-double v8, v10, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 227
    .end local v2    # "time":D
    :cond_0
    :goto_0
    return-object p1

    .line 217
    .restart local v2    # "time":D
    :cond_1
    double-to-int v1, v2

    .line 218
    .local v1, "integer":I
    int-to-double v4, v1

    sub-double/2addr v2, v4

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, " 1/%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 224
    .end local v1    # "integer":I
    .end local v2    # "time":D
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private genFlashFired(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;->isFlashFired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0227

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0e0226

    goto :goto_0
.end method

.method private genFocalLength(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genISO(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genLocation([F)Ljava/lang/String;
    .locals 4
    .param p1, "coordidate"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    aget v0, p1, v2

    aget v1, p1, v3

    invoke-static {v0, v1}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordidate(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private genPixels(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # Ljava/lang/Object;
    .param p2, "height"    # Ljava/lang/Object;

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNeedConfirmPassword()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAddress(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->cancelAddressRequest()V

    .line 454
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const-string v0, "PhotoDetailFragment"

    const-string v1, "Abort request address task due to lack of CTA network connection permission"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getNetworkPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v6

    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoDetailFragment$2;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;DD)V

    new-instance v1, Lcom/miui/gallery/ui/PhotoDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$3;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V

    invoke-virtual {v6, v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private setItemVisible(Landroid/view/View;Z)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 445
    if-eqz p2, :cond_0

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRootViewClickable(Landroid/view/View;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 187
    if-nez p1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 192
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 195
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    const-string v0, "photo_info"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 535
    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/ui/PhotoDetailFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLoaderCallBack:Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

    .line 536
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const-string v1, "PhotoDetailFragment"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLoaderCallBack:Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 538
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 541
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    return-void

    .line 166
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 167
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finishActivity(I)V

    goto :goto_0

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finishActivity(I)V

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 520
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->cancelAddressRequest()V

    .line 521
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "photo_detail_target"

    .line 83
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/model/BaseDataItem;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v2, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finish()V

    .line 86
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setRootViewClickable(Landroid/view/View;)V

    .line 87
    const v2, 0x7f0400d9

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1201f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeItem:Landroid/view/View;

    .line 89
    const v2, 0x7f1201f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeTitle:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f1201f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeSub:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f1201f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoItem:Landroid/view/View;

    .line 92
    const v2, 0x7f1201fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoTitle:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f1201fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f1201fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f1201fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mParamsItem:Landroid/view/View;

    .line 96
    const v2, 0x7f120200

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsTitle:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f120201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f120202

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f120203

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPathItem:Landroid/view/View;

    .line 100
    const v2, 0x7f120205

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPath:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f120206

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    .line 102
    const v2, 0x7f120208

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f1201d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mContentContainer:Landroid/view/View;

    .line 104
    const v2, 0x7f120014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 105
    const v2, 0x7f120209

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    .line 106
    const v2, 0x7f12020b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageInfo:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 525
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finish()V

    .line 527
    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->isNeedConfirmPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    .line 150
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V

    .line 154
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    .line 159
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 160
    return-void
.end method

.method protected useImageLoader()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method
