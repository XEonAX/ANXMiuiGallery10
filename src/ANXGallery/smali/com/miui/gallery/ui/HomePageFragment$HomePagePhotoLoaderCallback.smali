.class Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePagePhotoLoaderCallback"
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;Lcom/miui/gallery/ui/HomePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/HomePageFragment$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    return-void
.end method

.method private isTopBarPermanent()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/HomePageAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAfterLoadFinished()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/HomePageAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$300(Lcom/miui/gallery/ui/HomePageFragment;)V

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->isTopBarPermanent()Z

    move-result v0

    .line 325
    .local v0, "permanent":Z
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->setPermanent(Z)V

    .line 326
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$500(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setDragEnabled(Z)V

    .line 328
    .end local v0    # "permanent":Z
    :cond_1
    return-void

    .line 326
    .restart local v0    # "permanent":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 299
    if-ne p1, v3, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->startTime:J

    .line 302
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "loader":Landroid/content/CursorLoader;
    sget-object v1, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_LOADER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 304
    sget-object v1, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_LOADER_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 305
    const-string v1, "alias_show_in_homepage=1 AND sha1 NOT NULL"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 306
    const-string v1, "alias_sort_time DESC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 311
    .end local v0    # "loader":Landroid/content/CursorLoader;
    :goto_0
    return-object v0

    .line 308
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 309
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->createLoader(Landroid/content/Context;I)Lcom/miui/gallery/loader/DiscoveryMessageLoader;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 8
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 333
    .local v1, "loaderId":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 334
    const-string v2, "HomePageFragment"

    const-string v3, "onLoadFinished %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->startTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p2

    .line 335
    check-cast v0, Landroid/database/Cursor;

    .line 336
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/HomePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 337
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->updateAfterLoadFinished()V

    .line 343
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p2    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v2

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Lcom/miui/gallery/ui/HomePageTopBarController;->setDiscoveryMessage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomePageTopBarController;->setDiscoveryMessage(Ljava/util/ArrayList;)V

    .line 352
    :cond_0
    return-void
.end method
