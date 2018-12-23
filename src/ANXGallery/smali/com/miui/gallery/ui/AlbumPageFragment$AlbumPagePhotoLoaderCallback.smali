.class Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "AlbumPageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumPagePhotoLoaderCallback"
.end annotation


# instance fields
.field mFootView:Landroid/view/View;

.field private mHaveOtherAlbum:Z

.field mOtherAlbumCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumPageFragment$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    return-void
.end method

.method private cursorFilter(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    iput-boolean v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mHaveOtherAlbum:Z

    .line 346
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->classifyCursor(Landroid/database/Cursor;)[Landroid/database/MatrixCursor;

    move-result-object v1

    .line 347
    .local v1, "classifiedCursor":[Landroid/database/MatrixCursor;
    aget-object v0, v1, v4

    .line 348
    .local v0, "albumPageCursor":Landroid/database/MatrixCursor;
    aget-object v2, v1, v5

    .line 349
    .local v2, "otherAlbumPageCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 351
    iput-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mHaveOtherAlbum:Z

    .line 353
    :cond_0
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumCursor:Landroid/database/Cursor;

    .line 355
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 356
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 358
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected addOtherAlbumDisplayUI()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 365
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFootView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->removeFooterView()V

    .line 368
    :cond_0
    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFootView:Landroid/view/View;

    .line 369
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1400(Lcom/miui/gallery/ui/AlbumPageFragment;)I

    move-result v1

    .line 370
    .local v1, "recyclerPaddingBottom":I
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mHaveOtherAlbum:Z

    if-eqz v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001e

    .line 372
    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 373
    .local v2, "view":Landroid/view/View;
    const-string v3, "other_album_item"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 374
    const v3, 0x7f1200ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;

    .line 375
    .local v0, "otherAlbumsItem":Lcom/miui/gallery/ui/AlbumPageListLocalItem;
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumCursor:Landroid/database/Cursor;

    iget-object v5, v0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    const v6, 0x7f0b00a1

    .line 376
    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getFormedNameNotExceedMaxWidth(Landroid/database/Cursor;Landroid/widget/TextView;I)Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->bindAlbumNameDesc(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 381
    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mMoreAlbumHint:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->setFooterView(Landroid/view/View;)V

    .line 384
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFootView:Landroid/view/View;

    .line 396
    .end local v0    # "otherAlbumsItem":Lcom/miui/gallery/ui/AlbumPageListLocalItem;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 397
    invoke-virtual {v6}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getPaddingRight()I

    move-result v6

    .line 396
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setPadding(IIII)V

    .line 398
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mOtherAlbumCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 399
    return-void

    .line 385
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    .line 386
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-gtz v3, :cond_2

    .line 387
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040017

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 389
    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;

    .line 390
    .local v2, "view":Lcom/miui/gallery/ui/AlbumPageListEmptyItem;
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$700(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->setTextContainer(Landroid/view/ViewGroup;)V

    .line 391
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->setFooterView(Landroid/view/View;)V

    .line 392
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mFootView:Landroid/view/View;

    .line 393
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 293
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, "loader":Landroid/content/CursorLoader;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$600(Lcom/miui/gallery/ui/AlbumPageFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 296
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "sortBy ASC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 298
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 299
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 300
    sget-object v1, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 301
    const-string v1, "count > 0"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 303
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 5
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 315
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->cursorFilter(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 317
    .local v0, "albumCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$700(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->inflateEmptyView()V

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 321
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$200(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->mHaveOtherAlbum:Z

    if-eqz v4, :cond_6

    :cond_3
    :goto_0
    invoke-virtual {v3, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setDragEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$800(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    .line 323
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->addOtherAlbumDisplayUI()V

    .line 324
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$900(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$902(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z

    .line 326
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1000(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    .line 334
    .end local v0    # "albumCursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1100(Lcom/miui/gallery/ui/AlbumPageFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 335
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1102(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z

    .line 336
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$700(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1200(Lcom/miui/gallery/ui/AlbumPageFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->smoothScrollToPosition(I)V

    .line 338
    :cond_5
    return-void

    .restart local v0    # "albumCursor":Landroid/database/Cursor;
    :cond_6
    move v1, v2

    .line 321
    goto :goto_0

    .line 328
    .end local v0    # "albumCursor":Landroid/database/Cursor;
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 329
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_1

    .line 330
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 331
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->setPeopleFaceCover(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 342
    return-void
.end method
