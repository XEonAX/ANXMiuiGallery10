.class Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "AlbumLocalPageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumLocalPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumPagePhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;Lcom/miui/gallery/ui/AlbumLocalPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumLocalPageFragment$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)V

    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "classification = 1"

    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "loader":Landroid/content/CursorLoader;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 103
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    .line 104
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "join_video"

    const-string v3, "false"

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "join_face"

    const-string v3, "false"

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "join_share"

    const-string v3, "false"

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "exclude_empty_album"

    const-string/jumbo v3, "true"

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "sortBy ASC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 118
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 119
    sget-object v1, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 120
    const-string v1, "count > 0"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->classifyOtherAlbumsCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 130
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->access$100(Lcom/miui/gallery/ui/AlbumLocalPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->inflateEmptyView()V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 137
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 134
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumLocalPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumLocalPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumLocalPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 142
    return-void
.end method
