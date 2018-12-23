.class public Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;
.super Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;
.source "AlbumRecyclerAdapterBase.java"

# interfaces
.implements Lcom/miui/gallery/widget/DividerTypeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumFaceItemViewHolder;,
        Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter",
        "<",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">;",
        "Lcom/miui/gallery/widget/DividerTypeProvider;"
    }
.end annotation


# static fields
.field private static sIsGalleryCloudSyncable:Z


# instance fields
.field private mDisplayFaceOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mDisplayVideoOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mIsInPickMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->sIsGalleryCloudSyncable:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getBottomDividerType(I)I
    .locals 2
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v0, 0x3

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 87
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDisplayVideoOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getFileLength(I)J

    move-result-wide v0

    .line 55
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 61
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayVideoOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getItemId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isFaceAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x2

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTopDividerType(I)I
    .locals 1
    .param p1, "adapterPosition"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected initDisplayImageOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-super {p0}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->initDisplayImageOptions()V

    .line 41
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 42
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200e9

    .line 43
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayVideoOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayVideoOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 46
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 47
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayFaceOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 51
    return-void
.end method

.method public isAutoUploadedAlbum(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    sget-boolean v0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->sIsGalleryCloudSyncable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isAutoUploadedAlbum(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoUploadedAlbum(JLjava/lang/String;J)Z
    .locals 1
    .param p1, "attributes"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "albumId"    # J

    .prologue
    .line 99
    sget-boolean v0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->sIsGalleryCloudSyncable:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/adapter/BaseAlbumListRecyclerAdapter;->isAutoUploadedAlbum(JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/miui/gallery/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->onBindViewHolder(Lcom/miui/gallery/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/adapter/BaseViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lcom/miui/gallery/adapter/BaseViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/miui/gallery/adapter/BaseViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p1, Lcom/miui/gallery/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;

    .line 129
    .local v0, "item":Lcom/miui/gallery/ui/AlbumPageListNormalItem;
    if-eqz p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    .line 130
    invoke-virtual {p0, v1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getBottomDividerType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    :cond_1
    const/4 v10, 0x1

    .line 131
    .local v10, "isSectionStartItem":Z
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    .line 132
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getBottomDividerType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_2
    const/4 v9, 0x1

    .line 133
    .local v9, "isSectionEndItem":Z
    :goto_2
    invoke-virtual {v0, v10, v9}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->adjustAlbumCoverContainerPadding(ZZ)V

    .line 134
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getAlbumCount(Landroid/database/Cursor;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindCommonInfo(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getLocalPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 137
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isVideoAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getDisplayVideoOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 135
    :goto_3
    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 141
    invoke-static {v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 143
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getShareAlbumInfo(I)Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    move-result-object v6

    .line 144
    .local v6, "album":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 145
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SHARE:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0038

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    .line 170
    .end local v6    # "album":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_3
    :goto_4
    invoke-static {v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isRecentAlbum(Landroid/database/Cursor;)Z

    move-result v1

    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isVideoAlbum(Landroid/database/Cursor;)Z

    move-result v2

    .line 171
    invoke-static {v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isFavoritesAlbum(Landroid/database/Cursor;)Z

    move-result v3

    invoke-static {v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isAutoUploadedAlbum(Landroid/database/Cursor;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mIsInPickMode:Z

    .line 170
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindIndicator(ZZZZZ)V

    .line 172
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->shouldShowForceTop(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindForceTopIcon(Z)V

    .line 173
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isHiddenAlbum(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindHiddenMask(Z)V

    goto/16 :goto_0

    .line 130
    .end local v9    # "isSectionEndItem":Z
    .end local v10    # "isSectionStartItem":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 132
    .restart local v10    # "isSectionStartItem":Z
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 139
    .restart local v9    # "isSectionEndItem":Z
    :cond_6
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    goto :goto_3

    .line 148
    .restart local v6    # "album":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_7
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SHARE:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0039

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 149
    invoke-virtual {v6}, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto :goto_4

    .line 152
    :cond_8
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SHARE:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto :goto_4

    .line 156
    .end local v6    # "album":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_9
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isBabyAlbum(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 157
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->BABY:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0e004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto :goto_4

    .line 158
    :cond_a
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isOwnerShareAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 159
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getShareAlbumInfo(I)Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;

    move-result-object v6

    .line 160
    .restart local v6    # "album":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    if-eqz v6, :cond_3

    .line 161
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->OWNER:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0007

    iget v4, v6, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mUserCount:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v6, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mUserCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 164
    .end local v6    # "album":Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    :cond_b
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isSystemAlbum(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 165
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SYSTEM:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 167
    :cond_c
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->NORMAL:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 172
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 176
    .end local v0    # "item":Lcom/miui/gallery/ui/AlbumPageListNormalItem;
    .end local v9    # "isSectionEndItem":Z
    .end local v10    # "isSectionStartItem":Z
    :pswitch_1
    iget-object v8, p1, Lcom/miui/gallery/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v8, Lcom/miui/gallery/ui/AlbumPageListFaceItem;

    .line 177
    .local v8, "faceItem":Lcom/miui/gallery/ui/AlbumPageListFaceItem;
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getAlbumCount(Landroid/database/Cursor;)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindCommonInfo(Ljava/lang/String;I)V

    .line 178
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->getPeopleFaceCover()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mDisplayFaceOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v8, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindImageAndAlbumCount(Landroid/os/Bundle;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 179
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SYSTEM:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->shouldShowForceTop(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v7}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v8, v1}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindForceTopIcon(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/adapter/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/adapter/BaseViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "viewHolder":Lcom/miui/gallery/adapter/BaseViewHolder;
    packed-switch p2, :pswitch_data_0

    .line 117
    :goto_0
    return-object v0

    .line 111
    :pswitch_0
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;->newInstance(Landroid/view/ViewGroup;)Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;

    move-result-object v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumFaceItemViewHolder;->newInstance(Landroid/view/ViewGroup;)Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumFaceItemViewHolder;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInPickMode(Z)V
    .locals 0
    .param p1, "isIn"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mIsInPickMode:Z

    .line 75
    return-void
.end method

.method protected shouldShowForceTop(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mIsInPickMode:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->isOtherAlbum(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGalleryCloudSyncableState()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    .line 67
    .local v0, "syncable":Z
    sget-boolean v1, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->sIsGalleryCloudSyncable:Z

    if-eq v1, v0, :cond_0

    .line 68
    sput-boolean v0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->sIsGalleryCloudSyncable:Z

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;->notifyDataSetChanged()V

    .line 71
    :cond_0
    return-void
.end method
