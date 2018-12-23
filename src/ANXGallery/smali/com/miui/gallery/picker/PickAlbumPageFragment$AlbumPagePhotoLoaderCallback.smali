.class Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "PickAlbumPageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickAlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumPagePhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;Lcom/miui/gallery/picker/PickAlbumPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickAlbumPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickAlbumPageFragment$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickAlbumPageFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 138
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/picker/PickAlbumPageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "loader":Landroid/content/CursorLoader;
    if-ne p1, v5, :cond_3

    .line 141
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v2, v3, :cond_1

    .line 142
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_video"

    const-string/jumbo v4, "true"

    .line 143
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_share"

    const-string/jumbo v4, "true"

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_recent"

    const-string/jumbo v4, "true"

    .line 145
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_favorites"

    const-string/jumbo v4, "true"

    .line 146
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "remove_duplicate_items"

    const-string/jumbo v4, "true"

    .line 147
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "media_type"

    .line 149
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 167
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 168
    const-string v2, "classification ASC, sortBy ASC "

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 169
    const-string v2, "media_count>0"

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 177
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v2, v3, :cond_2

    .line 152
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_face"

    const-string/jumbo v4, "true"

    .line 153
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_share"

    const-string/jumbo v4, "true"

    .line 154
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_recent"

    const-string/jumbo v4, "true"

    .line 155
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "join_favorites"

    const-string/jumbo v4, "true"

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "remove_duplicate_items"

    const-string/jumbo v4, "true"

    .line 157
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "media_type"

    .line 159
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 162
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "remove_duplicate_items"

    const-string/jumbo v4, "true"

    .line 163
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 170
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    if-ne p1, v6, :cond_4

    .line 171
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 172
    sget-object v2, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 173
    const-string v2, "count > 0"

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 175
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_FACE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 187
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    move-result-object v1

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->sortCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$200(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->inflateEmptyView()V

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 198
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 193
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 194
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    move-result-object v1

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->setSharedAlbums(Landroid/database/Cursor;)V

    goto :goto_0

    .line 195
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumPageFragment$AlbumPagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickAlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickAlbumPageFragment;->access$000(Lcom/miui/gallery/picker/PickAlbumPageFragment;)Lcom/miui/gallery/picker/PickerAlbumPageAdapter;

    move-result-object v1

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->setPeopleFaceCover(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 202
    return-void
.end method
