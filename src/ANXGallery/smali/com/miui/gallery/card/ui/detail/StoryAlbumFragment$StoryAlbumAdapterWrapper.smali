.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;
.super Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoryAlbumAdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper",
        "<",
        "Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">;",
        "Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 978
    return-void
.end method


# virtual methods
.method protected decryptPosition(I)I
    .locals 1
    .param p1, "wrappedPosition"    # I

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 989
    :cond_0
    return p1
.end method

.method protected encryptPosition(I)I
    .locals 1
    .param p1, "wrappedPosition"    # I

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 994
    :cond_0
    return p1
.end method

.method public getSourceEncryptPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1013
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->encryptPosition(I)I

    move-result v0

    return v0
.end method

.method public getSourceItemCount()I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getSourceItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->decryptPosition(I)I

    .line 1005
    if-gez p1, :cond_0

    .line 1006
    const-wide/16 v0, -0x1

    .line 1008
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/adapter/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/adapter/BaseViewHolder;
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 982
    new-instance v0, Lcom/miui/gallery/adapter/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 983
    .local v0, "holder":Lcom/miui/gallery/adapter/BaseViewHolder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/BaseViewHolder;->setIsRecyclable(Z)V

    .line 984
    return-object v0
.end method
