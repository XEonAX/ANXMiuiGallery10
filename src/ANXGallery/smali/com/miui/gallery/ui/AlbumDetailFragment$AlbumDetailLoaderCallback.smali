.class Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDetailLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragment;Lcom/miui/gallery/ui/AlbumDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumDetailFragment$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 184
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    sget-object v2, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$100(Lcom/miui/gallery/ui/AlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 186
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    .line 192
    .local v0, "adapter":Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->generatePreloadListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$400(Lcom/miui/gallery/ui/AlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$200(Lcom/miui/gallery/ui/AlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader$SortBy;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$300(Lcom/miui/gallery/ui/AlbumDetailFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/SortByHeader;->updateCurrentSortView(Lcom/miui/gallery/widget/SortByHeader$SortBy;I)V

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$500(Lcom/miui/gallery/ui/AlbumDetailFragment;)V

    .line 197
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragment;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumDetailFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 206
    return-void
.end method
