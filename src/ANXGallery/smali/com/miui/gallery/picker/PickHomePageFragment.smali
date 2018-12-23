.class public Lcom/miui/gallery/picker/PickHomePageFragment;
.super Lcom/miui/gallery/picker/PickerFragment;
.source "PickHomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

.field private mHomeGridView:Landroid/widget/GridView;

.field private mHomePageAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

.field private mHomePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerFragment;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickHomePageFragment;)Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickHomePageFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    return-object v0
.end method

.method private refreshPickState()V
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 94
    .local v0, "firstVisibleItem":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lcom/miui/gallery/ui/Checkable;

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-static {v4}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "sha1":Ljava/lang/String;
    check-cast v3, Lcom/miui/gallery/ui/Checkable;

    .end local v3    # "v":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4, v2}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 94
    .end local v2    # "sha1":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "picker_home"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    .line 69
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    .line 73
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_processing_items"

    .line 77
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    new-instance v0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickHomePageFragment;Lcom/miui/gallery/picker/PickHomePageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;

    .line 150
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickHomePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 151
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 157
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 163
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    new-instance v2, Lcom/miui/gallery/adapter/HomePageAdapter;

    iget-object v3, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;->SCENE_NONE:Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/adapter/HomePageAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/BaseMediaSyncStateAdapter$SyncStateShowScene;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;-><init>(Lcom/miui/gallery/picker/helper/Picker;Landroid/widget/CursorAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    .line 54
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v1, 0x7f0400f1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickHomePageFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/EmptyPage;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    .line 45
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 46
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EmptyPage;->setVisibility(I)V

    .line 47
    return-object v0
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->setUserVisibleHint(Z)V

    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickHomePageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickHomePageFragment;->refreshPickState()V

    .line 62
    :cond_0
    return-void
.end method
