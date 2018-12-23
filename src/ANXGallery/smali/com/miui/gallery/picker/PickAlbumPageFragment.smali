.class public Lcom/miui/gallery/picker/PickAlbumPageFragment;
.super Lcom/miui/gallery/picker/PickerFragment;
.source "PickAlbumPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

.field private mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

.field private mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

.field private mLoadInited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerFragment;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/picker/PickerAlbumPageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    return-object v0
.end method

.method private startToLoadAlbums()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v0, "PickAlbumPageFragment"

    const-string/jumbo v1, "startToLoadAlbums"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 217
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 218
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v0, v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "picker_album"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/picker/PickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    if-nez p2, :cond_1

    .line 227
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->cancel()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v4, "internal_key_updated_selection"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 233
    .local v0, "fromAlbum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 237
    const-string v4, "PickAlbumPageFragment"

    const-string v5, "Pick result of pre album: %s "

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    .local v3, "sha1":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_3
    const-string v4, "PickAlbumPageFragment"

    const-string v5, "Deleted items in pre album : %s "

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v1}, Lcom/miui/gallery/picker/helper/Picker;->remove(Ljava/lang/String;)Z

    goto :goto_2

    .line 252
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .restart local v3    # "sha1":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v3}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 254
    iget-object v5, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v5, v3}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    goto :goto_3

    .line 258
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_6
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    .line 52
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 57
    const v3, 0x7f0400ee

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f120092

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .line 59
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance v3, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    .line 61
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->setInPickMode(Z)V

    .line 62
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f020256

    const v5, 0x7f0201af

    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;-><init>(Landroid/content/Context;IILcom/miui/gallery/widget/DividerTypeProvider;)V

    .line 64
    .local v0, "decoration":Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 65
    .local v1, "itemDividerPaddingStart":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->setItemDividerPadding(Landroid/graphics/Rect;)V

    .line 66
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 67
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getRecycler()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    new-instance v4, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment$1;-><init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 103
    new-instance v3, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;Lcom/miui/gallery/picker/PickAlbumPageFragment$1;)V

    iput-object v3, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;

    .line 104
    return-object v2
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerFragment;->onStart()V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->updateGalleryCloudSyncableState()V

    .line 111
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->setUserVisibleHint(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->startToLoadAlbums()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mLoadInited:Z

    .line 212
    :cond_0
    return-void
.end method
