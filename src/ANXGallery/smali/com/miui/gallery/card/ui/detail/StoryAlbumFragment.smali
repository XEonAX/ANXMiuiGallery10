.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "StoryAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

.field private mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

.field private mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

.field private mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCard:Lcom/miui/gallery/card/Card;

.field private mCardDescription:Landroid/widget/TextView;

.field private mCardDownloadDialog:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

.field private mCardId:J

.field private mCardTitle:Landroid/widget/TextView;

.field private mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

.field private mDowloadCallback:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

.field private mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDownloadPendings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

.field private mFlexboxLayoutHeight:I

.field private mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

.field private mHeaderView:Landroid/view/View;

.field private mImageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInActionMode:Z

.field private mIsPlayIconScrollStateEnable:Z

.field private mIsShowTranslucentStatusBar:Z

.field private mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mParseFileMetaValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

.field private mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field private mResults:[Landroid/net/Uri;

.field private mSelectedPhotoSha1s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsPlayIconScrollStateEnable:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    .line 446
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 551
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    .line 1092
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1104
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$6;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1144
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadCallback:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    .line 1172
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->checkDowloadPendingFiles()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->showNetworkMeteredDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->startDownload()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->gotoPhotoMovie()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateFlexboxLayoutParamHelper()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateImages(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->parseCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsInActionMode:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateSlideHeaderPlayStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper2;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsShowTranslucentStatusBar:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsShowTranslucentStatusBar:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->saveAndNofity()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsPlayIconScrollStateEnable:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDownloadDialog:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDownloadDialog:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->showConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$7700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method private checkDowloadPendingFiles()V
    .locals 11

    .prologue
    .line 262
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 263
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 265
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/Uri;

    iput-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    .line 266
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;

    .line 267
    .local v3, "parseFile":Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;
    iget v4, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->position:I

    .line 268
    .local v4, "position":I
    iget-object v2, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->originFilePath:Ljava/lang/String;

    .line 269
    .local v2, "originFilePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_0

    .line 277
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v5, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->thumnailFilePath:Ljava/lang/String;

    .line 278
    .local v5, "thumbnailFilePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 279
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_0

    .line 286
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    iget-object v0, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->downloadUri:Landroid/net/Uri;

    .line 287
    .local v0, "downloadUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    sget-object v9, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v9, v10, v4}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    .end local v0    # "downloadUri":Landroid/net/Uri;
    .end local v2    # "originFilePath":Ljava/lang/String;
    .end local v3    # "parseFile":Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;
    .end local v4    # "position":I
    .end local v5    # "thumbnailFilePath":Ljava/lang/String;
    :cond_3
    const-string v6, "StoryAlbumFragment"

    const-string v7, "check dowload file end\uff0cand need download file count: %d ."

    iget-object v8, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method private getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const-string v0, "alias_create_time DESC "

    return-object v0
.end method

.method private getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 5

    .prologue
    .line 538
    const-string v0, "%s IN (\'%s\')"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sha1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\',\'"

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    .line 540
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 538
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTopNImages(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "imageInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p2, :cond_0

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v0, "topNMediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    new-instance v1, Lcom/miui/gallery/card/model/MediaInfoComparator;

    invoke-direct {v1}, Lcom/miui/gallery/card/model/MediaInfoComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 328
    .end local v0    # "topNMediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 530
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    const/4 v2, 0x1

    .line 533
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private gotoPhotoMovie()V
    .locals 7

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getTopNImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-static {v4}, Lcom/miui/gallery/card/CardUtil;->getMovieTemplateFromCard(Lcom/miui/gallery/card/Card;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    .line 294
    invoke-virtual {v5}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/IntentUtil;->startPhotoMovie(Landroid/app/Activity;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->recordSlideShowHeaderClick()V

    .line 296
    return-void
.end method

.method private initHeaderView()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f120076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardTitle:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1200ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDescription:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f12027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void
.end method

.method private parseCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 400
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    :cond_1
    return-void
.end method

.method private recordSlideShowHeaderClick()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "scenarioId"

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "assistant"

    const-string v2, "assistant_card_detail_header_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 341
    return-void
.end method

.method private saveAndNofity()V
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/CardManager;->updateCard(Lcom/miui/gallery/card/Card;)V

    .line 412
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method private showConfirmDialog(Z)V
    .locals 6
    .param p1, "retry"    # Z

    .prologue
    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "download_file_count"

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v4, "local_file_count"

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    array-length v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "size":I
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 313
    .local v3, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    iget v5, v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    add-int/2addr v2, v5

    .line 314
    goto :goto_0

    .line 315
    .end local v3    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_0
    const-string v4, "download_file_size"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v4, "retry_mode"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    new-instance v1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;-><init>()V

    .line 318
    .local v1, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 319
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "confirm_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private showNetworkMeteredDialog()V
    .locals 7

    .prologue
    .line 1124
    new-instance v5, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;

    invoke-direct {v5, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 1135
    .local v5, "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1136
    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1137
    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e049c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1138
    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e049b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1139
    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0498

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1140
    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0499

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1135
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 1142
    return-void
.end method

.method private startDownload()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 303
    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/uri/Downloader;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->start()V

    .line 305
    return-void
.end method

.method private updateCardIds()V
    .locals 6

    .prologue
    .line 372
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v2

    .line 375
    .local v2, "selectedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 397
    :goto_0
    return-void

    .line 379
    :cond_0
    if-nez v0, :cond_1

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .restart local v0    # "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 387
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    .local v3, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 391
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;)V

    .line 395
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/card/Card;->setAllMediaSha1s(Ljava/util/List;)V

    .line 396
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->saveAndNofity()V

    goto :goto_0
.end method

.method private updateFlexboxLayoutParamHelper()V
    .locals 8

    .prologue
    .line 458
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    .line 459
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    .local v1, "imageSizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/card/model/MediaInfo;

    .line 462
    .local v2, "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getOrientation()I

    move-result v5

    invoke-static {v5}, Lcom/miui/gallery/util/ExifUtil;->isWidthHeightRotated(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getHeight()I

    move-result v3

    .line 464
    .local v3, "width":I
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getWidth()I

    move-result v0

    .line 469
    .local v0, "height":I
    :goto_1
    new-instance v5, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v5, v3, v0}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getWidth()I

    move-result v3

    .line 467
    .restart local v3    # "width":I
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 471
    .end local v0    # "height":I
    .end local v2    # "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    iget v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 472
    invoke-virtual {v6}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 471
    invoke-virtual {v4, v1, v5, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->updateLayoutSizes(Ljava/util/List;II)V

    .line 473
    iget v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    if-nez v4, :cond_2

    .line 474
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 476
    :cond_2
    return-void
.end method

.method private updateImages(Landroid/database/Cursor;)Z
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 415
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 416
    .local v1, "old":I
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 417
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 418
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    :cond_0
    new-instance v0, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-direct {v0, p1}, Lcom/miui/gallery/card/model/MediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 421
    .local v0, "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/card/model/MediaInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v3

    .line 422
    .local v3, "tinyImageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    if-eqz v3, :cond_1

    .line 423
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/model/MediaInfo;->setScore(D)V

    .line 425
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    .end local v0    # "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    .end local v2    # "sha1":Ljava/lang/String;
    .end local v3    # "tinyImageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 432
    const-string v4, "StoryAlbumFragment"

    const-string v5, "empty selected ids after data updated"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 434
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateCardIds()V

    .line 436
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_4

    .line 437
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateFlexboxLayoutParamHelper()V

    .line 438
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->updateMedias(Ljava/util/List;)V

    .line 439
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateSlideHeaderPlayStatus()V

    .line 440
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateCardIds()V

    .line 441
    const/4 v4, 0x1

    .line 443
    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateSlideHeaderPlayStatus()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsInActionMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsPlayIconScrollStateEnable:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setPlayEnable(Z)V

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setPlayEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getLoader()Landroid/content/Loader;
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const-string/jumbo v0, "story_album"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 130
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    const-string v3, "card"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_0
    iput-wide v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    .line 131
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/card/CardManager;->getCardByCardId(J)Lcom/miui/gallery/card/Card;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "allSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 135
    .local v2, "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v2

    .line 140
    :cond_0
    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 142
    :cond_1
    const-string v3, "StoryAlbumFragment"

    const-string v4, "LocalIds should not be null %s"

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->finish()V

    .line 157
    :goto_1
    return-void

    .line 130
    .end local v0    # "allSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 147
    .restart local v0    # "allSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    .line 148
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    .line 149
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-direct {v3, p0, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .line 152
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    .line 153
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->setTitle(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    invoke-direct {v3, p0, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method

.method public onAttachDialogFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1114
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1115
    check-cast v0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    .line 1116
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1117
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1121
    .end local v0    # "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    .end local p1    # "fragment":Landroid/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 1118
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v1, p1, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    if-eqz v1, :cond_0

    .line 1119
    check-cast p1, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadCallback:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->setCallBack(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1155
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroyView()V

    .line 1156
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 1164
    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    .line 1166
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 1168
    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    .line 1170
    :cond_3
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 161
    const v3, 0x7f04013a

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f12027d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 164
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 165
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 166
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 167
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 168
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setRecycleChildrenOnDetach(Z)V

    .line 169
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 170
    new-instance v1, Lcom/google/android/flexbox/FlexboxItemDecoration;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v3}, Lcom/google/android/flexbox/FlexboxItemDecoration;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "flexboxItemDecoration":Lcom/google/android/flexbox/FlexboxItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 175
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040138

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    .line 176
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->initHeaderView()V

    .line 177
    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    .line 178
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    invoke-virtual {v3, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->setHasStableIds(Z)V

    .line 179
    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    invoke-direct {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    .line 180
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->setHeaderView(Landroid/view/View;)V

    .line 182
    new-instance v3, Lcom/miui/gallery/widget/EditableListViewWrapper2;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-direct {v3, v4}, Lcom/miui/gallery/widget/EditableListViewWrapper2;-><init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .line 183
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 208
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-virtual {v3, v6}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->enableChoiceMode(Z)V

    .line 209
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/EditableListViewWrapper2$MultiChoiceModeListener;)V

    .line 210
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 211
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;

    invoke-direct {v4, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 212
    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->pause()V

    .line 363
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onResume()V

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->resume()V

    .line 355
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStart()V

    .line 346
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->resume()V

    .line 347
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStop()V

    .line 368
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->pause()V

    .line 369
    return-void
.end method
