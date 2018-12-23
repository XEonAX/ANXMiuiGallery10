.class Lcom/miui/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/miui/gallery3d/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 0
    .param p1, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifReader;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 35
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifData;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifReader;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/miui/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;

    move-result-object v0

    .line 47
    .local v0, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    new-instance v1, Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 48
    .local v1, "exifData":Lcom/miui/gallery3d/exif/ExifData;
    const/4 v2, 0x0

    .line 50
    .local v2, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v3

    .line 51
    .local v3, "event":I
    :goto_0
    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    .line 52
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 85
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v4

    new-array v4, v4, [B

    .line 86
    .local v4, "buf":[B
    array-length v5, v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery3d/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Lcom/miui/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto/16 :goto_2

    .line 89
    :cond_0
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the strip bytes"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "buf":[B
    goto/16 :goto_2

    .line 72
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v4

    .line 73
    .local v4, "len":I
    if-lez v4, :cond_2

    .line 74
    new-array v5, v4, [B

    .line 75
    .local v5, "buf":[B
    array-length v6, v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery3d/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 76
    invoke-virtual {v1, v5}, Lcom/miui/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 78
    :cond_1
    const-string v6, "ExifReader"

    const-string v7, "Failed to read the compressed thumbnail"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v5    # "buf":[B
    :goto_1
    goto :goto_2

    .line 81
    :cond_2
    const-string v5, "ExifReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compressedImageSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_2

    .line 65
    .end local v4    # "len":I
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 67
    invoke-virtual {v0, v2}, Lcom/miui/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 69
    :cond_3
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 70
    goto :goto_2

    .line 57
    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 59
    invoke-virtual {v0, v2}, Lcom/miui/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V

    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {v2}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 63
    goto :goto_2

    .line 54
    :pswitch_4
    new-instance v4, Lcom/miui/gallery3d/exif/IfdData;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    .line 55
    nop

    .line 93
    :goto_2
    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 95
    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
