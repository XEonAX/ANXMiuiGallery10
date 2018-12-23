.class public Lcom/miui/gallery/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ExifUtil$UserCommentData;,
        Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    }
.end annotation


# direct methods
.method public static adjustRectOrientation(IILandroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 9
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "orientation"    # I
    .param p4, "revert"    # Z

    .prologue
    .line 252
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 253
    .local v2, "left":F
    iget v4, p2, Landroid/graphics/RectF;->top:F

    .line 254
    .local v4, "top":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 255
    .local v5, "width":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 256
    .local v0, "height":F
    move v3, p0

    .line 259
    .local v3, "targetImageWidth":I
    if-nez p4, :cond_0

    .line 260
    packed-switch p3, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 278
    .local v1, "isFlip":Z
    packed-switch p3, :pswitch_data_1

    .line 310
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_1

    .line 311
    int-to-float v6, v3

    sub-float/2addr v6, v2

    sub-float v2, v6, v5

    .line 313
    :cond_1
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v5

    add-float v8, v4, v0

    invoke-direct {v6, v2, v4, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6

    .line 262
    .end local v1    # "isFlip":Z
    :pswitch_1
    const/4 p3, 0x5

    .line 263
    goto :goto_0

    .line 265
    :pswitch_2
    const/16 p3, 0x8

    .line 266
    goto :goto_0

    .line 268
    :pswitch_3
    const/4 p3, 0x7

    .line 269
    goto :goto_0

    .line 271
    :pswitch_4
    const/4 p3, 0x6

    goto :goto_0

    .line 280
    .restart local v1    # "isFlip":Z
    :pswitch_5
    const/4 v1, 0x1

    goto :goto_1

    .line 284
    :pswitch_6
    const/4 v1, 0x1

    .line 286
    :pswitch_7
    move v3, p1

    .line 287
    int-to-float v6, p1

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v2, v6, v7

    .line 288
    iget v4, p2, Landroid/graphics/RectF;->left:F

    .line 289
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 290
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 291
    goto :goto_1

    .line 293
    :pswitch_8
    const/4 v1, 0x1

    .line 295
    :pswitch_9
    int-to-float v6, p0

    iget v7, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float v2, v6, v7

    .line 296
    int-to-float v6, p1

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v4, v6, v7

    .line 297
    goto :goto_1

    .line 299
    :pswitch_a
    const/4 v1, 0x1

    .line 301
    :pswitch_b
    move v3, p1

    .line 302
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 303
    int-to-float v6, p0

    iget v7, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float v4, v6, v7

    .line 304
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 305
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static convertDoubleToLaLon(D)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 227
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 228
    .local v0, "degrees":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 229
    .local v2, "minutes":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    div-double v8, v2, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 230
    .local v4, "seconds":D
    const-wide/16 v6, 0x0

    cmpg-double v1, p0, v6

    if-gez v1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDate(Landroid/media/ExifInterface;)Ljava/util/Date;
    .locals 1
    .param p0, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 150
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTime(Landroid/media/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 142
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDateTime(Lcom/miui/gallery3d/exif/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 146
    sget v0, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getDateTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGpsDate(Landroid/media/ExifInterface;)Ljava/util/Date;
    .locals 2
    .param p0, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 179
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getGpsDateTime(Landroid/media/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 171
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGpsDateTime(Lcom/miui/gallery3d/exif/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getGpsDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifInterface;->getGpsTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRotation(Lcom/miui/gallery3d/exif/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 158
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 159
    .local v0, "rawValue":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v1

    goto :goto_0
.end method

.method public static getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    :try_start_0
    new-instance v3, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 66
    .local v3, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v3, p0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/miui/gallery/util/UserComment;

    new-instance v5, Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-direct {v5, v3}, Lcom/miui/gallery/util/ExifInterfaceWrapper;-><init>(Lcom/miui/gallery3d/exif/ExifInterface;)V

    invoke-direct {v0, v5}, Lcom/miui/gallery/util/UserComment;-><init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V

    .line 68
    .local v0, "comment":Lcom/miui/gallery/util/UserComment;
    new-instance v1, Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getFileExt()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    .end local v3    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    const-string v5, "ExifUtil"

    const-string v6, "invalid exif format %s, %s"

    invoke-static {v5, v6, v2, p0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentDataByMediaExif(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v1

    .line 72
    .local v1, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v4

    .line 74
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "exception"

    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v5, "path"

    invoke-interface {v4, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v5, "exif_parser"

    const-string v6, "exif_read_by_exifinterface"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 80
    .end local v1    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v2    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentDataByMediaExif(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v1

    .line 82
    .restart local v1    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v4

    .line 84
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v5, "path"

    invoke-interface {v4, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v5, "exif_parser"

    const-string v6, "exif_read_by_exifinterface"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 90
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 91
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v5, "version"

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v5, "path"

    invoke-interface {v4, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v5, "exception"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v5, "exif_parser"

    const-string v6, "exif_read_error"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    throw v2

    .line 100
    .end local v1    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static getUserCommentDataByMediaExif(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    new-instance v0, Lcom/miui/gallery/util/UserComment;

    new-instance v3, Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-direct {v3, v2}, Lcom/miui/gallery/util/ExifInterfaceWrapper;-><init>(Landroid/media/ExifInterface;)V

    invoke-direct {v0, v3}, Lcom/miui/gallery/util/UserComment;-><init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V

    .line 41
    .local v0, "comment":Lcom/miui/gallery/util/UserComment;
    new-instance v3, Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getSha1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getFileExt()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v0

    .line 52
    .local v0, "commentData":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    .end local v0    # "commentData":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExifUtil"

    const-string v3, "Failed to read exif!!"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getXiaomiComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 108
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getXiaomiComment()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 113
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 115
    .end local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "ExifUtil"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 115
    const/4 v4, 0x0

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 110
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getXiaomiCommentSensorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getXiaomiComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "xiaomiComment":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "sensor_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "xiaomiComment":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ExifUtil"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasFocusPoint(Lcom/miui/gallery3d/exif/ExifInterface;)Z
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 205
    const v0, 0x8890

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFocusPoint(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 212
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 213
    invoke-static {v1}, Lcom/miui/gallery/util/ExifUtil;->hasFocusPoint(Lcom/miui/gallery3d/exif/ExifInterface;)Z
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 219
    .end local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :goto_0
    return v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifInvalidFormatException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isFromFrontCamera(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "front"

    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getXiaomiCommentSensorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWidthHeightRotated(I)Z
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 386
    packed-switch p0, :pswitch_data_0

    .line 393
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 391
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseExifInfo(Ljava/lang/String;[B)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "secretKey"    # [B

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    :goto_0
    return-object v1

    .line 330
    :cond_0
    const/4 v3, 0x0

    .line 331
    .local v3, "is":Ljava/io/InputStream;
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 333
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/gallery/util/BitmapUtils;->createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v3

    .line 334
    invoke-virtual {v1, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ExifUtil"

    const-string v6, "Can\'t read EXIF tags from file [%s] %s"

    invoke-static {v5, v6, p0, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 338
    if-eqz p1, :cond_2

    .line 339
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .local v4, "temp":Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, p1}, Lcom/miui/gallery/util/GalleryAes;->decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/miui/gallery/util/BitmapUtils;->createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v3

    .line 343
    invoke-virtual {v1, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    .end local v4    # "temp":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 345
    .restart local v4    # "temp":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 346
    .local v2, "inner":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "ExifUtil"

    const-string v6, "Can\'t read EXIF tags from file [%s] %s"

    invoke-static {v5, v6, p0, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "inner":Ljava/lang/Exception;
    .end local v4    # "temp":Ljava/io/File;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 348
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v5

    const/4 v6, 0x1

    :try_start_6
    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static parseRotationInfo(I)Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "isFlip":Z
    const/4 v1, 0x0

    .line 360
    .local v1, "rotation":I
    packed-switch p0, :pswitch_data_0

    .line 382
    :goto_0
    new-instance v2, Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/gallery/util/ExifUtil$ExifInfo;-><init>(IIZ)V

    return-object v2

    .line 362
    :pswitch_0
    const/4 v0, 0x1

    .line 364
    :pswitch_1
    const/4 v1, 0x0

    .line 365
    goto :goto_0

    .line 367
    :pswitch_2
    const/4 v0, 0x1

    .line 369
    :pswitch_3
    const/16 v1, 0x5a

    .line 370
    goto :goto_0

    .line 372
    :pswitch_4
    const/4 v0, 0x1

    .line 374
    :pswitch_5
    const/16 v1, 0xb4

    .line 375
    goto :goto_0

    .line 377
    :pswitch_6
    const/4 v0, 0x1

    .line 379
    :pswitch_7
    const/16 v1, 0x10e

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method public static parseRotationInfo(Ljava/lang/String;[B)Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "secretKey"    # [B

    .prologue
    .line 317
    invoke-static {p0, p1}, Lcom/miui/gallery/util/ExifUtil;->parseExifInfo(Ljava/lang/String;[B)Lcom/miui/gallery3d/exif/ExifInterface;

    move-result-object v0

    .line 318
    .local v0, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    if-eqz v0, :cond_1

    .line 319
    sget v3, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    .line 320
    .local v1, "exifOrientation":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 321
    .local v2, "orientation":I
    :goto_0
    invoke-static {v2}, Lcom/miui/gallery/util/ExifUtil;->parseRotationInfo(I)Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    move-result-object v3

    .line 323
    .end local v1    # "exifOrientation":Ljava/lang/Integer;
    .end local v2    # "orientation":I
    :goto_1
    return-object v3

    .line 320
    .restart local v1    # "exifOrientation":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 323
    .end local v1    # "exifOrientation":Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static setUserCommentData(Lcom/miui/gallery3d/exif/ExifInterface;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .param p1, "data"    # Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    new-instance v0, Lcom/miui/gallery/util/UserComment;

    new-instance v1, Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/ExifInterfaceWrapper;-><init>(Lcom/miui/gallery3d/exif/ExifInterface;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/UserComment;-><init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V

    .line 32
    .local v0, "comment":Lcom/miui/gallery/util/UserComment;
    invoke-virtual {p1}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/UserComment;->setSha1(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/UserComment;->setFileExt(Ljava/lang/String;)V

    .line 35
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    :cond_0
    return-void
.end method
