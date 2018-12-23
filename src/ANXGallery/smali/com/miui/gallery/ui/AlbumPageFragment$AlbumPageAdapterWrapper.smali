.class Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;
.super Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.source "AlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/DividerTypeProvider;
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumPageAdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper",
        "<",
        "Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">;",
        "Lcom/miui/gallery/widget/DividerTypeProvider;",
        "Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mHostFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "wrapped"    # Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    .prologue
    .line 545
    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 546
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mHostFragment:Landroid/app/Fragment;

    .line 547
    return-void
.end method

.method private recordViewAlbum(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 593
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumLocalPath(I)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "localPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isSystemAlbum(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 596
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "album_name"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v3, "album_server_id"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getServerId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v3, "album_image_count"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v2, "album"

    const-string/jumbo v3, "view_system_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 625
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 605
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 606
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "album_path"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v3, "album_attribute"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAttributes(I)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v3, "album_image_count"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v3, "baby_album"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isBabyAlbum(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v2, "album"

    const-string/jumbo v3, "view_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 615
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isOtherShareAlbum(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 617
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "album_image_count"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v3, "baby_album"

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v2, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isBabyAlbum(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v2, "album"

    const-string/jumbo v3, "view_share_album"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomDividerType(I)I
    .locals 2
    .param p1, "adapterPosition"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 567
    const/4 v0, 0x3

    .line 572
    .end local p1    # "adapterPosition":I
    :goto_0
    return v0

    .line 569
    .restart local p1    # "adapterPosition":I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 570
    const/4 v0, 0x0

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "adapterPosition":I
    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getBottomDividerType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getMostlyRecentCreatedAlbumPosition()I
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getMostlyRecentCreatedAlbumPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopDividerType(I)I
    .locals 2
    .param p1, "adapterPosition"    # I

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 559
    const/4 v0, 0x3

    .line 561
    .end local p1    # "adapterPosition":I
    :goto_0
    return v0

    .restart local p1    # "adapterPosition":I
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "adapterPosition":I
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getTopDividerType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/adapter/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateHeaderFooterViewHolder(Landroid/view/View;)Lcom/miui/gallery/adapter/BaseViewHolder;
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 551
    new-instance v0, Lcom/miui/gallery/adapter/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 552
    .local v0, "holder":Lcom/miui/gallery/adapter/BaseViewHolder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/BaseViewHolder;->setIsRecyclable(Z)V

    .line 553
    return-object v0
.end method

.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    .line 581
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 582
    .local v6, "tag":Ljava/lang/Object;
    if-eqz v6, :cond_1

    const-string v0, "other_album_item"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mHostFragment:Landroid/app/Fragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mHostFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/miui/gallery/activity/AlbumLocalPageActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 585
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 587
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, p3, -0x1

    .line 588
    .local v3, "realPosition":I
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->recordViewAlbum(I)V

    .line 589
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    .end local v3    # "realPosition":I
    :cond_3
    move v3, p3

    .line 587
    goto :goto_1
.end method
