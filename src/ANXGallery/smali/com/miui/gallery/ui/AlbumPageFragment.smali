.class public Lcom/miui/gallery/ui/AlbumPageFragment;
.super Lcom/miui/gallery/ui/BaseAlbumPageFragment;
.source "AlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;,
        Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;,
        Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;
    }
.end annotation


# instance fields
.field private mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

.field private mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

.field private mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

.field private mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

.field private mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

.field private mCreateAlbumButton:Landroid/view/View;

.field private mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

.field private mHasEnterPrivateEntry:Z

.field private mLoaderInitialized:Z

.field private mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

.field private mPendingDisplayCreateAlbum:Z

.field private mPendingLoadExtraInfo:Z

.field private mPrivateEntryTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

.field private mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

.field private mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

.field private mShowAIAlbum:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    .line 79
    new-instance v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;-><init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    .line 210
    new-instance v0, Lcom/miui/gallery/ui/AlbumPageFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$3;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPrivateEntryTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    .line 528
    new-instance v0, Lcom/miui/gallery/ui/AlbumPageFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$5;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .line 540
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->startToLoadAlbumExtraInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingDisplayCreateAlbum:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingDisplayCreateAlbum:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/AlbumPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getNewCreateAlbumPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/AlbumPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getRecyclerPaddingBottom()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->enterPrivateEntry()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AlbumPageFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getAlbumQueryUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->addHeaderAlbumUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingLoadExtraInfo:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingLoadExtraInfo:Z

    return p1
.end method

.method private addHeaderAlbumUI()V
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->setHeaderView(Landroid/view/View;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->setHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private doEnterPrivateEntry()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 234
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->startAuthenticatePrivacyPassword(Landroid/app/Fragment;)V

    .line 237
    :cond_0
    return-void
.end method

.method private enterPrivateEntry()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "check_login_and_sync"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SECRET:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 229
    invoke-static {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method private getAlbumQueryUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 419
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_face"

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 420
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "join_video"

    .line 421
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "join_share"

    .line 422
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "join_recent"

    .line 423
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "join_favorites"

    .line 424
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "exclude_empty_album"

    .line 425
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNewCreateAlbumPosition()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getMostlyRecentCreatedAlbumPosition()I

    move-result v0

    return v0
.end method

.method private getRecyclerPaddingBottom()I
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "fabHeight":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 411
    :cond_0
    if-lez v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 414
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVisibleToUser()V
    .locals 1

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->statAlbumEmpty()V

    .line 448
    :cond_0
    return-void
.end method

.method private startToLoadAlbumExtraInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    const-string v0, "AlbumPageFragment"

    const-string/jumbo v1, "startToLoadAlbumExtraInfo"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 470
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 473
    :cond_0
    return-void
.end method

.method private startToLoadAlbums()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 458
    const-string v0, "AlbumPageFragment"

    const-string/jumbo v1, "startToLoadAlbums"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 463
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    .line 464
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingLoadExtraInfo:Z

    goto :goto_0
.end method

.method private statAlbumEmpty()V
    .locals 3

    .prologue
    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "login"

    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "album"

    const-string v2, "album_empty"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 454
    return-void

    .line 452
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, "album"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 255
    if-ne p2, v2, :cond_3

    .line 256
    sparse-switch p1, :sswitch_data_0

    .line 274
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 275
    :goto_1
    return-void

    .line 258
    :sswitch_0
    const-string v1, "AlbumPageFragment"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/IntentUtil;->enterPrivateAlbum(Landroid/content/Context;)V

    goto :goto_0

    .line 262
    :sswitch_1
    const-string v1, "check_login_and_sync"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "checkFor":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 264
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 266
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->doEnterPrivateEntry()V

    goto :goto_0

    .line 272
    .end local v0    # "checkFor":I
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    goto :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    .line 86
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 196
    if-nez p3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 199
    check-cast v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    .line 200
    .local v0, "info":Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
    iget v1, v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->position:I

    .line 201
    .local v1, "position":I
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasFooter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 207
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    .end local v1    # "position":I
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->setContextMenuItems(Landroid/view/ContextMenu;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->onDestroy()V

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->unregisterAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)V

    .line 149
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onDestroyView()V

    .line 150
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 91
    const v5, 0x7f040013

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 92
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f120092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .line 93
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getRecycler()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 94
    new-instance v5, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v5, v6}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    .line 95
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageFragment$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$1;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 101
    new-instance v5, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-direct {v5, p0, v6}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;-><init>(Landroid/app/Fragment;Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    .line 102
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 103
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f020256

    const v7, 0x7f0201af

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;-><init>(Landroid/content/Context;IILcom/miui/gallery/widget/DividerTypeProvider;)V

    .line 105
    .local v0, "decoration":Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    .local v1, "itemDividerPaddingStart":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->setItemDividerPadding(Landroid/graphics/Rect;)V

    .line 107
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 112
    new-instance v5, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-direct {v5, p0, v10}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    .line 113
    const v5, 0x7f120093

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    .line 114
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;

    invoke-direct {v6, p0, v10}, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, v4

    .line 116
    check-cast v5, Lcom/miui/gallery/widget/TwoStageDrawer;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    .line 117
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPrivateEntryTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/TwoStageDrawer;->setTriggerListener(Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;)V

    .line 119
    const v5, 0x7f120091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/search/widget/BannerSearchBar;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    .line 120
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->registerAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 121
    .local v3, "status":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    .line 122
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 123
    .local v2, "showSearchBar":Z
    const-string v5, "AlbumPageFragment"

    const-string v6, "Init search bar: %s, ai album: %s"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    if-eqz v2, :cond_2

    .line 125
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v5, v9}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    .line 126
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-nez v5, :cond_0

    .line 127
    new-instance v5, Lcom/miui/gallery/ui/TopSearchBarController;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const-string v7, "from_album_page"

    invoke-direct {v5, p0, v6, v7}, Lcom/miui/gallery/ui/TopSearchBarController;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/widget/BannerSearchBar;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageFragment$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$2;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/TwoStageDrawer;->post(Ljava/lang/Runnable;)Z

    .line 140
    :goto_0
    iget-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mUserFirstVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    if-nez v5, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->startToLoadAlbums()V

    .line 143
    :cond_1
    return-object v4

    .line 137
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 192
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->onResume()V

    .line 182
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onStart()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    .line 243
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->onVisibleToUser()V

    .line 246
    :cond_0
    return-void
.end method

.method public onStatusChanged(Landroid/util/SparseBooleanArray;)V
    .locals 8
    .param p1, "changedStatus"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 487
    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 490
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 491
    .local v0, "showSearchBar":Z
    const-string v1, "AlbumPageFragment"

    const-string v2, "New search bar status %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    if-eqz v0, :cond_4

    .line 493
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-nez v1, :cond_2

    .line 494
    new-instance v1, Lcom/miui/gallery/ui/TopSearchBarController;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const-string v3, "from_album_page"

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gallery/ui/TopSearchBarController;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/widget/BannerSearchBar;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 499
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    new-instance v2, Lcom/miui/gallery/ui/AlbumPageFragment$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$4;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/widget/BannerSearchBar;->post(Ljava/lang/Runnable;)Z

    .line 515
    .end local v0    # "showSearchBar":Z
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 516
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    .line 517
    const-string v1, "AlbumPageFragment"

    const-string v2, "New ai album status %s"

    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-eqz v1, :cond_6

    .line 519
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 523
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 524
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v1, v4, v7, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 508
    .restart local v0    # "showSearchBar":Z
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v1, :cond_5

    .line 509
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 511
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    goto :goto_1

    .line 521
    .end local v0    # "showSearchBar":Z
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v1, v6, v7, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->setUserVisibleHint(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->startToLoadAlbums()V

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->onVisibleToUser()V

    .line 438
    :cond_1
    return-void
.end method
