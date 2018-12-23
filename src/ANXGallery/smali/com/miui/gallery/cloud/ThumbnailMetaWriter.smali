.class public Lcom/miui/gallery/cloud/ThumbnailMetaWriter;
.super Ljava/lang/Object;
.source "ThumbnailMetaWriter.java"


# instance fields
.field private final mDateTime:Ljava/lang/String;

.field private final mGPSDateStamp:Ljava/lang/String;

.field private final mGPSTimeStamp:Ljava/lang/String;

.field private final mMixDateTime:J

.field private final mOriginalFileName:Ljava/lang/String;

.field private final mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/DBImage;)V
    .locals 2
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "originalFileName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mOriginalFileName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getMixedDateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    .line 38
    const-string v0, "dateTime"

    invoke-virtual {p1, v0}, Lcom/miui/gallery/data/DBImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    .line 39
    const-string v0, "GPSDateStamp"

    invoke-virtual {p1, v0}, Lcom/miui/gallery/data/DBImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    .line 40
    const-string v0, "GPSTimeStamp"

    invoke-virtual {p1, v0}, Lcom/miui/gallery/data/DBImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "originalFileName"    # Ljava/lang/String;
    .param p3, "mixDateTime"    # J
    .param p5, "dateTime"    # Ljava/lang/String;
    .param p6, "gpsDateStamp"    # Ljava/lang/String;
    .param p7, "gpsTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mOriginalFileName:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    .line 48
    iput-object p5, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)Z
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 66
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_0
    new-instance v3, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 67
    .local v3, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v3, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 68
    new-instance v7, Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    iget-object v10, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    iget-object v11, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mOriginalFileName:Ljava/lang/String;

    invoke-static {v11}, Lcom/miui/gallery/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lcom/miui/gallery/util/ExifUtil;->setUserCommentData(Lcom/miui/gallery3d/exif/ExifInterface;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V

    .line 77
    const-wide/16 v8, -0x1

    .line 78
    .local v8, "time":J
    iget-object v7, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 79
    iget-object v7, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v7, v10}, Lcom/miui/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-static {v3}, Lcom/miui/gallery/util/ExifUtil;->getGpsDateTime(Lcom/miui/gallery3d/exif/ExifInterface;)J

    move-result-wide v8

    .line 82
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 83
    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    iget-object v10, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    invoke-virtual {v3, v7, v10}, Lcom/miui/gallery3d/exif/ExifInterface;->addDateTimeStampTag(ILjava/lang/String;)Z

    .line 84
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 85
    invoke-static {v3}, Lcom/miui/gallery/util/ExifUtil;->getDateTime(Lcom/miui/gallery3d/exif/ExifInterface;)J

    move-result-wide v8

    .line 90
    :cond_1
    invoke-static {v3}, Lcom/miui/gallery/util/ExifUtil;->getDateTime(Lcom/miui/gallery3d/exif/ExifInterface;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_2

    iget-wide v10, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-ltz v7, :cond_2

    .line 91
    invoke-static {}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDefaultDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v10, Ljava/util/Date;

    iget-wide v12, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "dateTime":Ljava/lang/String;
    sget v7, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-virtual {v3, v7, v0}, Lcom/miui/gallery3d/exif/ExifInterface;->addDateTimeStampTag(ILjava/lang/String;)Z

    .line 93
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 94
    iget-wide v8, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    .line 98
    .end local v0    # "dateTime":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 102
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 103
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    move-result v5

    .line 105
    .local v5, "succ":Z
    if-nez v5, :cond_3

    .line 106
    const-string v7, "ThumbnailMetaWriter"

    const-string v10, "failed to set last modified for thumbnail"

    invoke-static {v7, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v5    # "succ":Z
    .end local v6    # "thumbnailFile":Ljava/io/File;
    :cond_3
    const/4 v7, 0x1

    .line 123
    .end local v3    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v8    # "time":J
    :goto_0
    return v7

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 114
    const-string v7, "ThumbnailMetaWriter"

    invoke-static {v7, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v7, "version"

    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v7, "path"

    invoke-interface {v4, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v10, "exception"

    if-eqz v2, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v7, "exif_parser"

    const-string v10, "exif_write_error"

    invoke-static {v7, v10, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    const/4 v7, 0x0

    goto :goto_0

    .line 121
    :cond_5
    const-string v7, ""

    goto :goto_1
.end method
