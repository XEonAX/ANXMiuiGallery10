.class public Lcom/miui/gallery/movie/entity/MovieInfo;
.super Ljava/lang/Object;
.source "MovieInfo.java"


# instance fields
.field public audio:Ljava/lang/String;

.field private extraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public isFromStory:Z

.field public isShortVideo:Z

.field public subTitle:Ljava/lang/String;

.field public template:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "default"

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backToLongVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_0
    return v0
.end method

.method public changeToShortVideo()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 39
    iput-boolean v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 40
    iget-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 41
    iget-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "newImageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 44
    iget-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 49
    .end local v0    # "newImageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :goto_0
    return v1

    .line 48
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public discardToLongVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 73
    const/4 v0, 0x1

    .line 75
    :cond_0
    return v0
.end method

.method public discardToShortVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
