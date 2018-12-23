.class public Lcom/miui/gallery/ui/BackupTitle;
.super Landroid/widget/LinearLayout;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BackupTitle$TitleData;,
        Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;,
        Lcom/miui/gallery/ui/BackupTitle$TitleItemData;,
        Lcom/miui/gallery/ui/BackupTitle$SlimDeviceSpaceListener;,
        Lcom/miui/gallery/ui/BackupTitle$ExpanseCloudSpaceListener;,
        Lcom/miui/gallery/ui/BackupTitle$SetCTAListener;,
        Lcom/miui/gallery/ui/BackupTitle$SetNetworkListener;,
        Lcom/miui/gallery/ui/BackupTitle$OpenSyncSwitchListener;,
        Lcom/miui/gallery/ui/BackupTitle$LoginAccountListener;,
        Lcom/miui/gallery/ui/BackupTitle$ResumeSyncListener;,
        Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;,
        Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;,
        Lcom/miui/gallery/ui/BackupTitle$StopSyncListener;,
        Lcom/miui/gallery/ui/BackupTitle$BaseClickListener;,
        Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    }
.end annotation


# instance fields
.field private mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

.field private mCurSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field private mDirtyContainer:Landroid/view/View;

.field private mDirtyCountText:Landroid/widget/TextView;

.field private mItemsContainer:Landroid/view/ViewGroup;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncingIconAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/BackupTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/BackupTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Lcom/miui/gallery/ui/BackupTitle$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BackupTitle$1;-><init>(Lcom/miui/gallery/ui/BackupTitle;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 244
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 245
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BackupTitle;I)Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle;->findPauseItem(I)Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/BackupTitle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle;->tryStatSyncStateCorrect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/cloud/syncstate/SyncType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p1, "x1"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle;->requestSync(Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    return-void
.end method

.method private addDirtyItem(Lcom/miui/gallery/ui/BackupTitle$TitleData;Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 5
    .param p1, "data"    # Lcom/miui/gallery/ui/BackupTitle$TitleData;
    .param p2, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    sget-object v3, Lcom/miui/gallery/ui/BackupTitle$2;->$SwitchMap$com$miui$gallery$cloud$syncstate$SyncStatus:[I

    invoke-virtual {p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 232
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getDirtyCount()[I

    move-result-object v0

    .line 233
    .local v0, "dirtyCount":[I
    aget v3, v0, v2

    iput v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mDirtyPhoto:I

    .line 234
    aget v3, v0, v1

    iput v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mDirtyVideo:I

    .line 235
    aget v3, v0, v2

    aget v4, v0, v1

    add-int/2addr v3, v4

    if-lez v3, :cond_0

    :goto_0
    iput-boolean v1, p1, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mShowDirty:Z

    .line 238
    .end local v0    # "dirtyCount":[I
    :goto_1
    return-void

    .line 229
    :pswitch_0
    iput-boolean v2, p1, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mShowDirty:Z

    goto :goto_1

    .restart local v0    # "dirtyCount":[I
    :cond_0
    move v1, v2

    .line 235
    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private addOperationItem(Lcom/miui/gallery/ui/BackupTitle$TitleData;Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/ui/BackupTitle$TitleData;
    .param p2, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 242
    return-void
.end method

.method private addSyncItem(Lcom/miui/gallery/ui/BackupTitle$TitleData;Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 16
    .param p1, "data"    # Lcom/miui/gallery/ui/BackupTitle$TitleData;
    .param p2, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 248
    new-instance v4, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    .line 249
    .local v4, "item":Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 250
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getDirtyCount()[I

    move-result-object v3

    .line 251
    .local v3, "dirtys":[I
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    add-int v2, v9, v10

    .line 252
    .local v2, "dirtyCount":I
    const-string v9, "BackupTitle"

    const-string v10, "refresh status: %s"

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v6

    .line 254
    .local v6, "syncStatus":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    sget-object v9, Lcom/miui/gallery/ui/BackupTitle$2;->$SwitchMap$com$miui$gallery$cloud$syncstate$SyncStatus:[I

    invoke-virtual {v6}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    sget-object v9, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNAVAILABLE:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq v6, v9, :cond_1

    .line 388
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mItems:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->tryStatSyncStateError(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 392
    return-void

    .line 256
    :pswitch_0
    const v9, 0x7f0e00a2

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 257
    const v9, 0x7f0e0094

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 259
    :pswitch_1
    if-nez v2, :cond_2

    .line 260
    const v9, 0x7f0e04ad

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 263
    :cond_2
    :pswitch_2
    const v9, 0x7f02005f

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v7

    .line 265
    .local v7, "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    sget-object v9, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne v7, v9, :cond_6

    .line 266
    iget-object v9, v4, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mTitle:Ljava/lang/CharSequence;

    if-nez v9, :cond_3

    .line 267
    const v9, 0x7f0e00b2

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 269
    :cond_3
    if-lez v2, :cond_4

    .line 270
    const v9, 0x7f0d0010

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getDirtySize()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v2, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 280
    :cond_4
    :goto_1
    iget-object v9, v4, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnTxt:Ljava/lang/CharSequence;

    if-nez v9, :cond_5

    .line 281
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 282
    const v9, 0x7f0e00a3

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 287
    :cond_5
    :goto_2
    const v9, 0x7f0201b3

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 288
    sget-object v9, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq v6, v9, :cond_0

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getSyncingAnim()Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconAnim(Landroid/view/animation/Animation;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 273
    :cond_6
    iget-object v9, v4, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mTitle:Ljava/lang/CharSequence;

    if-nez v9, :cond_7

    .line 274
    const v9, 0x7f0e00b3

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 276
    :cond_7
    if-lez v2, :cond_4

    .line 277
    const v9, 0x7f0d0011

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v2, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto :goto_1

    .line 284
    :cond_8
    const v9, 0x7f0e00a0

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto :goto_2

    .line 293
    .end local v7    # "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :pswitch_3
    const v9, 0x7f02005e

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00b1

    .line 294
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00b0

    .line 295
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 298
    :pswitch_4
    const v9, 0x7f02005f

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0d000f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v2, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0094

    .line 300
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 301
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 303
    const v9, 0x7f0e00a1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getResumeInterval(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/miui/gallery/util/FormatUtil;->formatHourMinutes(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 307
    .end local v8    # "title":Ljava/lang/String;
    :pswitch_5
    const v9, 0x7f02005c

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00a9

    .line 308
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00a8

    .line 309
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00a7

    .line 310
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 311
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 315
    :pswitch_6
    const v9, 0x7f02005c

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0096

    .line 316
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0095

    .line 317
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0094

    .line 318
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 319
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 325
    :pswitch_7
    const v9, 0x7f02005d

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00ac

    .line 326
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00ab

    .line 327
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e00aa

    .line 328
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 329
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 333
    :pswitch_8
    const v9, 0x7f020059

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e008b

    .line 334
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e008a

    .line 335
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0089

    .line 336
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 337
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 341
    :pswitch_9
    const v9, 0x7f02005b

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0099

    .line 342
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0098

    .line 343
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0097

    .line 344
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 345
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 349
    :pswitch_a
    const v9, 0x7f02005b

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e009c

    .line 350
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e009b

    .line 351
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e009a

    .line 352
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 353
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 357
    :pswitch_b
    const v9, 0x7f020057

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0084

    .line 358
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0083

    .line 359
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0094

    .line 360
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 361
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 365
    :pswitch_c
    const v9, 0x7f02005a

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0090

    .line 366
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e008f

    .line 367
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e008e

    .line 368
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 369
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 373
    :pswitch_d
    const v9, 0x7f020058

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0088

    .line 374
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0087

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getCloudSpaceTotalSize()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getCloudSpaceRemainingSize()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 375
    invoke-virtual {v5, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0e0086

    .line 378
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    const v10, 0x7f0201b3

    .line 379
    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-result-object v9

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BackupTitle;->genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getCloudSpaceTotalSize()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 382
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getCloudSpaceRemainingSize()J

    move-result-wide v12

    long-to-float v11, v12

    mul-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getCloudSpaceTotalSize()J

    move-result-wide v12

    long-to-float v11, v12

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v4, v9}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->setProgress(F)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private findPauseItem(I)Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    .line 101
    .local v0, "item":Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    invoke-static {v0}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->access$000(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 105
    .end local v0    # "item":Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private genClickListener(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Landroid/view/View$OnClickListener;
    .locals 4
    .param p1, "stateInfo"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    const/4 v2, 0x0

    .line 455
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    .line 456
    .local v0, "syncStatus":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    sget-object v1, Lcom/miui/gallery/ui/BackupTitle$2;->$SwitchMap$com$miui$gallery$cloud$syncstate$SyncStatus:[I

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v1, v2

    .line 486
    :goto_0
    return-object v1

    .line 459
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$StopSyncListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$StopSyncListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 462
    :cond_0
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$PauseSyncListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 465
    :pswitch_2
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$ResumeSyncListener;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle;->getImmediateSyncType(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$ResumeSyncListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    goto :goto_0

    .line 471
    :pswitch_3
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle;->getImmediateSyncType(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$SyncImmediateListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    goto :goto_0

    .line 473
    :pswitch_4
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$LoginAccountListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$LoginAccountListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 476
    :pswitch_5
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$OpenSyncSwitchListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$OpenSyncSwitchListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 478
    :pswitch_6
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$SetCTAListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$SetCTAListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 480
    :pswitch_7
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$SetNetworkListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$SetNetworkListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 482
    :pswitch_8
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$SlimDeviceSpaceListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$SlimDeviceSpaceListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 484
    :pswitch_9
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$ExpanseCloudSpaceListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$ExpanseCloudSpaceListener;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private genTitleData(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/ui/BackupTitle$TitleData;
    .locals 2
    .param p1, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 216
    new-instance v0, Lcom/miui/gallery/ui/BackupTitle$TitleData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/BackupTitle$TitleData;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    .line 217
    .local v0, "data":Lcom/miui/gallery/ui/BackupTitle$TitleData;
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/ui/BackupTitle;->addSyncItem(Lcom/miui/gallery/ui/BackupTitle$TitleData;Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 218
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/ui/BackupTitle;->addOperationItem(Lcom/miui/gallery/ui/BackupTitle$TitleData;Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/ui/BackupTitle;->addDirtyItem(Lcom/miui/gallery/ui/BackupTitle$TitleData;Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V

    .line 220
    return-object v0
.end method

.method private getImmediateSyncType(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 3
    .param p1, "curState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v1

    .line 443
    .local v1, "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v0

    .line 444
    .local v0, "syncStatus":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->BATTERY_LOW:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v0, v2, :cond_1

    .line 445
    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 451
    :cond_0
    :goto_0
    return-object v1

    .line 446
    :cond_1
    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->NO_WIFI:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v0, v2, :cond_2

    .line 447
    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0

    .line 448
    :cond_2
    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->UNKNOWN_ERROR:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne v0, v2, :cond_0

    .line 449
    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0
.end method

.method private getPauseMenuItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItems:Ljava/util/List;

    if-nez v3, :cond_0

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItems:Ljava/util/List;

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 88
    .local v1, "hours":[I
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v0, v1, v3

    .line 89
    .local v0, "hour":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "text":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItems:Ljava/util/List;

    new-instance v7, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    invoke-direct {v7, p0, v2, v0}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;-><init>(Lcom/miui/gallery/ui/BackupTitle;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "hour":I
    .end local v1    # "hours":[I
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItems:Ljava/util/List;

    return-object v3
.end method

.method private getSyncingAnim()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mSyncingIconAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mSyncingIconAnim:Landroid/view/animation/Animation;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mSyncingIconAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getView(Lcom/miui/gallery/ui/BackupTitle$TitleItemData;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "itemData"    # Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 161
    if-nez p2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040036

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 163
    new-instance v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;-><init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V

    .line 164
    .local v1, "holder":Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;
    const v2, 0x7f1200cf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 165
    const v2, 0x7f120014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/ColorRingProgress;

    iput-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    .line 166
    const v2, 0x7f120076

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 167
    const v2, 0x7f1200df

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mDesc:Landroid/widget/TextView;

    .line 168
    const v2, 0x7f1200de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mTextContainer:Landroid/view/View;

    .line 169
    const v2, 0x7f1200e0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mBtn:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    .end local v1    # "holder":Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;

    .line 173
    .restart local v1    # "holder":Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mIcon:Landroid/widget/ImageView;

    iget v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mIconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mTextContainer:Landroid/view/View;

    iget-object v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mTitleClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 181
    :goto_0
    iget-object v2, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mDesc:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :goto_1
    iget-object v2, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnTxt:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :goto_2
    iget v2, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 197
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    invoke-virtual {v2, v4}, Lcom/miui/gallery/widget/ColorRingProgress;->setVisibility(I)V

    .line 198
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    iget v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mProgress:F

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/ColorRingProgress;->setProgress(F)V

    .line 202
    :goto_3
    iget-object v2, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mIconAnim:Landroid/view/animation/Animation;

    if-eqz v2, :cond_7

    .line 203
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 204
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    :cond_1
    const-string v2, "BackupTitle"

    const-string/jumbo v3, "startAnimation"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mIconAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    :goto_4
    return-object p2

    .line 179
    :cond_3
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 184
    :cond_4
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mDesc:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mDesc:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 190
    :cond_5
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mBtn:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnTxt:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mBtn:Landroid/widget/TextView;

    iget v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnBgRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 193
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mBtn:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 200
    :cond_6
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/ColorRingProgress;->setVisibility(I)V

    goto :goto_3

    .line 209
    :cond_7
    iget-object v2, v1, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 210
    const-string v2, "BackupTitle"

    const-string v3, "clearAnimation"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private isNormalSyncStatus(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 1
    .param p1, "syncStatus"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 395
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNC_PENDING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCING_METADATA:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->SYNCED:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestSync(Lcom/miui/gallery/cloud/syncstate/SyncType;)V
    .locals 4
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    const/4 v3, 0x1

    .line 559
    new-instance v1, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    .line 560
    invoke-virtual {v1, p1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v1, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 562
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 563
    invoke-virtual {v1, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setManual(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v0

    .line 565
    .local v0, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 566
    return-void
.end method

.method private tryStatSyncStateCorrect(Ljava/lang/String;)V
    .locals 4
    .param p1, "clickName"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BackupTitle;->isNormalSyncStatus(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "error_correct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_state_error_correct"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 420
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private tryStatSyncStateError(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 5
    .param p1, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncStatus()Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    move-result-object v1

    .line 403
    .local v1, "status":Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BackupTitle;->isNormalSyncStatus(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    if-eq v2, v1, :cond_1

    .line 404
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "error_state"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/syncstate/SyncType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v2, "Sync"

    const-string/jumbo v3, "sync_state_error"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 408
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 409
    iput-object v1, p0, Lcom/miui/gallery/ui/BackupTitle;->mCurSyncStatus:Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .line 410
    return-void
.end method


# virtual methods
.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 129
    invoke-direct {p0}, Lcom/miui/gallery/ui/BackupTitle;->getPauseMenuItems()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 131
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    .line 132
    .local v1, "item":Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    const/4 v4, 0x0

    invoke-static {v1}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->access$000(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I

    move-result v5

    invoke-static {v1}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->access$300(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v0, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 133
    .local v3, "menuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/miui/gallery/ui/BackupTitle;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "item":Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f1200da

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BackupTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mItemsContainer:Landroid/view/ViewGroup;

    .line 68
    const v0, 0x7f1200db

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BackupTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mDirtyContainer:Landroid/view/View;

    .line 69
    const v0, 0x7f1200dd

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BackupTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupTitle;->mDirtyCountText:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public refreshSyncState(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)V
    .locals 17
    .param p1, "syncState"    # Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .prologue
    .line 138
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/ui/BackupTitle;->genTitleData(Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;)Lcom/miui/gallery/ui/BackupTitle$TitleData;

    move-result-object v2

    .line 139
    .local v2, "data":Lcom/miui/gallery/ui/BackupTitle$TitleData;
    iget-object v7, v2, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 140
    .local v4, "itemDataCount":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 141
    .local v5, "itemViewCount":I
    move v3, v4

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "convertView":Landroid/view/View;
    iget-object v7, v2, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/BackupTitle;->mItemsContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v8}, Lcom/miui/gallery/ui/BackupTitle;->getView(Lcom/miui/gallery/ui/BackupTitle$TitleItemData;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 147
    .local v6, "view":Landroid/view/View;
    if-eq v6, v1, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mItemsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v1    # "convertView":Landroid/view/View;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    iget-boolean v7, v2, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mShowDirty:Z

    if-eqz v7, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mDirtyContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mDirtyCountText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0091

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v2, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mDirtyPhoto:I

    iget v0, v2, Lcom/miui/gallery/ui/BackupTitle$TitleData;->mDirtyVideo:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_2
    return-void

    .line 155
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/BackupTitle;->mDirtyContainer:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
