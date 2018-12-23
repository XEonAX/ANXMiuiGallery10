.class Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoPageLoaderCallBack"
.end annotation


# instance fields
.field private isFirstLoad:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->isFirstLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 436
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 431
    const-string v1, "photo_uri"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 432
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/loader/PhotoLoaderManager;->getInstance()Lcom/miui/gallery/loader/PhotoLoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v2, v0, p2}, Lcom/miui/gallery/loader/PhotoLoaderManager;->getPhotoDataSet(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;

    move-result-object v1

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 14
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 441
    move-object/from16 v9, p2

    check-cast v9, Lcom/miui/gallery/model/BaseDataSet;

    .line 442
    .local v9, "set":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 443
    :cond_0
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isAdded()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isResumed()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 444
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string v11, "set is empty"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->finish()V

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v10}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 450
    .local v0, "current":I
    const/4 v6, 0x1

    .line 451
    .local v6, "notifySelected":Z
    iget-boolean v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->isFirstLoad:Z

    if-eqz v10, :cond_a

    .line 454
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v10}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getCount()I

    move-result v10

    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v11

    if-eq v10, v11, :cond_7

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x1

    .line 455
    .local v5, "notifyImmediate":Z
    :goto_1
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$700(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Lcom/miui/gallery/model/ImageLoadParams;

    move-result-object v7

    .line 456
    .local v7, "params":Lcom/miui/gallery/model/ImageLoadParams;
    if-eqz v7, :cond_8

    .line 457
    new-instance v10, Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {v10}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    invoke-virtual {v7}, Lcom/miui/gallery/model/ImageLoadParams;->getKey()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v10

    invoke-virtual {v7}, Lcom/miui/gallery/model/ImageLoadParams;->getPos()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I

    move-result v8

    .line 458
    .local v8, "pos":I
    if-ltz v8, :cond_3

    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v10

    if-ge v8, v10, :cond_3

    invoke-virtual {v7}, Lcom/miui/gallery/model/ImageLoadParams;->getPos()I

    move-result v10

    if-eq v8, v10, :cond_3

    .line 460
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getTAG()Ljava/lang/String;

    move-result-object v10

    const-string v11, "data has changed after load finish %d, %d"

    invoke-virtual {v7}, Lcom/miui/gallery/model/ImageLoadParams;->getPos()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    invoke-virtual {v7, v8}, Lcom/miui/gallery/model/ImageLoadParams;->updatePosition(I)V

    .line 462
    move v0, v8

    .line 464
    or-int/lit8 v5, v5, 0x1

    .line 469
    .end local v8    # "pos":I
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v10, v9, v5}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->changeDataSet(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 470
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v10}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v10

    if-eq v0, v10, :cond_9

    .line 471
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 472
    const/4 v6, 0x0

    .line 498
    .end local v5    # "notifyImmediate":Z
    .end local v7    # "params":Lcom/miui/gallery/model/ImageLoadParams;
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$800(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 499
    if-eqz v6, :cond_5

    .line 501
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v11, v11, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v11}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageChanged(I)V

    .line 502
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v11, v11, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v11}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageSettled(I)V

    .line 504
    :cond_5
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-boolean v11, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->isFirstLoad:Z

    invoke-virtual {v10, v9, v11}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 506
    :cond_6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->isFirstLoad:Z

    goto/16 :goto_0

    .line 454
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 466
    .restart local v5    # "notifyImmediate":Z
    .restart local v7    # "params":Lcom/miui/gallery/model/ImageLoadParams;
    :cond_8
    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataSet;->getInitPosition()I

    move-result v10

    if-eq v0, v10, :cond_3

    .line 467
    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataSet;->getInitPosition()I

    move-result v0

    goto :goto_2

    .line 474
    :cond_9
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v10}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->isPreviewing()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 475
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$802(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z

    goto :goto_3

    .line 480
    .end local v5    # "notifyImmediate":Z
    .end local v7    # "params":Lcom/miui/gallery/model/ImageLoadParams;
    :cond_a
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->changeDataSet(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 481
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v10}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    .line 482
    .local v4, "focusedPos":I
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "photo_focused_path"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "focusedPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 484
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "photo_focused_path"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 485
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v10}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Ljava/lang/String;I)I

    move-result v4

    .line 493
    :cond_b
    :goto_4
    if-ltz v4, :cond_4

    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_4

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v10}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v10

    if-eq v4, v10, :cond_4

    .line 494
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 495
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 487
    :cond_c
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "photo_focused_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 488
    .local v2, "focusedId":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_b

    .line 489
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "photo_focused_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 490
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageLoaderCallBack;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v10, v10, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v10}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v10

    invoke-virtual {v9, v2, v3, v10}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(JI)I

    move-result v4

    goto :goto_4
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 512
    return-void
.end method
