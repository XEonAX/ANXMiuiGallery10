.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;
.super Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;
.source "StoryAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter",
        "<",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_micro_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 76
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 81
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 82
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0201a9

    .line 83
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 88
    return-void
.end method

.method private updateLayoutParams(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 1
    .param p1, "lp"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    .param p2, "size"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setHeight(I)V

    .line 102
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setWidth(I)V

    .line 104
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setFlexGrow(F)V

    .line 105
    return-void
.end method


# virtual methods
.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getOriginFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getThumbFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMicroThumbFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_1
    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 197
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemDecodeRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 160
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 182
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/miui/gallery/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->onBindViewHolder(Lcom/miui/gallery/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/adapter/BaseViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Lcom/miui/gallery/adapter/BaseViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 133
    iget-object v0, p1, Lcom/miui/gallery/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;

    .line 134
    .local v0, "recyclerViewItem":Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;
    const v1, 0x7f12001f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->setTag(ILjava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getLayoutSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v7

    .line 136
    .local v7, "size":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-virtual {v0, v7}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->bindImage(ILjava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 139
    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 140
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 141
    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v6, v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->updateLayoutParams(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 143
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/adapter/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/adapter/BaseViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 127
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumViewHolder;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040139

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/miui/gallery/adapter/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->onViewRecycled(Lcom/miui/gallery/adapter/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/miui/gallery/adapter/BaseViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/miui/gallery/adapter/BaseViewHolder;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 110
    return-void
.end method

.method public updateLayoutSizes(Ljava/util/List;II)V
    .locals 1
    .param p2, "parentWidth"    # I
    .param p3, "itemDecoration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "imageSizes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;

    invoke-direct {v0}, Lcom/miui/gallery/card/core/LayoutParamsHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->updateLayoutSizes(Ljava/util/List;II)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
