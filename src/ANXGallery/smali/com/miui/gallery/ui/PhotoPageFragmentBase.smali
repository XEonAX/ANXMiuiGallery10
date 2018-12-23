.class public abstract Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.super Lcom/miui/gallery/ui/BaseBottomMenuFragment;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;
.implements Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;
.implements Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;
.implements Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;,
        Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;,
        Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;,
        Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;,
        Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;
    }
.end annotation


# instance fields
.field protected isExiting:Z

.field protected mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

.field private mLoadingDialog:Landroid/app/AlertDialog;

.field private mNeedShowLoadingDialog:Z

.field protected mPager:Lcom/miui/gallery/widget/ViewPager;

.field protected mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

.field private mPendingLoadPhotos:Z

.field private mPendingUpdateItem:Z

.field private mPhotosLoaderCallBack:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;

.field private mProcessingMediaLoaderCallback:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

.field protected mProcessingMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingMediaPollingRunnable:Ljava/lang/Runnable;

.field private mShowLoadingDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isExiting:Z

    .line 67
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mNeedShowLoadingDialog:Z

    .line 919
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mShowLoadingDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mShowLoadingDialogRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mNeedShowLoadingDialog:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mNeedShowLoadingDialog:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mLoadingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mLoadingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaLoaderCallback:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaPollingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getProcessingMediaPollingRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingLoadPhotos:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingLoadPhotos:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->startToLoadPhotos()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Lcom/miui/gallery/model/ImageLoadParams;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getImageLoadParams()Lcom/miui/gallery/model/ImageLoadParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingUpdateItem:Z

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingUpdateItem:Z

    return p1
.end method

.method private dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mLoadingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mLoadingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mLoadingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mLoadingDialog:Landroid/app/AlertDialog;

    .line 250
    :cond_0
    return-void
.end method

.method private getEnterViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "photo_enter_transit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "photo_enter_transit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getImageLoadParams()Lcom/miui/gallery/model/ImageLoadParams;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_transition_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/ImageLoadParams;

    .line 322
    .local v0, "ret":Lcom/miui/gallery/model/ImageLoadParams;
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "from_MiuiCamera"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/ImageLoadParams;->setFromCamera(Z)V

    .line 325
    :cond_1
    return-object v0
.end method

.method private getInitCount()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo_count"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, "initCount":I
    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_MiuiCamera"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 317
    :cond_0
    return v0
.end method

.method private getProcessingMediaPollingRunnable()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaPollingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaPollingRunnable:Ljava/lang/Runnable;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaPollingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private startToLoadPhotos()V
    .locals 4

    .prologue
    .line 183
    const-string v0, "PhotoPageFragmentBase"

    const-string/jumbo v1, "startToLoadPhotos"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPhotosLoaderCallBack:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 185
    return-void
.end method

.method private startToLoadProcessingMedias()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 175
    const-string v0, "PhotoPageFragmentBase"

    const-string/jumbo v1, "startToLoadProcessingMedias"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaLoaderCallback:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaLoaderCallback:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 178
    iput-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingLoadPhotos:Z

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method protected delayDoAfterTransit()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected doExit()V
    .locals 3

    .prologue
    .line 286
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isExiting:Z

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isExiting:Z

    .line 290
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onExiting()V

    .line 291
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    .line 298
    .local v0, "listener":Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->doExitTransition(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->finish()V

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isExiting:Z

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 367
    :cond_0
    return-void
.end method

.method protected getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected getPhotoPageInteractionListener()Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    return-object v0
.end method

.method protected abstract getTAG()Ljava/lang/String;
.end method

.method protected isProcessingMedia(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 2
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "PhotoPageFragmentBase"

    const-string v1, "photo uri should not be null %s"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->finish()V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaLoaderCallback:Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

    .line 170
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPhotosLoaderCallBack:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;

    .line 171
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->startToLoadProcessingMedias()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onShared()V

    .line 243
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 280
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->onContentChanged()V

    .line 283
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->restoreState(Landroid/os/Bundle;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 0
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "isFirst"    # Z

    .prologue
    .line 277
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onDestroyView()V

    .line 222
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mProcessingMediaPollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 224
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->removeAllViews()V

    .line 226
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onDetach()V

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mShowLoadingDialogRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mShowLoadingDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->dismissLoadingDialog()V

    .line 235
    return-void
.end method

.method protected onExiting()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onImageLoadFinish(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 359
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 113
    .local v6, "root":Landroid/view/View;
    const v0, 0x7f120013

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setPageMargin(I)V

    .line 115
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getInitCount()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getImageLoadParams()Lcom/miui/gallery/model/ImageLoadParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "photo_init_position"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getEnterViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getPhotoPageInteractionListener()Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;-><init>(ILcom/miui/gallery/model/ImageLoadParams;Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/adapter/PhotoPageAdapter$OnPreviewedListener;Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    .line 116
    new-instance v0, Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;-><init>(Lcom/miui/gallery/widget/ViewPager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnPageChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageChangedListener;)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnPageSettledListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnPageSettledListener;)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnImageLoadFinishListener;)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onViewInflated(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setAdapter(Lcom/miui/gallery/widget/PagerAdapter;)V

    .line 122
    return-object v6
.end method

.method protected onItemChanged(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 268
    return-void
.end method

.method protected onItemSettled(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 274
    return-void
.end method

.method public final onPageChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingUpdateItem:Z

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemChanged(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public final onPageSettled(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingUpdateItem:Z

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemSettled(I)V

    .line 337
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onPause()V

    .line 215
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->dismissLoadingDialog()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mNeedShowLoadingDialog:Z

    .line 217
    return-void
.end method

.method public final onPreviewed()V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->delayDoAfterTransit()V

    .line 349
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingUpdateItem:Z

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPendingUpdateItem:Z

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageChanged(I)V

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageSettled(I)V

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->saveState(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected abstract onShared()V
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onStart()V

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onStart()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onStop()V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onStop()V

    .line 210
    return-void
.end method

.method protected onViewInflated(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 259
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_init_position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_init_position"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 192
    .local v1, "initPos":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_count"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "initCount":I
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 194
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2, v1, v4}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 195
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_init_position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 198
    .end local v0    # "initCount":I
    .end local v1    # "initPos":I
    :cond_0
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 92
    const-string v1, "photo_init_position"

    const-string v2, "photo_init_position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v1, "photo_count"

    const-string v2, "photo_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v1, "photo_enter_transit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 95
    const-string v1, "photo_transition_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "photo_init_position"

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "photo_count"

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_1
    return-void
.end method
