.class public Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;
.super Landroid/app/ListFragment;
.source "CloudGuideAutoBackupFragment.java"

# interfaces
.implements Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

.field private mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    return-object v0
.end method

.method private changeAutoUpload(JZ)V
    .locals 1
    .param p1, "albumId"    # J
    .param p3, "autoBackup"    # Z

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeAutoUpload(Landroid/content/Context;JZ)V

    .line 190
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    new-instance v0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;-><init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;)V

    .line 107
    .local v0, "callback":Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$AlbumListLoaderCallback;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 109
    return-void
.end method

.method public onAutoBackupStateChanged(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "autoBackup"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->changeAutoUpload(JZ)V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 52
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "autobackup_album_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 53
    .local v0, "initialAutobackupAlbumId":J
    const-string v3, "cloud_guide_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    iput-object v3, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mSource:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    .line 54
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 55
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->changeAutoUpload(JZ)V

    .line 57
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1200ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "enableServiceButton":Landroid/view/View;
    new-instance v2, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;-><init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v2, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    .line 98
    iget-object v2, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isAutoUploadedAlbum(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->reverseAutoBackupUiState(Landroid/view/View;I)V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getAutoBackupUiState(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->onAutoBackupStateChanged(IZ)V

    .line 181
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isCameraAlbum(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e00bd

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isBabyAlbum(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0070

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isOwnerShareAlbum(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0464

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->reverseAutoBackupUiState(Landroid/view/View;I)V

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->mAdapter:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getAutoBackupUiState(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->onAutoBackupStateChanged(IZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 114
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cloud_guide_autobackup"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 122
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cloud_guide_autobackup"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 125
    return-void
.end method
