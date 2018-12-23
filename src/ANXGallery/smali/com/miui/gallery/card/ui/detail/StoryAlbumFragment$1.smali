.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 186
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->decryptPosition(I)I

    move-result p3

    .line 187
    if-gez p3, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    .line 190
    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    const/4 v3, 0x1

    .line 193
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 195
    .local v10, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/miui/gallery/model/ImageLoadParams;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 196
    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemKey(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 197
    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 199
    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemDecodeRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 200
    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getFileLength(I)J

    move-result-wide v8

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 202
    .local v0, "item":Lcom/miui/gallery/model/ImageLoadParams;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 203
    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemCount()I

    move-result v5

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v10

    move v4, p3

    move-object v9, v0

    .line 202
    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;)V

    .line 205
    const/4 v1, 0x1

    goto :goto_0
.end method
