.class public Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;
.super Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;
.source "SearchImageResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;,
        Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;,
        Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;
    }
.end annotation


# instance fields
.field private mChoiceModeListener:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

.field private mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

.field private mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

.field private mFilterVisibleFilterThreshold:I

.field private mFilterVisibleImageThreshold:I

.field protected mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

.field private mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;-><init>()V

    .line 67
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mChoiceModeListener:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    .line 69
    iput v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterVisibleImageThreshold:I

    .line 70
    iput v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterVisibleFilterThreshold:I

    .line 71
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    .line 76
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    .line 556
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->onSend(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method private onSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 567
    const v8, 0x7fffffff

    .line 568
    .local v8, "initPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v23

    .line 569
    .local v23, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .local v22, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 571
    .local v19, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    .line 572
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v20

    .line 573
    .local v20, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemKey(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    move/from16 v0, v20

    if-ge v0, v8, :cond_0

    .line 577
    move/from16 v8, v20

    .line 571
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 582
    .end local v20    # "key":I
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 617
    :goto_1
    return-void

    .line 586
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v15, v3, [I

    .line 587
    .local v15, "selectedPos":[I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [J

    .line 588
    .local v14, "selectedId":[J
    const/16 v18, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 589
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v15, v18

    .line 590
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v14, v18

    .line 588
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 593
    :cond_3
    const v3, 0x7fffffff

    if-ne v8, v3, :cond_4

    .line 594
    const/4 v8, 0x0

    .line 596
    :cond_4
    new-instance v2, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 597
    invoke-virtual {v3, v8}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemKey(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 598
    invoke-virtual {v5, v8}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v5

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getMicroThumbnailSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 600
    invoke-virtual {v7}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getItemDecodeRectF()Landroid/graphics/RectF;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    .line 601
    invoke-virtual {v9, v8}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v10, v8}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getFileLength(I)J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 604
    .local v2, "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getPhotoPageDataLoaderUri()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v9

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getSelection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getSelectionArguments()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getOrder()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v6, p0

    move-object v13, v2

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    .line 603
    invoke-static/range {v6 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[ILjava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->stopActionMode()V

    .line 610
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 611
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "queryText"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v3, "count"

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v3, "serverIds"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getCheckedServerIds(Landroid/util/SparseBooleanArray;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v3, "from_image_result"

    const-string v4, "client_image_operation_share"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method private restartSectionLoader(Z)V
    .locals 3
    .param p1, "forceRequery"    # Z

    .prologue
    const/4 v2, 0x1

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 320
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 321
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "force_requery"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->restartSectionLoader(Landroid/os/Bundle;)V

    .line 324
    return-void
.end method

.method private showFilterBar()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    if-eqz v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;->getCount()I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterVisibleImageThreshold:I

    if-lt v4, v5, :cond_1

    move v1, v2

    .line 209
    .local v1, "imageResultFulfill":Z
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-virtual {v4}, Lcom/miui/gallery/search/resultpage/FilterBarController;->getFilterDataCount()I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterVisibleFilterThreshold:I

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 210
    .local v0, "filterDataFulfill":Z
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/miui/gallery/search/resultpage/FilterBarController;->showFilterBar(Z)V

    .line 212
    .end local v0    # "filterDataFulfill":Z
    .end local v1    # "imageResultFulfill":Z
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 208
    goto :goto_0

    .restart local v1    # "imageResultFulfill":Z
    :cond_2
    move v0, v3

    .line 209
    goto :goto_1

    .restart local v0    # "filterDataFulfill":Z
    :cond_3
    move v2, v3

    .line 210
    goto :goto_2
.end method


# virtual methods
.method protected changeFilterData(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    if-nez v0, :cond_0

    .line 192
    new-instance v1, Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/TwoStageDrawer;

    const-string v3, "from_image_result"

    invoke-direct {v1, v2, v0, v3}, Lcom/miui/gallery/search/resultpage/FilterBarController;-><init>(Landroid/app/Activity;Lcom/miui/gallery/widget/TwoStageDrawer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterBarController:Lcom/miui/gallery/search/resultpage/FilterBarController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/search/resultpage/FilterBarController;->swapCursor(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 195
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->showFilterBar()V

    .line 196
    return-void
.end method

.method protected changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->showFilterBar()V

    .line 177
    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->getRankInfo(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/suggestion/RankInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isHorizontalDocumentStyle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->disableScaleImageViewAniWhenInActionMode()V

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mChoiceModeListener:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;->inChoiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;->showLikelyBar()V

    .line 187
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->enableScaleImageViewAniWhenInActionMode()V

    goto :goto_0
.end method

.method protected createSearchResultHelper(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)Lcom/miui/gallery/search/resultpage/SearchResultHelper;
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;)",
            "Lcom/miui/gallery/search/resultpage/SearchResultHelper;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "sections":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;ZLcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)V

    return-object v0
.end method

.method protected getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const-string v0, "from_image_result"

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f040112

    return v0
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Loader;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 303
    .local v0, "loader":Landroid/content/Loader;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_2
    return-object v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-string v0, "search_image_result"

    return-object v0
.end method

.method protected getResultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 328
    if-ne p1, v1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;->hideLikelyBar()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    .line 333
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->restartSectionLoader(Z)V

    .line 335
    :cond_1
    return-void
.end method

.method protected onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "intentUri"    # Landroid/net/Uri;

    .prologue
    .line 90
    new-instance v0, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "imageResultAdapter":Lcom/miui/gallery/search/resultpage/ImageResultAdapter;
    const v1, 0x7f120081

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->bind(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;)V

    .line 92
    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/resultpage/ImageResultAdapter;->setHeaderClickListener(Lcom/miui/gallery/search/resultpage/ImageResultAdapter$OnHeaderItemClickedListener;)V

    .line 102
    new-instance v1, Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mAdapter:Lcom/miui/gallery/search/resultpage/ImageResultSimpleAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setChoiceMode(I)V

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mChoiceModeListener:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$ChoiceModeListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;)V

    .line 106
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    new-instance v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$2;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterVisibleImageThreshold:I

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterVisibleFilterThreshold:I

    .line 120
    iget-boolean v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mInFeedbackTaskMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mQueryText:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->needToQueryLikelyImagesForFeedbackTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v2, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    const v1, 0x7f120250

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;Landroid/view/ViewStub;)V

    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFeedbackLikelyController:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$SearchFeedbackLikelyController;

    .line 124
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 548
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->onPause()V

    .line 550
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    .line 554
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 538
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->onResume()V

    .line 540
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    .line 542
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/search/resultpage/SearchImageResultFragment$VoiceAssistantReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 544
    :cond_0
    return-void
.end method

.method protected receiveResultUpdates()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method protected restartFilterLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mInFeedbackTaskMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mFilterLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 170
    :cond_0
    return-void
.end method

.method protected restartSectionDataLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mSectionDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 162
    :cond_0
    return-void
.end method

.method protected restartSectionLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mSectionsLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 155
    :cond_0
    return-void
.end method

.method protected updateTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->mInFeedbackTaskMode:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const v0, 0x7f0e0411

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultFragmentBase;->updateTitle(Ljava/lang/String;)V

    .line 132
    return-void
.end method
