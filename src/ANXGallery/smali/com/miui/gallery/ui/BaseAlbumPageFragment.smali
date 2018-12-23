.class public abstract Lcom/miui/gallery/ui/BaseAlbumPageFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "BaseAlbumPageFragment.java"


# instance fields
.field protected mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

.field private mCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

.field protected mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field protected mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 350
    new-instance v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeShowInOtherAlbums(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onEnableAutoUpload(Z)V

    return-void
.end method

.method private doChangeShowInOtherAlbums(Z)V
    .locals 4
    .param p1, "showInOtherAlbums"    # Z

    .prologue
    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v2

    .line 466
    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeShowInOtherAlbums(Landroid/content/Context;JZ)V

    .line 469
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0e046d

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;I)V

    .line 472
    return-void

    .line 469
    :cond_0
    const v0, 0x7f0e046c

    goto :goto_0
.end method

.method private doChangeShowInPhotosTab(Z)V
    .locals 4
    .param p1, "showInPhotosTab"    # Z

    .prologue
    .line 460
    .line 461
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v2

    .line 460
    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeShowInPhotosTab(Landroid/content/Context;JZ)V

    .line 463
    return-void
.end method

.method private doDelete(Ljava/lang/String;)V
    .locals 14
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v0}, Lcom/miui/gallery/model/AlbumEntity;->getCount()I

    move-result v9

    .line 304
    .local v9, "itemCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v8

    .line 305
    .local v8, "existXiaomiAccount":Z
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    .line 307
    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getAttributes()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v3}, Lcom/miui/gallery/model/AlbumEntity;->getServerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    .line 308
    invoke-virtual {v4}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v4

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isAutoUploadedAlbum(JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v11

    .line 311
    .local v6, "addDeleteCloudOption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0140

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    if-eqz v8, :cond_2

    if-nez v6, :cond_2

    const v0, 0x7f0e0143

    .line 314
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v12

    aput-object p1, v3, v11

    const/4 v4, 0x2

    if-lez v9, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d000a

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v0, v5, v9, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v4

    .line 311
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, "msg":Ljava/lang/String;
    new-instance v7, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    .local v7, "builder":Lmiui/app/AlertDialog$Builder;
    if-eqz v6, :cond_0

    .line 321
    const v0, 0x7f0e0144

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 323
    :cond_0
    const v0, 0x7f0e013e

    invoke-virtual {v7, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0, v10}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;

    invoke-direct {v2, p0, v6}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V

    .line 325
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 348
    return-void

    .end local v6    # "addDeleteCloudOption":Z
    .end local v7    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_1
    move v6, v12

    .line 309
    goto :goto_0

    .line 314
    .restart local v6    # "addDeleteCloudOption":Z
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 316
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method private doForceTop(Z)V
    .locals 3
    .param p1, "forceTop"    # Z

    .prologue
    .line 286
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v2}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v0

    .line 287
    .local v0, "albumId":J
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doForceTop(Landroid/content/Context;JZ)V

    .line 288
    return-void
.end method

.method private doHideOrUnhide(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 291
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v2}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v0

    .line 292
    .local v0, "albumId":J
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doHideOrUnhide(Landroid/content/Context;JZ)V

    .line 293
    return-void
.end method

.method private doRename()V
    .locals 5

    .prologue
    .line 296
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    .line 297
    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->newInstance(JLjava/lang/String;Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)Lcom/miui/gallery/ui/AlbumRenameDialogFragment;

    move-result-object v0

    .line 298
    .local v0, "albumRenameDialogFragment":Lcom/miui/gallery/ui/AlbumRenameDialogFragment;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlbumRenameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private isManualRenameRestricted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 281
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v0

    .line 282
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isManualRenameRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private moveToOtherAlbums()V
    .locals 7

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e029e

    const v2, 0x7f0e02fc

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$4;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$4;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 392
    return-void
.end method

.method private onEnableAutoUpload(Z)V
    .locals 4
    .param p1, "sharePending"    # Z

    .prologue
    .line 409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v0, "data":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 411
    const-string v1, "check_login_and_sync"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    :goto_0
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->AUTOBACKUP:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 416
    const-string v1, "autobackup_album_id"

    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v2}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 417
    invoke-static {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 418
    return-void

    .line 413
    :cond_0
    const-string v1, "check_login_and_sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private removeFromOtherAlbums()V
    .locals 7

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e03e4

    const v2, 0x7f0e0302

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 378
    return-void
.end method

.method private showAlbumShareInfo()V
    .locals 7

    .prologue
    .line 475
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    .line 476
    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getAttributes()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v3}, Lcom/miui/gallery/model/AlbumEntity;->getServerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    .line 477
    invoke-virtual {v4}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v4

    .line 475
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isAutoUploadedAlbum(JLjava/lang/String;J)Z

    move-result v6

    .line 479
    .local v6, "isAutoUploadedAlbum":Z
    if-nez v6, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 482
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$7;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$7;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    .line 480
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->share()V

    goto :goto_0
.end method

.method private statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V
    .locals 3
    .param p1, "entity"    # Lcom/miui/gallery/model/AlbumEntity;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "path"

    invoke-virtual {p1}, Lcom/miui/gallery/model/AlbumEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "album"

    invoke-static {v1, p2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    return-void
.end method


# virtual methods
.method protected disableAutoUpload()V
    .locals 7

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0155

    const v2, 0x7f0e0156

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$6;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$6;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 432
    return-void
.end method

.method protected doChangeAutoUpload(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 435
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    iget-object v6, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v6}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isShareAlbum(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0464

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 456
    :cond_0
    :goto_0
    return v1

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 441
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 442
    if-eqz p1, :cond_2

    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->updateGalleryCloudSyncableState()V

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v1}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v2

    .line 450
    .local v2, "albumId":J
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeAutoUpload(Landroid/content/Context;JZ)V

    .line 451
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz p1, :cond_3

    const v1, 0x7f0e006d

    :goto_1
    invoke-static {v5, v1}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;I)V

    move v1, v4

    .line 454
    goto :goto_0

    .line 451
    :cond_3
    const v1, 0x7f0e006c

    goto :goto_1
.end method

.method protected enableAutoUpload()V
    .locals 7

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0177

    const v2, 0x7f0e0178

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$5;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$5;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 406
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 59
    if-ne p2, v3, :cond_0

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    if-nez v1, :cond_1

    .line 63
    const-string v1, "BaseAlbumPageFragment"

    const-string v2, "The selected album entity is null!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "check_login_and_sync"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "checkFor":I
    if-ne v0, v2, :cond_2

    .line 68
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeAutoUpload(Z)Z

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeAutoUpload(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->share()V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 215
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return v0

    .line 219
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 229
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v0}, Lcom/miui/gallery/model/AlbumEntity;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doDelete(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "delete_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 275
    goto :goto_0

    .line 221
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doForceTop(Z)V

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "force_top"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doForceTop(Z)V

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string/jumbo v2, "unforce_top"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :sswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doRename()V

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "rename_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doHideOrUnhide(Z)V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "hide_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doHideOrUnhide(Z)V

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string/jumbo v2, "unhide_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :sswitch_6
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->showAlbumShareInfo()V

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "share_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :sswitch_7
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->removeFromOtherAlbums()V

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string/jumbo v2, "show_in_others_disable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :sswitch_8
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->moveToOtherAlbums()V

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string/jumbo v2, "show_in_others_enable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :sswitch_9
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->enableAutoUpload()V

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "auto_upload_enable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :sswitch_a
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->disableAutoUpload()V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string v2, "auto_upload_disable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :sswitch_b
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeShowInPhotosTab(Z)V

    .line 266
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string/jumbo v2, "show_in_home_enable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :sswitch_c
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeShowInPhotosTab(Z)V

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    const-string/jumbo v2, "show_in_home_disable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/AlbumEntity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x7f120245 -> :sswitch_0
        0x7f1202c3 -> :sswitch_1
        0x7f1202c4 -> :sswitch_2
        0x7f1202c5 -> :sswitch_4
        0x7f1202c6 -> :sswitch_5
        0x7f1202c7 -> :sswitch_6
        0x7f1202c8 -> :sswitch_3
        0x7f1202c9 -> :sswitch_7
        0x7f1202ca -> :sswitch_8
        0x7f1202cb -> :sswitch_b
        0x7f1202cc -> :sswitch_c
        0x7f1202cd -> :sswitch_9
        0x7f1202ce -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 98
    if-nez p3, :cond_0

    .line 103
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 101
    check-cast v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    .line 102
    .local v0, "info":Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
    iget v1, v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->position:I

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->setContextMenuItems(Landroid/view/ContextMenu;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->updateGalleryCloudSyncableState()V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected setContextMenuItems(Landroid/view/ContextMenu;I)V
    .locals 20
    .param p1, "contextMenu"    # Landroid/view/ContextMenu;
    .param p2, "position"    # I

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/model/AlbumEntity;->fromCursor(Landroid/database/Cursor;)Lcom/miui/gallery/model/AlbumEntity;

    move-result-object v8

    .line 107
    .local v8, "entity":Lcom/miui/gallery/model/AlbumEntity;
    if-nez v8, :cond_1

    .line 108
    const-string v18, "BaseAlbumPageFragment"

    const-string v19, "album entity should not be null!!!"

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/activity/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v18

    const v19, 0x7f130001

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/model/AlbumEntity;->getAlbumName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 117
    const v18, 0x7f1202c3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 118
    .local v9, "forceTopItem":Landroid/view/MenuItem;
    const v18, 0x7f1202c4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 119
    .local v16, "unforceTopItem":Landroid/view/MenuItem;
    const v18, 0x7f120245

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 120
    .local v3, "deleteItem":Landroid/view/MenuItem;
    const v18, 0x7f1202c7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 121
    .local v15, "shareItem":Landroid/view/MenuItem;
    const v18, 0x7f1202c9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 122
    .local v13, "removeFromOtherAlbumsItem":Landroid/view/MenuItem;
    const v18, 0x7f1202ca

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 123
    .local v12, "moveToOtherAlbumsItem":Landroid/view/MenuItem;
    const v18, 0x7f1202cd

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 124
    .local v6, "enableAutoUploadItem":Landroid/view/MenuItem;
    const v18, 0x7f1202ce

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 125
    .local v4, "disableAutoUploadItem":Landroid/view/MenuItem;
    const v18, 0x7f1202cb

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 126
    .local v7, "enablePhotosTabItem":Landroid/view/MenuItem;
    const v18, 0x7f1202cc

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 127
    .local v5, "disablePhotosTabItem":Landroid/view/MenuItem;
    const v18, 0x7f1202c5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 128
    .local v10, "hideItem":Landroid/view/MenuItem;
    const v18, 0x7f1202c6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 129
    .local v17, "unhideItem":Landroid/view/MenuItem;
    const v18, 0x7f1202c8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 132
    .local v14, "renameItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isForceTypeTime(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 133
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v11

    .line 139
    .local v11, "isGalleryCloudSyncable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isSystemAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isScreenshotsAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 141
    if-eqz v11, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isAutoUploadedAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 143
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isShowedPhotosTabAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 150
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 135
    .end local v11    # "isGalleryCloudSyncable":Z
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 145
    .restart local v11    # "isGalleryCloudSyncable":Z
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 152
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 155
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isOtherShareAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 156
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isHiddenAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 159
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 161
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 164
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->albumUnwriteable(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isHiddenAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 166
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 168
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 171
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isBabyAlbum(I)Z

    move-result v18

    if-nez v18, :cond_c

    .line 175
    if-eqz v11, :cond_b

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isAutoUploadedAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 177
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isHiddenAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 184
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/model/AlbumEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->isManualRenameRestricted(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isOtherAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 193
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isShowedPhotosTabAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 199
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 179
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 186
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 189
    :cond_f
    const/16 v18, 0x0

    goto :goto_5

    .line 195
    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 201
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected share()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v5}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v3

    .line 504
    .local v3, "isOtherShareAlbum":Z
    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v5}, Lcom/miui/gallery/model/AlbumEntity;->getId()J

    move-result-wide v0

    .line 505
    .local v0, "albumId":J
    if-eqz v3, :cond_0

    .line 506
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v0

    .line 508
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/AlbumEntity;

    invoke-virtual {v5}, Lcom/miui/gallery/model/AlbumEntity;->getBabyInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 510
    .local v2, "isBabyAlbum":Z
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/share/Path;

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/miui/gallery/share/Path;-><init>(JZZ)V

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    .line 509
    :cond_1
    invoke-static {v5, v6, v4}, Lcom/miui/gallery/share/UIHelper;->showAlbumShareInfo(Landroid/app/Activity;Lcom/miui/gallery/share/Path;I)V

    .line 513
    return-void

    .end local v2    # "isBabyAlbum":Z
    :cond_2
    move v2, v4

    .line 508
    goto :goto_0
.end method
