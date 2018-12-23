.class Lcom/miui/gallery3d/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/miui/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery3d/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 47
    iput p1, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    .line 48
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .line 51
    sget-object v0, Lcom/miui/gallery3d/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method protected checkCollision(S)Z
    .locals 2
    .param p1, "tagId"    # S

    .line 91
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 132
    return v1

    .line 134
    :cond_1
    instance-of v2, p1, Lcom/miui/gallery3d/exif/IfdData;

    if-eqz v2, :cond_5

    .line 135
    move-object v2, p1

    check-cast v2, Lcom/miui/gallery3d/exif/IfdData;

    .line 136
    .local v2, "data":Lcom/miui/gallery3d/exif/IfdData;
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/IfdData;->getId()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/IfdData;->getTagCount()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 137
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/IfdData;->getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 138
    .local v3, "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 139
    .local v6, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v6}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-static {v7}, Lcom/miui/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    goto :goto_1

    .line 142
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery3d/exif/ExifTag;

    .line 143
    .local v7, "tag2":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v6, v7}, Lcom/miui/gallery3d/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 144
    return v1

    .line 138
    .end local v6    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v7    # "tag2":Lcom/miui/gallery3d/exif/ExifTag;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_4
    return v0

    .line 150
    .end local v2    # "data":Lcom/miui/gallery3d/exif/IfdData;
    .end local v3    # "tags":[Lcom/miui/gallery3d/exif/ExifTag;
    :cond_5
    return v1
.end method

.method protected getAllTags()[Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/gallery3d/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # S

    .line 79
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 2
    .param p1, "tagId"    # S

    .line 98
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 112
    iput p1, p0, Lcom/miui/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 113
    return-void
.end method

.method protected setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;

    .line 86
    iget v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setIfd(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery3d/exif/ExifTag;

    return-object v0
.end method
