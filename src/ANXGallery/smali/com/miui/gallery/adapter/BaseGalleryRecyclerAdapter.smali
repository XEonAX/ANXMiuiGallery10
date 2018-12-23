.class public abstract Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;
.super Lcom/miui/gallery/adapter/CursorRecyclerAdapter;
.source "BaseGalleryRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/CursorRecyclerAdapter",
        "<TVH;>;"
    }
.end annotation


# static fields
.field private static sMainMicroFolder:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->sMainMicroFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    invoke-direct {p0}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->initDisplayImageOptions()V

    .line 29
    return-void
.end method

.method protected static getDownloadUri(IJ)Landroid/net/Uri;
    .locals 1
    .param p0, "syncStatus"    # I
    .param p1, "id"    # J

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    invoke-static {p1, p2}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getDownloadUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "syncStateIndex"    # I
    .param p2, "idIndex"    # I

    .prologue
    .line 89
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->getDownloadUri(IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "microIndex"    # I
    .param p2, "sha1Index"    # I

    .prologue
    .line 81
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "microThumb":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    .line 83
    sget-object v1, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->sMainMicroFolder:Ljava/lang/String;

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailNameBySha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->getFileLength(I)J

    move-result-wide v0

    .line 40
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileLength(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter<TVH;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 33
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryRecyclerAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 36
    return-void
.end method
