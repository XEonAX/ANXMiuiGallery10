.class abstract Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
.super Ljava/lang/Object;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseViewHolder"
.end annotation


# static fields
.field protected static sAlbumCovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultCoverDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field protected mAlbumName:Landroid/widget/TextView;

.field protected mCoverContainer:Landroid/view/View;

.field protected mDefaultAlbumCover:Landroid/widget/ImageView;

.field protected mItemView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sAlbumCovers:Ljava/util/List;

    .line 220
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f120096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f120098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f120099

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 225
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 227
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sDefaultCoverDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mItemView:Landroid/view/View;

    .line 241
    const v0, 0x7f12009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mAlbumName:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f12009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mCoverContainer:Landroid/view/View;

    .line 243
    const v0, 0x7f120094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mDefaultAlbumCover:Landroid/widget/ImageView;

    .line 244
    return-void
.end method

.method private bindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .param p3, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 268
    iget-boolean v0, p2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mIsCoverDataValid:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->doBindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 271
    :cond_0
    return-void
.end method

.method protected static buildDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p0, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .param p1, "coverSize"    # J

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getDownloadUri(JI)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J
    .param p2, "syncState"    # I

    .prologue
    .line 302
    if-nez p2, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseCoverRect(Ljava/lang/String;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 11
    .param p0, "faceRect"    # Ljava/lang/String;

    .prologue
    .line 286
    const/4 v10, 0x0

    .line 288
    .local v10, "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    :try_start_0
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "rectInfo":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 290
    .local v1, "faceX":F
    const/4 v3, 0x1

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 291
    .local v2, "faceY":F
    const/4 v3, 0x2

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 292
    .local v8, "faceW":F
    const/4 v3, 0x3

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 293
    .local v7, "faceH":F
    const/4 v3, 0x4

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 294
    .local v5, "orientation":I
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    add-float v3, v1, v8

    add-float v4, v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1    # "faceX":F
    .end local v2    # "faceY":F
    .end local v5    # "orientation":I
    .end local v7    # "faceH":F
    .end local v8    # "faceW":F
    .end local v9    # "rectInfo":[Ljava/lang/String;
    .end local v10    # "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    .local v0, "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    :goto_0
    return-object v0

    .line 295
    .end local v0    # "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    .restart local v10    # "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    :catch_0
    move-exception v6

    .line 296
    .local v6, "e":Ljava/lang/Exception;
    const-string v3, "AlbumPageHeaderAdapter"

    const-string/jumbo v4, "wrong face rect format: %s"

    invoke-static {v3, v4, p0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v10

    .end local v10    # "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    .restart local v0    # "ret":Lcom/miui/gallery/util/face/FaceRegionRectF;
    goto :goto_0
.end method


# virtual methods
.method public bindClickListener(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mItemView:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder$1;-><init>(Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method protected bindDefaultCover(I)V
    .locals 6
    .param p1, "defaultCoverRes"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mDefaultAlbumCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mCoverContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 279
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mDefaultAlbumCover:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sDefaultCoverDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 281
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/gallery/Config$ThumbConfig;->sAlbumHeaderThumbTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v5, 0x0

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 283
    return-void
.end method

.method public bindView(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .param p3, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mAlbumName:Landroid/widget/TextView;

    iget v1, p2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mAlbumNameRes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->bindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 253
    return-void
.end method

.method protected abstract doBindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
.end method

.method protected getAlbumCoverByIdx(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->mItemView:Landroid/view/View;

    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
