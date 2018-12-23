.class public Lcom/miui/gallery/model/PhotoDetailInfo;
.super Ljava/lang/Object;
.source "PhotoDetailInfo.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/model/PhotoDetailInfo;->mDetails:Ljava/util/TreeMap;

    .line 60
    return-void
.end method

.method public static extractExifInfo(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "details"    # Lcom/miui/gallery/model/PhotoDetailInfo;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "all"    # Z

    .prologue
    .line 114
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "exif":Landroid/media/ExifInterface;
    if-eqz p2, :cond_5

    .line 120
    const-string v8, "ImageWidth"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 121
    .local v5, "width":I
    const-string v8, "ImageLength"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 122
    .local v3, "height":I
    if-lez v5, :cond_2

    if-gtz v3, :cond_3

    .line 124
    :cond_2
    invoke-static {p1}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 125
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 126
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 128
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/4 v8, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 129
    const/4 v8, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 130
    invoke-static {v2}, Lcom/miui/gallery/util/ExifUtil;->getGpsDateTime(Landroid/media/ExifInterface;)J

    move-result-wide v6

    .line 131
    .local v6, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    .line 132
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 134
    :cond_4
    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 135
    const/4 v8, 0x2

    new-array v4, v8, [F

    .line 136
    .local v4, "latlong":[F
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 137
    const/4 v8, 0x6

    invoke-virtual {p0, v8, v4}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 140
    .end local v3    # "height":I
    .end local v4    # "latlong":[F
    .end local v5    # "width":I
    .end local v6    # "time":J
    :cond_5
    const/16 v8, 0x65

    const-string v9, "Model"

    .line 141
    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 140
    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 142
    const/16 v8, 0x64

    const-string v9, "Make"

    .line 143
    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 142
    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 144
    const/16 v8, 0x69

    const-string v9, "FNumber"

    .line 145
    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 146
    const/16 v8, 0x67

    const-string v9, "FocalLength"

    .line 147
    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->wrapFocalLength(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    .line 146
    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 148
    const/16 v8, 0x6b

    const-string v9, "ExposureTime"

    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 149
    const/16 v8, 0x6c

    const-string v9, "ISOSpeedRatings"

    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 150
    const/16 v8, 0x66

    const-string v9, "Flash"

    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 151
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Ljava/lang/Exception;
    const-string v8, "PhotoDetailInfo"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static extractVideoAttr(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;)V
    .locals 10
    .param p0, "details"    # Lcom/miui/gallery/model/PhotoDetailInfo;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 157
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/VideoAttrsReader;->read(Ljava/lang/String;)Lcom/miui/gallery/util/VideoAttrsReader;

    move-result-object v3

    .line 162
    .local v3, "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    invoke-virtual {v3}, Lcom/miui/gallery/util/VideoAttrsReader;->getDateTaken()J

    move-result-wide v4

    .line 163
    .local v4, "taken":J
    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    .line 164
    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 166
    :cond_2
    invoke-virtual {v3}, Lcom/miui/gallery/util/VideoAttrsReader;->getDuration()J

    move-result-wide v0

    .line 167
    .local v0, "duration":J
    cmp-long v6, v0, v8

    if-lez v6, :cond_0

    .line 168
    const/4 v6, 0x7

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v0    # "duration":J
    .end local v3    # "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    .end local v4    # "taken":J
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PhotoDetailInfo"

    invoke-static {v6, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static wrapFocalLength(Ljava/lang/String;)Ljava/lang/Double;
    .locals 10
    .param p0, "focalLength"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v6

    .line 183
    :cond_1
    :try_start_0
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 184
    .local v3, "index":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 185
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 186
    .local v0, "denom":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v0, v8

    if-eqz v7, :cond_0

    .line 187
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 188
    .local v4, "num":D
    div-double v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 189
    .end local v0    # "denom":D
    .end local v3    # "index":I
    .end local v4    # "num":D
    :catch_0
    move-exception v2

    .line 190
    .local v2, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/model/PhotoDetailInfo;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/model/PhotoDetailInfo;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/model/PhotoDetailInfo;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeDetail(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/model/PhotoDetailInfo;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method
