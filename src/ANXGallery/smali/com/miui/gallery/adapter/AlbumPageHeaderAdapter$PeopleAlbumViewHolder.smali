.class Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;
.super Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeopleAlbumViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 315
    return-void
.end method

.method private bindFaceCover(Ljava/lang/String;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "regionDecodeRect"    # Landroid/graphics/RectF;

    .prologue
    .line 344
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v4, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/BindImageHelper;->bindFaceImage(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Z)V

    .line 345
    return-void
.end method


# virtual methods
.method protected doBindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .param p3, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 319
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;

    iget-object v7, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;->mAlbumCovers:Ljava/util/ArrayList;

    .line 320
    .local v7, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->mDefaultAlbumCover:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->mCoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    const/4 v8, 0x0

    .line 324
    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 325
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/model/BaseAlbumCover;

    .line 326
    .local v6, "cover":Lcom/miui/gallery/model/BaseAlbumCover;
    iget-wide v0, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverSize:J

    invoke-static {p3, v0, v1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->buildDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .local v4, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    move-object v0, v6

    .line 327
    check-cast v0, Lcom/miui/gallery/model/FaceAlbumCover;

    iget-object v0, v0, Lcom/miui/gallery/model/FaceAlbumCover;->faceRect:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->parseCoverRect(Ljava/lang/String;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v5

    .line 328
    .local v5, "rect":Landroid/graphics/RectF;
    iget-object v1, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverPath:Ljava/lang/String;

    .line 329
    invoke-virtual {p0, v8}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->getAlbumCoverByIdx(I)Landroid/widget/ImageView;

    move-result-object v2

    iget-wide v10, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverId:J

    iget v0, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverSyncState:I

    .line 330
    invoke-static {v10, v11, v0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->getDownloadUri(JI)Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    .line 328
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->bindFaceCover(Ljava/lang/String;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V

    .line 324
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 333
    .end local v4    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v5    # "rect":Landroid/graphics/RectF;
    .end local v6    # "cover":Lcom/miui/gallery/model/BaseAlbumCover;
    :cond_0
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 334
    move v9, v8

    .local v9, "j":I
    :goto_1
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 335
    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->getAlbumCoverByIdx(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 339
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_1
    iget v0, p2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mDefaultCoverRes:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;->bindDefaultCover(I)V

    .line 341
    :cond_2
    return-void
.end method
