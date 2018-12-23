.class public Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
.super Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.source "BabyAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;,
        Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;,
        Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;
    }
.end annotation


# instance fields
.field private isStickyGridViewAtBottom:Z

.field private isStickyGridViewAtTop:Z

.field private mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

.field private mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

.field private mBabyAlbumPeopleServerId:Ljava/lang/String;

.field private mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

.field private mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

.field private mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

.field private mRecommendFacePhoto2ThisAlbumView:Landroid/view/View;

.field private mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtTop:Z

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtBottom:Z

    .line 76
    new-instance v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    .line 489
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->showMenuDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->gotoPickHeaderBackground()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtBottom:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtTop:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtTop:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mRecommendFacePhoto2ThisAlbumView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    return-object v0
.end method

.method private getOriginalAlbumId()J
    .locals 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 430
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    goto :goto_0
.end method

.method private gotoPickHeaderBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 258
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v2, Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pick-upper-bound"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v1, "pick-need-id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    return-void
.end method

.method private intialFaceHeader(Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "faceHeader"    # Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;
    .param p2, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p3, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    .param p4, "sharerInfoStr"    # Ljava/lang/String;
    .param p5, "peopleId"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setAlbumId(J)V

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p5}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setPeopleServerId(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    new-instance v6, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    iget-boolean v7, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setFaceHeader(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 255
    return-void
.end method

.method private setBabyAlbumBg(J)V
    .locals 5
    .param p1, "photoId"    # J

    .prologue
    .line 434
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 438
    .local v0, "thumbnailInfo":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    if-eqz v0, :cond_0

    .line 442
    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 461
    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showMenuDialog()V
    .locals 5

    .prologue
    .line 268
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x7f0e006f

    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 269
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    new-instance v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$4;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$4;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    .line 270
    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 290
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 291
    return-void
.end method


# virtual methods
.method protected bridge synthetic getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->BABY:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method protected getCreatorIdByPosition(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getCreatorId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    const-string v0, "alias_create_time DESC "

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 295
    const v0, 0x7f040027

    return v0
.end method

.method protected getMediaIdByPosition(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "baby"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected mayDoAdditionalWork(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "o"    # Landroid/database/Cursor;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 306
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->firstBindHeaderPic(Landroid/database/Cursor;)V

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/database/Cursor;)V

    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->move(I)Z

    goto :goto_1
.end method

.method protected needEnableAutoUpload()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 364
    sparse-switch p1, :sswitch_data_0

    .line 404
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 366
    :sswitch_0
    if-eqz p3, :cond_0

    .line 369
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 370
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "baby-info"

    .line 371
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 372
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    new-instance v3, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    const-string/jumbo v7, "thumbnail_info_of_baby"

    .line 373
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 374
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-virtual {v3, v0, v4}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->resetBabyInfoAndThumbnailInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    goto :goto_0

    .line 379
    .end local v0    # "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 380
    const-string v3, "pick-result-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 381
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->setBabyAlbumBg(J)V

    .line 385
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 391
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_2
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1300(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/content/Intent;)V

    goto :goto_0

    .line 397
    :sswitch_3
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1400(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/content/Intent;)V

    goto :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xe -> :sswitch_3
        0x12 -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f13000c

    .line 327
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 328
    return-void

    .line 325
    .end local v0    # "menuResId":I
    :cond_0
    const v0, 0x7f130002

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v7

    .line 167
    .local v7, "view":Landroid/view/View;
    const v0, 0x7f1200ba

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    .line 168
    const v0, 0x7f1200c7

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mRecommendFacePhoto2ThisAlbumView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 170
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "people_id"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    const v0, 0x7f1200bc

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    .line 174
    new-instance v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    const-string/jumbo v4, "thumbnail_info_of_baby"

    .line 175
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 176
    const-string v0, "baby_info"

    .line 177
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 178
    const v0, 0x7f1200bb

    .line 180
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    const-string v0, "baby_sharer_info"

    .line 183
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    move-object v0, p0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->intialFaceHeader(Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    new-instance v1, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->setInnerScollerMessager(Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;)V

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-object v7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v11, 0x1

    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->gotoBabyInfoSettingPage(Z)V

    .line 340
    const-string v0, "baby"

    const-string v1, "baby_edit_baby_info"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 342
    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getFaceImageOfFaceHeaderItem()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 346
    .local v5, "icon":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 347
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    iget-wide v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    const-string v6, "people_id"

    .line 348
    invoke-virtual {v10, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "thumbnail_info_of_baby"

    .line 349
    invoke-virtual {v10, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "baby_info"

    .line 350
    invoke-virtual {v10, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "baby_sharer_info"

    .line 351
    invoke-virtual {v10, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 347
    invoke-static/range {v0 .. v9}, Lcom/miui/gallery/util/IntentUtil;->createShortCutForBabyAlbum(Landroid/content/Context;ZJLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0e04a1

    .line 353
    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 354
    const-string v0, "baby"

    const-string v1, "baby_send_shortcut"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 356
    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x7f1202cf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
