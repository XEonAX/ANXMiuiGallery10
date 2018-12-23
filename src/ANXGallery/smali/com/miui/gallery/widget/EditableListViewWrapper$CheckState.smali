.class Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;,
        Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;
    }
.end annotation


# instance fields
.field protected mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

.field protected mCheckState:Landroid/util/SparseBooleanArray;

.field protected mIndex:J

.field private mReverseIndex:J

.field protected mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

.field protected mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

.field protected mUserSelectedIdIndex:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1442
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1443
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    .line 1445
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    .line 1446
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    .line 1448
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    .line 1449
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseIndex:J

    .line 1676
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper$1;

    .prologue
    .line 1438
    invoke-direct {p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;-><init>()V

    return-void
.end method

.method private getSortedKeysByIndex([J[J)[J
    .locals 2
    .param p1, "selectedKeys"    # [J
    .param p2, "selectedIndexs"    # [J

    .prologue
    .line 1638
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 1642
    :goto_0
    return-object p1

    .line 1641
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v0, v1}, Lcom/miui/gallery/util/SyncSortUtil;->sort([J[JII)V

    goto :goto_0
.end method

.method private getSortedPositionsByIndex([I[J)[I
    .locals 2
    .param p1, "selectedPositions"    # [I
    .param p2, "selectedIndexs"    # [J

    .prologue
    .line 1653
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 1657
    :goto_0
    return-object p1

    .line 1656
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v0, v1}, Lcom/miui/gallery/util/SyncSortUtil;->sort([I[JII)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;)V
    .locals 0
    .param p1, "source"    # Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    .prologue
    .line 1452
    if-nez p1, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1455
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1504
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    .line 1505
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    .line 1506
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1507
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1508
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1509
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    .line 1510
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseIndex:J

    .line 1511
    return-void
.end method

.method public getCheckState(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    if-ne v0, v1, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1462
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCheckState(J)Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckState(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1466
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    sget-object v3, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 20

    .prologue
    .line 1536
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v14

    .line 1537
    .local v14, "selectedItemCount":I
    if-nez v14, :cond_1

    .line 1538
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v3, v0, [J

    .line 1578
    :cond_0
    :goto_0
    return-object v3

    .line 1540
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [J

    .line 1542
    .local v15, "selectedKeys":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [J

    .line 1543
    .local v13, "selectedIndexs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_2

    if-ge v7, v14, :cond_2

    .line 1544
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .local v8, "j":I
    move v6, v7

    .line 1545
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    aput-wide v18, v15, v6

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v13, v6

    .line 1543
    add-int/lit8 v2, v2, 0x1

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .line 1548
    .end local v6    # "index":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getSortedKeysByIndex([J[J)[J

    move-result-object v3

    goto :goto_0

    .line 1557
    .end local v2    # "i":I
    .end local v7    # "j":I
    .end local v13    # "selectedIndexs":[J
    .end local v15    # "selectedKeys":[J
    :cond_3
    new-array v3, v14, [J

    .line 1558
    .local v3, "ids":[J
    const/4 v9, 0x0

    .line 1559
    .local v9, "resultIndex":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_5

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getItemId(I)J

    move-result-wide v4

    .line 1562
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_4

    .line 1563
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .local v10, "resultIndex":I
    aput-wide v4, v3, v9

    move v9, v10

    .line 1559
    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1566
    .end local v4    # "id":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [J

    .line 1568
    .local v12, "reverseSelectedKeys":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v11, v0, [J

    .line 1569
    .local v11, "reverseSelectedIndexes":[J
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_6

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    aput-wide v18, v12, v2

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v11, v2

    .line 1569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1573
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getSortedKeysByIndex([J[J)[J

    move-result-object v16

    .line 1574
    .local v16, "sortedReverseSelectedIds":[J
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    if-ge v9, v14, :cond_0

    .line 1575
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .restart local v10    # "resultIndex":I
    aget-wide v18, v16, v2

    aput-wide v18, v3, v9

    .line 1574
    add-int/lit8 v2, v2, 0x1

    move v9, v10

    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    goto :goto_4
.end method

.method public getCheckedItemOrderedPositions()[I
    .locals 20

    .prologue
    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getCount()I

    move-result v14

    .line 1589
    .local v14, "selectedItemCount":I
    if-nez v14, :cond_1

    .line 1590
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 1627
    :cond_0
    :goto_0
    return-object v8

    .line 1592
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 1594
    .local v15, "selectedPositions":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [J

    .line 1595
    .local v13, "selectedIndexs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_3

    if-ge v6, v14, :cond_3

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getItemId(I)J

    move-result-wide v4

    .line 1597
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-ltz v17, :cond_2

    .line 1598
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    move v3, v6

    .line 1599
    .local v3, "index":I
    aput v2, v15, v3

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v13, v3

    move v6, v7

    .line 1595
    .end local v3    # "index":I
    .end local v7    # "j":I
    .restart local v6    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1603
    .end local v4    # "id":J
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getSortedPositionsByIndex([I[J)[I

    move-result-object v8

    goto :goto_0

    .line 1605
    .end local v2    # "i":I
    .end local v6    # "j":I
    .end local v13    # "selectedIndexs":[J
    .end local v15    # "selectedPositions":[I
    :cond_4
    new-array v8, v14, [I

    .line 1606
    .local v8, "positions":[I
    const/4 v9, 0x0

    .line 1607
    .local v9, "resultIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 1608
    .local v12, "reverseSelectedPositions":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v11, v0, [J

    .line 1609
    .local v11, "reverseSelectedIndexs":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getItemId(I)J

    move-result-wide v4

    .line 1611
    .restart local v4    # "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_5

    .line 1612
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .local v10, "resultIndex":I
    aput v2, v8, v9

    move v9, v10

    .line 1615
    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-ltz v17, :cond_6

    .line 1616
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v3, v6

    .line 1617
    .restart local v3    # "index":I
    aput v2, v12, v3

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v11, v3

    move v6, v7

    .line 1609
    .end local v3    # "index":I
    .end local v7    # "j":I
    .restart local v6    # "j":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1621
    .end local v4    # "id":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1622
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->getSortedPositionsByIndex([I[J)[I

    move-result-object v16

    .line 1623
    .local v16, "sortedReverseSelectedPositions":[I
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    if-ge v9, v14, :cond_0

    .line 1624
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .restart local v10    # "resultIndex":I
    aget v17, v16, v2

    aput v17, v8, v9

    .line 1623
    add-int/lit8 v2, v2, 0x1

    move v9, v10

    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    goto :goto_3
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 6

    .prologue
    .line 1519
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    sget-object v5, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    if-ne v4, v5, :cond_4

    .line 1520
    new-instance v4, Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v5}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    .line 1521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1522
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v4, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getItemId(I)J

    move-result-wide v2

    .line 1523
    .local v2, "id":J
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    sget-object v5, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    sget-object v5, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1524
    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1525
    .local v0, "checked":Z
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1524
    .end local v0    # "checked":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1527
    .end local v2    # "id":J
    :cond_3
    sget-object v4, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    iput-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    .line 1529
    .end local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    return-object v4
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    if-ne v0, v1, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1664
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleDataChanged()V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1515
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    .line 1516
    return-void
.end method

.method public setAllChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 1492
    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    .line 1493
    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    .line 1494
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1495
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1496
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    .line 1497
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseIndex:J

    .line 1498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1499
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1493
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    goto :goto_0

    .line 1501
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setCheckState(IZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    const-wide/16 v6, 0x1

    .line 1470
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    sget-object v3, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Status;

    if-ne v2, v3, :cond_0

    .line 1471
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1473
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;

    invoke-interface {v2, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Source;->getItemId(I)J

    move-result-wide v0

    .line 1474
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    sget-object v3, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState$Mode;

    if-ne v2, v3, :cond_2

    .line 1475
    if-eqz p2, :cond_1

    .line 1476
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1489
    :goto_0
    return-void

    .line 1478
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    .line 1481
    :cond_2
    if-eqz p2, :cond_3

    .line 1482
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1483
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1485
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1486
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0
.end method
