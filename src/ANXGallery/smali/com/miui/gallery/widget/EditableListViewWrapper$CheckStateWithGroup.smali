.class Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;
.super Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckStateWithGroup"
.end annotation


# instance fields
.field private mGroupCheckState:Landroid/util/SparseBooleanArray;

.field private mListAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

.field private mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "animationManager"    # Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    .prologue
    .line 1360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper$1;)V

    .line 1356
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    .line 1361
    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .end local p1    # "listView":Landroid/widget/AbsListView;
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 1362
    iput-object p2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    .line 1363
    return-void
.end method

.method private setCheckStateInternal(IZZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .param p3, "refreshHeader"    # Z

    .prologue
    .line 1403
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->setCheckState(IZ)V

    .line 1404
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    sget-object v6, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    if-ne v5, v6, :cond_1

    .line 1405
    if-eqz p3, :cond_1

    .line 1406
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 1407
    invoke-virtual {v5, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getGroupIndexByItemIndex(I)I

    move-result v1

    .line 1408
    .local v1, "groupIndex":I
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->getGroupCheckState(I)Z

    move-result v3

    .line 1409
    .local v3, "oldGroupCheckState":Z
    const/4 v2, 0x1

    .line 1410
    .local v2, "newGroupCheckState":Z
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 1411
    invoke-virtual {v5, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getGroupItemStartIndex(I)I

    move-result v0

    .line 1413
    .local v0, "beginIndex":I
    move v4, v0

    .local v4, "pos":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 1414
    invoke-virtual {v5, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getGroupItemsCount(I)I

    move-result v5

    add-int/2addr v5, v0

    if-ge v4, v5, :cond_0

    .line 1415
    invoke-virtual {p0, v4}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1416
    const/4 v2, 0x0

    .line 1421
    :cond_0
    if-eq v3, v2, :cond_1

    .line 1422
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1423
    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->notifyChanged()V

    .line 1427
    .end local v0    # "beginIndex":I
    .end local v1    # "groupIndex":I
    .end local v2    # "newGroupCheckState":Z
    .end local v3    # "oldGroupCheckState":Z
    .end local v4    # "pos":I
    :cond_1
    return-void

    .line 1414
    .restart local v0    # "beginIndex":I
    .restart local v1    # "groupIndex":I
    .restart local v2    # "newGroupCheckState":Z
    .restart local v3    # "oldGroupCheckState":Z
    .restart local v4    # "pos":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1393
    invoke-super {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->clear()V

    .line 1394
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1395
    return-void
.end method

.method public getGroupCheckState(I)Z
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public setAllChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 1430
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->setAllChecked(Z)V

    .line 1431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderNum()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->notifyChanged()V

    .line 1435
    return-void
.end method

.method public setCheckState(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 1398
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->setCheckStateInternal(IZZ)V

    .line 1399
    return-void
.end method

.method public setGroupCheckState(I)Z
    .locals 12
    .param p1, "groupIndex"    # I

    .prologue
    const/4 v9, 0x0

    .line 1370
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->getGroupCheckState(I)Z

    move-result v6

    .line 1371
    .local v6, "oldState":Z
    if-nez v6, :cond_1

    const/4 v5, 0x1

    .line 1372
    .local v5, "newState":Z
    :goto_0
    iget-object v10, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1374
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 1375
    .local v1, "gridView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    invoke-virtual {v1, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getGroupItemStartIndex(I)I

    move-result v0

    .line 1376
    .local v0, "beginIndex":I
    const/4 v3, 0x0

    .line 1377
    .local v3, "j":I
    move v7, v0

    .line 1378
    .local v7, "position":I
    :goto_1
    invoke-virtual {v1, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getGroupItemsCount(I)I

    move-result v10

    add-int/2addr v10, v0

    if-ge v7, v10, :cond_2

    .line 1379
    invoke-direct {p0, v7, v5, v9}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->setCheckStateInternal(IZZ)V

    .line 1380
    iget-object v10, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v10, v7}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildViewByItemIndex(I)Landroid/view/View;

    move-result-object v8

    .line 1382
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_0

    instance-of v10, v8, Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper$BackgroundImageViewable;

    if-eqz v10, :cond_0

    .line 1383
    check-cast v8, Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper$BackgroundImageViewable;

    .line 1384
    .end local v8    # "view":Landroid/view/View;
    invoke-interface {v8}, Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 1385
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckStateWithGroup;->mListAnimationManager:Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    mul-int/lit8 v11, v3, 0x28

    invoke-virtual {v10, v2, v7, v5, v11}, Lcom/miui/gallery/widget/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V

    move v3, v4

    .line 1378
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "beginIndex":I
    .end local v1    # "gridView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .end local v3    # "j":I
    .end local v5    # "newState":Z
    .end local v7    # "position":I
    :cond_1
    move v5, v9

    .line 1371
    goto :goto_0

    .line 1389
    .restart local v0    # "beginIndex":I
    .restart local v1    # "gridView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .restart local v3    # "j":I
    .restart local v5    # "newState":Z
    .restart local v7    # "position":I
    :cond_2
    return v5
.end method
