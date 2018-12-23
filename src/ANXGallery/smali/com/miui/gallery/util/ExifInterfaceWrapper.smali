.class Lcom/miui/gallery/util/ExifInterfaceWrapper;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# instance fields
.field private mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mMediaExifI:Landroid/media/ExifInterface;


# direct methods
.method public constructor <init>(Landroid/media/ExifInterface;)V
    .locals 0
    .param p1, "mediaExifI"    # Landroid/media/ExifInterface;

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExifI:Landroid/media/ExifInterface;

    .line 520
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 0
    .param p1, "exifI"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 524
    return-void
.end method


# virtual methods
.method public getUserComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getUserCommentAsASCII()Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExifI:Landroid/media/ExifInterface;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExifI:Landroid/media/ExifInterface;

    const-string v1, "UserComment"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "userComment"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->addUserComment(Ljava/lang/String;)Z

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExifI:Landroid/media/ExifInterface;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExifI:Landroid/media/ExifInterface;

    const-string v1, "UserComment"

    invoke-virtual {v0, v1, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_1
    return-void
.end method
