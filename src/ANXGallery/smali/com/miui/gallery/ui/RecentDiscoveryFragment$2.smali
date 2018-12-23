.class Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;
.super Ljava/lang/Object;
.source "RecentDiscoveryFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/RecentDiscoveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAddToAlbum:Landroid/view/MenuItem;

.field private mCreativity:Landroid/view/MenuItem;

.field private mDelete:Landroid/view/MenuItem;

.field private mMode:Landroid/view/ActionMode;

.field private mSend:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private isMenuItemVisible(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 492
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMenuState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 462
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemCount()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 463
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mSend:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 489
    :cond_3
    :goto_0
    return-void

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 480
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mAddToAlbum:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 482
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 483
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 485
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->isMenuItemVisible(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mSend:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 26
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 351
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 437
    const/4 v2, 0x0

    .line 454
    :goto_0
    return v2

    .line 353
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v3, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$1;-><init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v7, v7, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    .line 363
    invoke-virtual {v7}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemIds()[J

    move-result-object v7

    .line 353
    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZ[J)V

    .line 365
    const-string v2, "recent_album"

    const-string v4, "add_to_album"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v25

    .line 440
    .local v25, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v24, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_6

    .line 442
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v22

    .line 443
    .local v22, "key":I
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 371
    .end local v20    # "i":I
    .end local v22    # "key":I
    .end local v24    # "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "selectedItems":Landroid/util/SparseBooleanArray;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->access$300(Lcom/miui/gallery/ui/RecentDiscoveryFragment;Landroid/view/ActionMode;)V

    .line 372
    const-string v2, "recent_album"

    const-string v4, "delete_photo"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 378
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v4, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2$2;-><init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;Landroid/view/ActionMode;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    .line 383
    invoke-virtual {v5}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItems()Ljava/util/List;

    move-result-object v5

    .line 378
    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doProduceCreation(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/List;)V

    .line 384
    const-string v2, "recent_album"

    const-string v4, "produce"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :sswitch_3
    const v9, 0x7fffffff

    .line 389
    .local v9, "initPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v25

    .line 390
    .restart local v25    # "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v24, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .restart local v24    # "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v21, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_3
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 393
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v22

    .line 394
    .restart local v22    # "key":I
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemKey(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    move/from16 v0, v22

    if-ge v0, v9, :cond_1

    .line 398
    move/from16 v9, v22

    .line 392
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 403
    .end local v22    # "key":I
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 404
    .local v16, "selectedPos":[I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v15, v2, [J

    .line 405
    .local v15, "selectedId":[J
    const/16 v20, 0x0

    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 406
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v16, v20

    .line 407
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v15, v20

    .line 405
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 410
    :cond_3
    const v2, 0x7fffffff

    if-ne v9, v2, :cond_4

    .line 411
    const/4 v9, 0x0

    .line 413
    :cond_4
    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 414
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 415
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemKey(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 416
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget-object v7, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroRecentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 418
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemDecodeRectF()Landroid/graphics/RectF;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 419
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 420
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemSecretKey(I)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 421
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getFileLength(I)J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 423
    .local v3, "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 424
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 425
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getCount()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSelection()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 426
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 427
    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v13

    move-object v14, v3

    .line 423
    invoke-static/range {v7 .. v16}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[I)V

    .line 430
    .end local v3    # "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    .line 431
    const-string v2, "recent_album"

    const-string v4, "send"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 447
    .end local v9    # "initPos":I
    .end local v15    # "selectedId":[J
    .end local v16    # "selectedPos":[I
    .end local v21    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v17

    .line 448
    .local v17, "adapter":Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 449
    .local v23, "position":Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getDateModified(I)J

    move-result-wide v18

    .line 450
    .local v18, "dateModified":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->access$100(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->access$102(Lcom/miui/gallery/ui/RecentDiscoveryFragment;J)J

    goto :goto_5

    .line 454
    .end local v18    # "dateModified":J
    .end local v23    # "position":Ljava/lang/Integer;
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120245 -> :sswitch_1
        0x7f1202d6 -> :sswitch_2
        0x7f1202d7 -> :sswitch_3
        0x7f1202d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->updateMenuState()V

    .line 316
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 325
    iput-object p1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mMode:Landroid/view/ActionMode;

    .line 326
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f13000e

    .line 328
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 329
    const v1, 0x7f1202d9

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mAddToAlbum:Landroid/view/MenuItem;

    .line 330
    const v1, 0x7f1202d6

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    .line 331
    const v1, 0x7f120245

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    .line 332
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mCreativity:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :cond_1
    const v1, 0x7f1202d7

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->mSend:Landroid/view/MenuItem;

    .line 339
    const-string v1, "recent_album"

    const-string v2, "action_mode_create"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return v3

    .line 326
    .end local v0    # "menuResId":I
    :cond_2
    const v0, 0x7f130005

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 459
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/miui/gallery/ui/RecentDiscoveryFragment$2;->updateMenuState()V

    .line 321
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method
